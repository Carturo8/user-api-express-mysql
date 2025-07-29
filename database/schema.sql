CREATE DATABASE users_api_db;
USE users_api_db;

CREATE TABLE usuarios
(
    id     INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)                                    NOT NULL,
    email  VARCHAR(100)                                    NOT NULL UNIQUE,
    rol    ENUM ('Estudiante', 'Líder')                    NOT NULL,
    nivel  ENUM ('Principiante', 'Intermedio', 'Avanzado') NOT NULL
);

INSERT INTO usuarios (nombre, email, rol, nivel)
VALUES ('Carlos Rojas', 'carlos.rojas@email.com', 'Estudiante', 'Avanzado'),
       ('Ana Martínez', 'ana.martinez@email.com', 'Estudiante', 'Intermedio'),
       ('Luis Gómez', 'luis.gomez@email.com', 'Líder', 'Avanzado'),
       ('María López', 'maria.lopez@email.com', 'Estudiante', 'Principiante'),
       ('José Herrera', 'jose.herrera@email.com', 'Estudiante', 'Intermedio'),
       ('Laura Torres', 'laura.torres@email.com', 'Líder', 'Intermedio'),
       ('Andrés Pérez', 'andres.perez@email.com', 'Estudiante', 'Principiante'),
       ('Juliana Díaz', 'juliana.diaz@email.com', 'Estudiante', 'Avanzado'),
       ('Camilo Ruiz', 'camilo.ruiz@email.com', 'Líder', 'Avanzado'),
       ('Daniela Vargas', 'daniela.vargas@email.com', 'Estudiante', 'Intermedio'),
       ('Mateo Castro', 'mateo.castro@email.com', 'Estudiante', 'Principiante'),
       ('Sofía Romero', 'sofia.romero@email.com', 'Estudiante', 'Avanzado'),
       ('Felipe Morales', 'felipe.morales@email.com', 'Líder', 'Intermedio'),
       ('Valentina Ríos', 'valentina.rios@email.com', 'Estudiante', 'Avanzado'),
       ('Sebastián Méndez', 'sebastian.mendez@email.com', 'Estudiante', 'Intermedio'),
       ('Lucía Peña', 'lucia.pena@email.com', 'Estudiante', 'Principiante'),
       ('Tomás Vargas', 'tomas.vargas@email.com', 'Líder', 'Avanzado'),
       ('Natalia Cárdenas', 'natalia.cardenas@email.com', 'Estudiante', 'Intermedio'),
       ('Esteban Jiménez', 'esteban.jimenez@email.com', 'Estudiante', 'Principiante'),
       ('Gabriela Salazar', 'gabriela.salazar@email.com', 'Estudiante', 'Avanzado');
