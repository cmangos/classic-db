-- Remove duplicate wrong spawn in Maraudon of NPC 12224 (Cavern Shambler)
DELETE FROM `creature` WHERE `guid` = 160510;
