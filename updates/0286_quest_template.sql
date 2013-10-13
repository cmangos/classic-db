-- Fixed quest level of quest 763 (Rites of the Earthmother) and MinLevel of quest 772 (Rites of Vision part 3)
-- Source: http://www.wowwiki.com/Quest:Rites_of_the_Earthmother?oldid=138106
UPDATE `quest_template` SET `QuestLevel` = 3 WHERE `entry` = 763;
-- Source: http://www.wowwiki.com/Quest:Rite_of_Vision_(3)?oldid=138217
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 772;

-- Adding movement for spawned NPC at completion of quest 772 (Rite of vision)
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 2983;

-- Updated the quest end script for quest 771 Rite of vision
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 771;
INSERT INTO `dbscripts_on_quest_end` VALUES
(771, 0, 0, 2, 0, 0, 0, 0, 2000000017, 0, 0, 0, 0, 0, 0, 0, ''),
(771, 1, 15, 5026, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(771, 8, 0, 0, 0, 0, 0, 0, 2000000018, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `db_script_string` WHERE `entry` IN (2000000017, 2000000018);
INSERT INTO `db_script_string` VALUES (2000000017,"Zarlman Two-Moons begins chanting as he mixes the well stones and ambercom before the Tribal Fire.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000000018,"The Water of the Seers is ready for your consumption, $N.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,NULL);
