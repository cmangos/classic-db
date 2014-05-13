-- Fixed quest giver and quest completionner of quests 2201 (Find the Gems) and 2204 (Restoring the Necklace)
-- in Uldaman as it was wrongly set to NPC 6826 in Ironforge instead of GO 112877 (Talvash's Scrying Bowl)
-- Also fixed quest 3375 (Replacement Phial) which should not be available without losing the prerequired
-- item of quest 2201
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 112877 AND `quest` = 2201;
INSERT INTO  `gameobject_involvedrelation` VALUES (112877, 2201);

DELETE FROM `gameobject_questrelation` WHERE `id` = 112877 AND `quest` = 2204;
INSERT INTO  `gameobject_questrelation` VALUES (112877, 2204);

DELETE FROM `creature_involvedrelation` WHERE `quest` = 2201;
DELETE FROM `creature_questrelation` WHERE `quest` = 2204;

UPDATE `quest_template` SET `PrevQuestId` = -2201 WHERE `entry` = 3375;
