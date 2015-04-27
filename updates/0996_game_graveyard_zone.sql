-- Fixed several graveyards for Horde and Alliance accross the world
-- Thanks @Metalica for reporting with lots of details and @Rushor for contributing.
-- This closes #706
-- Darkshore : Horde should not respawn in Ashenvale
DELETE FROM `game_graveyard_zone` WHERE `id`=512 AND `ghost_zone`=148 AND `faction`=67;
UPDATE `game_graveyard_zone` SET `faction`=0 WHERE `id`=469 AND `ghost_zone`=148;
-- Dun Morogh : Horde should not be able to respawn in Ironforge
DELETE FROM `game_graveyard_zone` WHERE `id` = 102 OR `ghost_zone` = 1537;
INSERT INTO `game_graveyard_zone` VALUES
(102, 1537, 469),
(101, 1537, 67);
-- Undercity : graveyard missing
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 1497;
INSERT INTO `game_graveyard_zone` VALUES
(96, 1497, 67),
(853, 1497, 469);
-- Hinterlands : Alliance should be able to respawn at Overlook Cliffs
UPDATE `game_graveyard_zone` SET `faction` = 0 WHERE `id` = 789;
UPDATE `game_graveyard_zone` SET `faction` = 0 WHERE `id` = 349;
