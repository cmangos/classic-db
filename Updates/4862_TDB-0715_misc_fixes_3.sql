-- Fix no Loot for Witch Doctor Zum'rah
-- https://www.wowhead.com/tbc/npc=7271/witch-doctor-zumrah
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40, `groupid` = 1 WHERE `entry` = 7271 AND `item` = 60176; -- NPC LOOT (Green World Drop) - (Item Levels: 45-50) - (NPC Levels: 46)

