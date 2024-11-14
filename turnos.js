const express = require("express");

module.exports = (conndb) => {
    const router = express.Router();

    // Función para obtener las especialidades desde la base de datos
    function obtenerEspecialidades(callback) {
        const query = 'SELECT * FROM especialidad';
        conndb.query(query, (error, result) => {
            if (error) return callback(error, null);
            callback(null, result);
        });
    }

    // Función para obtener los médicos según la especialidad
    function obtenerMedicosPorEspecialidad(especialidadId, callback) {
        const query = `
            SELECT m.idMedico, m.nombre, m.apellido 
            FROM medico m
            JOIN medicoespecialidad me ON m.idMedico = me.idMedico
            WHERE me.idEspecialidad = ?
        `;
        conndb.query(query, [especialidadId], (error, result) => {
            if (error) return callback(error, null);
            callback(null, result);
        });
    }

    // Ruta para mostrar la página de gestión de turnos
    router.get("/", (req, res) => {
        obtenerEspecialidades((error, especialidades) => {
            if (error) {
                return res.status(500).send("Error al obtener las especialidades");
            }
            res.render("turnos/gestionar-turnos", { especialidades });
        });
    });

    // Ruta para obtener los médicos según la especialidad seleccionada
    router.get("/medicos/:especialidad", (req, res) => {
        const especialidadId = req.params.especialidad;
        obtenerMedicosPorEspecialidad(especialidadId, (error, medicos) => {
            if (error) {
                return res.status(500).send("Error al obtener los médicos");
            }
            res.json(medicos);
        });
    });

    // Ruta para obtener horarios disponibles de un médico específico
    router.get("/horarios/:medicoId", (req, res) => {
        const medicoId = req.params.medicoId;
    
        const query = `
            SELECT idAgenda, mes, anio, diasHabiles, turnos
            FROM agenda
            WHERE idMedico = ? AND estado = 'Libre'
            ORDER BY mes, anio
        `;
    
        conndb.query(query, [medicoId], (error, result) => {
            if (error) {
                console.error("Error al obtener horarios:", error);
                return res.status(500).send("Error al obtener horarios");
            }
            // Convertir el campo turnos y diasHabiles en JSON si es necesario
            const formattedResult = result.map((row) => ({
                ...row,
                diasHabiles: JSON.parse(row.diasHabiles),
                turnos: JSON.parse(row.turnos),
            }));
            res.json(formattedResult);
        });
    });
// Ruta para registrar un nuevo turno
router.post("/crear-turno", (req, res) => {
    const { nombre, dni, email, horario } = req.body;

    // Insertar turno en la tabla 'turno'
    const queryTurno = `
        INSERT INTO turno (idPaciente, nombre, dni, email, idAgenda)
        VALUES (?, ?, ?, ?, ?)
    `;
    conndb.query(queryTurno, [nombre, dni, email, horario], (error, result) => {
        if (error) {
            console.error("Error al crear turno:", error);
            return res.status(500).send("Error al reservar el turno");
        }

        // Actualizar estado del horario a "Reservado"
        const queryAgenda = `
            UPDATE agenda SET estado = 'Reservado' WHERE idAgenda = ?
        `;
        conndb.query(queryAgenda, [horario], (error) => {
            if (error) {
                console.error("Error al actualizar estado de agenda:", error);
                return res.status(500).send("Error al actualizar el horario");
            }
            res.redirect("/turnos"); // Redirige de vuelta a la página de turnos
        });
    });
});

    return router;
};