I---Insertar un nuevo pokemon
INSERT INTO pokemones (nombre, tipo, habilidad, hp, ataque, defensa, ataque_esp, defensa_esp, velocidad)
VALUES ('Piyoto', 'Volador', 'Pico', 39, 52, 43, 60, 50, 65);
---Insetar un nuevo entrenador
INSERT INTO entrenadores (nombre, edad, ciudad)
VALUES ('Pablo', 223, 'Ciudad Rojo');
---Leer un pokemon especifico 
SELECT * FROM pokemones WHERE nombre = 'Pikachu';
---Leer info de entrenador 
SELECT * FROM entrenadores WHERE nombre = 'Ash';
---Mostrar lista de pokemones
SELECT * FROM pokemones;
---Leer lista de entrenadores
SELECT * FROM entrenadores;
---Modificar registro existente
---Actualizar info de pokemon
UPDATE pokemones
SET tipo = 'Eléctrico', habilidad = 'Estática'
WHERE nombre = 'Pikachu';
---Actualizar info de entrenador
UPDATE entrenadores
SET edad = 26
WHERE nombre = 'Ash';
---Eliminar un pokemon
DELETE FROM pokemones WHERE nombre = 'Bulbasaur';
---Eliminar un entrenador
DELETE FROM entrenadores WHERE nombre = 'Misty';

