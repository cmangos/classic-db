-- Fixed required races for quests 614 and 8551 (The Captain's Chest) to prevent players to be able to complete the quest twice
-- by accepting opposite faction quest
-- Thanks scotty0100 for pointing and fixing
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 614;   -- Alliance Captain's Chest
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8551; -- Horde Captain's Chest
