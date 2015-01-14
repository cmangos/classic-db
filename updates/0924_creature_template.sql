-- Fixed stats of NPC 1088 (Monstrous Crawler) which had too low HP
-- Thanks TheTrueAnimal for pointing. This closes #702 
UPDATE `creature_template` SET `MinLevelHealth` = 1716, `MaxLevelHealth` = 1782, `ArmorMultiplier` = 1 WHERE `Entry` = 1088;
