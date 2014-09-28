-- Fixed level range of creature 2070 (Monnstalker Runt) in Darshore
-- Thanks Zingzah for pointing and Metalica for fixing. This closes #573 
UPDATE `creature_template` SET `MinLevel` = 10, `MaxLevel` = 11 WHERE `Entry` = 2070;
