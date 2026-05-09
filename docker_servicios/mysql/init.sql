-- Creación de la tabla de Peticiones y Reclamos de la EPA
CREATE TABLE pqrs_ciudadanos (
                                 id INT AUTO_INCREMENT PRIMARY KEY,
                                 nombre_completo VARCHAR(150) NOT NULL,
                                 barrio VARCHAR(100) NOT NULL,
                                 tipo_solicitud ENUM('Peticion', 'Queja', 'Reclamo', 'Sugerencia') NOT NULL,
                                 descripcion TEXT NOT NULL,
                                 fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar un dato de prueba simulando a un ciudadano de Armenia
INSERT INTO pqrs_ciudadanos (nombre_completo, barrio, tipo_solicitud, descripcion)
VALUES ('Camilo Restrepo', 'La Fachada', 'Reclamo', 'Fuga de agua en el tubo principal de la cuadra 4.');