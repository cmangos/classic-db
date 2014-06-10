-- Items relating to "The Lost Fragments" quest (Badlands) had too high 100% drop chance
-- Thanks Neotmiren for pointing and fixing. This closes #464 
-- Source: PSDB
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` IN (4518, 4519, 4520);
