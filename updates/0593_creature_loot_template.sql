-- Fixed too low drop chances, should be 100%: Lost Soul (Tirisfal Glades) - Wispy Cloak 20%, Tormented Spirit - Ghostly Bracers 15%
-- Thanks Neotmiren for pointing and fixing. This closes #494 
-- Source: http://www.wowwiki.com/Patch_1.4.0
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` IN (3322, 3323);
