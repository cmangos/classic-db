-- Fixed quest level of the starting quests of the Festival of Fire as they should be available at all level
-- Quests: "The Festival of Fire" (Horde/Alliance)
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` IN (9367, 9368);
