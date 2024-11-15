const express = require("express");
const pug = require("pug");
const mysql = require("mysql2");
const turnosRouter = require("./turnos"); // Importa el archivo de lógica de turnos
const app = express();

// Conexión a la BD
const conndb = mysql.createConnection({
    port: 3306,
    host: 'bq0vxmjkkq4tho6n4au6-mysql.services.clever-cloud.com',
    user: 'uyuwg0zoognbqzme',
    password: '2jd0oxl1Q3zCYHpPgbEU',
    database: 'bq0vxmjkkq4tho6n4au6'
});

conndb.connect((err) => {
    if (err) {
        console.error("Error en la conexión a la Base de Datos", err);
    } else {
        console.log("Conectado a la base de datos");
    }
});

// Middleware para procesar datos de formularios
app.use(express.urlencoded({ extended: true }));

app.set("view engine", "pug");
app.set("views", "views");

console.log("Directorio de vistas configurado:", app.get("views"));

// Usar el enrutador de turnos, pasando la conexión de la base de datos
app.use("/turnos", turnosRouter(conndb));

// Middleware para servir archivos estáticos
app.use(express.static("public"));

// Define ruta para renderizar la página principal
app.get("/", (req, res) => {
    res.render("principal");
});

app.listen(3000, () => {
    console.log("App en puerto 3000");
});

//crea ruta y consukta datos desde la base
app.get("/medicos/gestionar-medicos", (req, res) => {
    const query = `
    SELECT m.idMedico, m.nombre, m.apellido, m.email, m.estado, GROUP_CONCAT(e.nombre) AS especialidad
    FROM medico m
    LEFT JOIN medicoespecialidad me ON m.idMedico = me.idMedico
    LEFT JOIN especialidad e ON me.idEspecialidad = e.nombre
    GROUP BY m.nombre
`;

    conndb.query(query, (error, result) => {
        if (error) {
            return res.status(500).send("Error al consultar médicos");
        }
        res.render("medicos/gestionar-medicos", { medicos: result });
    });
});


// Ruta para editar médico
app.get("/medicos/editar/:idMedico", (req, res) => {
    const id = req.params.idMedico; // Uso req.params.idMedico para obtener el parámetro de la URL
    const query = 'SELECT * FROM medico WHERE idMedico = ?'; 
    
    conndb.query(query, [id], (error, result) => {
        if (error || result.length === 0) {
            return res.status(404).send("Médico no encontrado");
        }
        res.render("medicos/editar", { medico: result[0] });
    });
});
// Ruta para procesar el formulario de edición
app.post("/medicos/editar/:idMedico", (req, res) => {
    const id = req.params.idMedico;  
    const { nombre, apellido, email } = req.body; 
    
    // sql para actualizar los datos del médico
    const query = 'UPDATE medico SET nombre = ?, apellido = ?, email = ? WHERE idMedico = ?';
    
    conndb.query(query, [nombre, apellido, email, id], (error, result) => {
        if (error) {
            return res.status(500).send("Error al actualizar los datos del médico");
        }
        // Redirige a la página de gestión de médicos después de actualizar
        res.redirect("/medicos/gestionar-medicos");
    });
});

app.get("/medicos/inhabilitar/:id", (req, res) => {
    const id = req.params.id;
    const query = 'UPDATE medico SET estado = 0 WHERE idMedico = ?';
    
    conndb.query(query, [id], (error, result) => {
        if (error) {
            return res.status(500).send("Error al inhabilitar médico");
        }
        res.redirect("/medicos/gestionar-medicos"); 
    });
});

// Ruta para habilitar médico
app.get("/medicos/habilitar/:id", (req, res) => {
    const id = req.params.id;  // Obtener el parámetro `id` de la URL
    const query = 'UPDATE medico SET estado = 1 WHERE idMedico = ?';  // Actualizar el estado a 1 (habilitado)
    
    conndb.query(query, [id], (error, result) => {
        if (error) {
            console.error("Error al habilitar médico:", error);  // Para ver detalles del error
            return res.status(500).send("Error al habilitar médico");
        }

        if (result.affectedRows === 0) {  // Si no se afectaron filas, el médico no fue encontrado
            return res.status(404).send("Médico no encontrado");
        }

        // Redirige a la lista de médicos después de habilitar
        res.redirect("/medicos/gestionar-medicos");
    });
});


// Ruta para mostrar formulario agregar médico
app.get("/medicos/crear", (req, res) => {
    res.render("medicos/crear");
});

// Ruta para guardar médico en la base de datos
app.post("/medicos/crear", (req, res) => {
    const { nombre, apellido, email, especialidad } = req.body;

    // agrega el médico en la tabla medico
    const queryMedico = 'INSERT INTO medico (nombre, apellido, email) VALUES (?, ?, ?)';
    conndb.query(queryMedico, [nombre, apellido, email], (error, result) => {
        if (error) {
            return res.status(500).send("Error al agregar médico");
        }

        const medicoId = result.insertId; 

        // Inserta la especialidad en la tabla 'medicoespecialidad'
        const queryEspecialidad = 'INSERT INTO medicoespecialidad (idMedico, idEspecialidad) VALUES (?, ?)';
        conndb.query(queryEspecialidad, [medicoId, especialidad], (error, result) => {
            if (error) {
                return res.status(500).send("Error al agregar especialidad");
            }
            // Redirige a la página de gestión de médicos después de agregar
            res.redirect("/medicos/gestionar-medicos");
        });
    });
});


