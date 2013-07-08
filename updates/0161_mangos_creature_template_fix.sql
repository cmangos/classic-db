-- Fixes size for creature 1895 (Pyrewood Elder) which was way too big compared to other inhabitants of Pyrewood village
UPDATE `creature_template` SET `scale` = 0 WHERE `entry` = 1895;
