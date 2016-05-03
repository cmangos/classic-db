-- Fixed location of GO 300049 (TEMP Kroshius' Remains) in Felwood
-- Also changed it to its correct entry/name values
UPDATE gameobject_template SET entry = 179677, name = "Kroshius' Remains" WHERE entry = 300049;
UPDATE gameobject SET position_x = 5800.89, position_y = -985.82, position_z = 409.78 WHERE id = 300049;
UPDATE gameobject SET id = 179677 WHERE id = 300049;
