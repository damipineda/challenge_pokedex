---Eliminar un Pokémon y sus registros relacionados:
DELETE FROM pokemones WHERE id = 1;
DELETE FROM entrenadores_pokemones WHERE pokemon_id = 1;
DELETE FROM batallas WHERE pokemon1_id = 1 OR pokemon2_id = 1;
---Mostrar información detallada sobre Pokémon y sus entrenadores:
SELECT p.nombre AS pokemon_nombre, e.nombre AS entrenador_nombre
FROM pokemones p
JOIN entrenadores_pokemones ep ON p.id = ep.pokemon_id
JOIN entrenadores e ON ep.entrenador_id = e.id;
---Mostrar información sobre las batallas, incluyendo nombres de los entrenadores y Pokémon:
SELECT b.id AS batalla_id, e1.nombre AS entrenador1, p1.nombre AS pokemon1, e2.nombre AS entrenador2, p2.nombre AS pokemon2, b.fecha_batalla, b.resultado
FROM batallas b
JOIN entrenadores e1 ON b.entrenador1_id = e1.id
JOIN pokemones p1 ON b.pokemon1_id = p1.id
JOIN entrenadores e2 ON b.entrenador2_id = e2.id
JOIN pokemones p2 ON b.pokemon2_id = p2.id;
