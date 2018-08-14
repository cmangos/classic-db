-- Fixed level range of creature 2070 (Moonstalker Runt) in Darshore
-- Thanks Zingzah for pointing and Metalica for fixing.
UPDATE `creature_template` SET `MinLevel` = 10, `MaxLevel` = 11 WHERE `Entry` = 2070;

