-- Crear la clave espacial
CREATE KEYSPACE IF NOT EXISTS escuela WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

-- Usar la clave espacial
USE escuela;

-- Crear la tabla estudiantes
CREATE TABLE IF NOT EXISTS estudiantes (
    id_estudiante int PRIMARY KEY,
    nombre text,
    grado text,
    materia text,
    calificacion float,
    asistencia float,
    fecha_registro date
);

-- Insertar los datos
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (1, 'Rebecca Williams', 'Tercero', 'Ciencias', 3.2, 86.0, '2024-07-24');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (2, 'Lori Smith', 'Segundo', 'Historia', 3.6, 98.0, '2024-03-15');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (3, 'Rhonda Cunningham', 'Sexto', 'Matemáticas', 5.2, 81.8, '2024-10-04');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (4, 'Stephen Smith', 'Sexto', 'Deportes', 8.1, 80.7, '2024-04-09');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (5, 'Sara Sanchez', 'Quinto', 'Arte', 2.6, 79.2, '2024-10-06');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (6, 'Vanessa Garcia', 'Segundo', 'Ciencias', 3.8, 94.9, '2024-10-11');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (7, 'Michael Burgess', 'Tercero', 'Arte', 7.0, 97.6, '2024-06-18');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (8, 'Kevin Jones', 'Quinto', 'Historia', 3.0, 87.7, '2024-02-24');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (9, 'Laura Weeks', 'Primero', 'Lengua', 5.3, 85.5, '2024-07-01');
INSERT INTO estudiantes (id_estudiante, nombre, grado, materia, calificacion, asistencia, fecha_registro) VALUES (10, 'Nicholas Downs', 'Tercero', 'Arte', 5.0, 82.8, '2024-08-19');
