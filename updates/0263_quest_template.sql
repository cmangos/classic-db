-- Alter table quest_template to change type of QuestLevel column from tinyint to smallint in order to allow the use
-- of value -1 for setting quest level to player level (mainly use by holiday events quests)
ALTER TABLE `quest_template` MODIFY `QuestLevel` SMALLINT NOT NULL;