-- Removed spawns of creature 575 (Fire Elemental) in Scarlet Monastery because they are summoned
DELETE FROM `creature` WHERE `map` = 189 AND `id` = 575;
