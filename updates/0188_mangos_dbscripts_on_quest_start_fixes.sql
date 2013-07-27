-- Added Quest start script for quest 804 Sarkoth and removed wrong start script from quest 790 sarkoth part 1
-- Source: http://www.wowwiki.com/Quest:Sarkoth_(2)

-- Removing wrong emote and start script from quest 790 (Sarkoth Part 1)
UPDATE `quest_template` SET `CompleteEmote` = 0 , `StartScript` = 0 WHERE `entry` = 790;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 790;
-- Adding correct start script to quest 804 (Sarkoth Part 2)
UPDATE `quest_template` SET `StartScript` = 804 WHERE `entry` = 804;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 804;
INSERT INTO `dbscripts_on_quest_start` VALUES (804, 2, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hana zua Kneel');
INSERT INTO `dbscripts_on_quest_start` VALUES (804, 3, 0, 0, 0, 0, 0, 0, 2000000002, 0, 0, 0, 0, 0, 0, 0, 'Hana zua say');
INSERT INTO `dbscripts_on_quest_start` VALUES (804, 7, 1, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hana zua death state');