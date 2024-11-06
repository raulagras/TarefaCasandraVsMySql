-- Seleccionar todos los estudiantes
SELECT * FROM estudiantes;

-- Obtener estudiantes por grado
SELECT * FROM estudiantes WHERE grado = 'Tercero';

-- Obtener estudiantes por materia
SELECT * FROM estudiantes WHERE materia = 'Ciencias';

-- Obtener estudiantes que tienen una calificación mayor a 4.0
SELECT * FROM estudiantes WHERE calificacion > 4.0;

-- Obtener estudiantes con asistencia mayor a 90%
SELECT * FROM estudiantes WHERE asistencia > 90.0;

-- Obtener los estudiantes ordenados por su fecha de registro
-- Para esto es necesario crear un índice en el campo `fecha_registro`
-- Crear el índice en la fecha de registro (sólo si no tienes un índice para este campo)
CREATE INDEX IF NOT EXISTS ON estudiantes (fecha_registro);

-- Obtener los estudiantes registrados después de una fecha específica
SELECT * FROM estudiantes WHERE fecha_registro > '2024-06-01';

-- Buscar un estudiante por su ID (ejemplo: id_estudiante = 3)
SELECT * FROM estudiantes WHERE id_estudiante = 3;

-- Obtener el promedio de calificación de los estudiantes
-- Cassandra no soporta agregaciones complejas como otras bases de datos relacionales,
-- por lo que no puedes realizar un "AVG" directamente en una consulta.
-- Sin embargo, se podría hacer una aproximación programática desde tu aplicación
-- o usar una herramienta externa para calcular el promedio.

-- Filtrar estudiantes por calificación en un rango específico
SELECT * FROM estudiantes WHERE calificacion >= 3.0 AND calificacion <= 5.0;

-- Obtener los estudiantes por varios criterios
SELECT * FROM estudiantes WHERE grado = 'Quinto' AND materia = 'Arte';
