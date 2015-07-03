-- Improved quest 4283 (Jail Break!) in Blackrock Depths
-- Fixed NPC 9682 (Marshal Reginald Windsor) factions, flags and speed
-- Faction is re-set based on SD2 script for the quest. After updating template of escortee NPC,
-- template faction is applied and faction was wrong. Set to same faction as SD2.
-- This closes #774
UPDATE `creature_template` SET `FactionAlliance`=231, `FactionHorde`=231, `UnitFlags`= 320, `CreatureTypeFlags`= 4096 WHERE `Entry`=9682;
UPDATE `creature_template` SET `SpeedWalk` = 1.14286, `SpeedRun` = 1.7, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `Entry` IN (9023, 9682);
