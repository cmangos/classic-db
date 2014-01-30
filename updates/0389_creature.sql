-- Removed spawn of creature 10776 (Finkle Einhorn) as it is
-- spawned by script
-- Thanks Nekoi for pointing
DELETE FROM `creature` WHERE `id` = 10776 and `map` = 229;
