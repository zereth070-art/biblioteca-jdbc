-- Autores (Elena Poniatowska no tiene libros: es el caso 0..N)
INSERT INTO autor (nombre) VALUES ('Gabriel García Márquez');  -- 1
INSERT INTO autor (nombre) VALUES ('Julio Cortázar');          -- 2
INSERT INTO autor (nombre) VALUES ('Mario Vargas Llosa');      -- 3
INSERT INTO autor (nombre) VALUES ('Isabel Allende');          -- 4
INSERT INTO autor (nombre) VALUES ('Carmen Laforet');          -- 5
INSERT INTO autor (nombre) VALUES ('Ana María Matute');        -- 6
INSERT INTO autor (nombre) VALUES ('Miguel Delibes');          -- 7
INSERT INTO autor (nombre) VALUES ('Almudena Grandes');        -- 8
INSERT INTO autor (nombre) VALUES ('Elena Poniatowska');       -- 9

-- Libros. Los títulos, autores y años son reales.
-- Los ISBN son de ejemplo, con dígito de control correcto; el día y el mes son orientativos.
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000076', 'Bestiario', 'Anaya',2, '1951-07-20');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000144', 'La isla y los demonios', 'Anaya',5, '1952-03-14');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000212', 'Nada', 'Anaya',5, '1945-05-10');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000281', 'La sombra del ciprés es alargada', 'Anaya',7, '1948-02-16');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000359', 'Los hijos muertos', 'Anaya',6, '1958-11-03');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000427', 'Primera memoria', 'Anaya',6, '1960-01-22');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000496', 'Rayuela', 'Anaya',2, '1963-06-28');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000564', 'La ciudad y los perros','ANAYA', 3, '1963-10-10');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000632', 'Todos los fuegos el fuego', 'Anaya',2, '1966-04-18');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000700', 'La casa verde', 'Anaya',3, '1966-03-07');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000779', 'Cinco horas con Mario', 'Anaya',7, '1966-11-21');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000847', 'Cien años de soledad', 'Anaya',1, '1967-05-30');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000915', 'Conversación en La Catedral', 'Anaya',3, '1969-03-15');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490000984', 'Relato de un náufrago', 'Anaya',1, '1970-12-09');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001059', 'Crónica de una muerte anunciada', 'Anaya',1, '1981-04-27');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001127', 'Los santos inocentes', 'Anaya',7, '1981-09-14');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001196', 'La casa de los espíritus', 'Anaya',4, '1982-10-05');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001264', 'El amor en los tiempos del cólera', 'Anaya',1, '1985-12-02');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001332', 'Eva Luna', 'Anaya',4, '1987-06-08');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001400', 'Las edades de Lulú', 'Anaya',8, '1989-02-20');
INSERT INTO libro (isbn, titulo,editorial, autor_id, fecha_publicacion) VALUES ('9788490001479', 'Malena es un nombre de tango', 'Anaya',8, '1994-09-19');