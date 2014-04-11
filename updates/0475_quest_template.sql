-- Correcting Quest Chain, Levels, Type
-- Quest Chain:
-- Scaring Shaky (606) L41 R30
-- Return to MacKinley (607) L41 R30
-- Voodoo Dues (609) L44 R30
-- Cracking Maury's Foot (613) L44 R31 GROUP

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 606;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 606;
UPDATE `quest_template` SET `NextQuestInChain` = 607 WHERE `entry` = 606;
UPDATE `quest_template` SET `QuestLevel` = 41 WHERE `entry` = 606;
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` = 606;

UPDATE `quest_template` SET `PrevQuestId` = 606 WHERE `entry` = 607;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 607;
UPDATE `quest_template` SET `NextQuestInChain` = 609 WHERE `entry` = 607;
UPDATE `quest_template` SET `QuestLevel` = 41 WHERE `entry` = 607;
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` = 607;

UPDATE `quest_template` SET `PrevQuestId` = 607 WHERE `entry` = 609;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 609;
UPDATE `quest_template` SET `NextQuestInChain` = 613 WHERE `entry` = 609;
UPDATE `quest_template` SET `QuestLevel` = 44 WHERE `entry` = 609;
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` = 609;

UPDATE `quest_template` SET `PrevQuestId` = 609 WHERE `entry` = 613;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 613;
UPDATE `quest_template` SET `NextQuestInChain` = 0 WHERE `entry` = 613;
UPDATE `quest_template` SET `QuestLevel` = 44 WHERE `entry` = 613;
UPDATE `quest_template` SET `MinLevel` = 31 WHERE `entry` = 613;
UPDATE `quest_template` SET `Type` = 1 WHERE `entry` = 613;
