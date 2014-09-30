-- Fixed end quest of Uldaman instance (The Platinum Discs) for both Alliance and Horde
-- Spawned missing NPC 7172 (Lore Keeper of Norgannon) at quest start
-- Fixed quest requirements
SET @CONDITION := 89;

UPDATE `quest_template` SET `StartScript` = 2278 WHERE `Entry` = 2278;
UPDATE `quest_template` SET `PrevQuestId` = 2278, `NextQuestId` = 2439 WHERE `Entry` = 2279;
UPDATE `quest_template` SET `NextQuestId` = 2439, `NextQuestInChain` = 2440 WHERE `Entry` = 2280;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 37, 7172, 80);

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 2278;
INSERT INTO `dbscripts_on_quest_start` VALUES
(2278, 0, 34, @CONDITION, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop if Lore Keeper of Norgannon already spawned'),
(2278, 1, 10, 7172, 600000, 0, 0, 0, 0, 0, 0, 0, 148.657, 309.864, -52.1173, 5.23599, 'spawns Lore Keeper of Norgannon');

UPDATE `creature_template` SET `MovementType` = 0 WHERE `Entry` = 7172;
