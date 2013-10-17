-- Added waypoints movement to creature 14327 (Lethtendris) in Dire Maul East
-- Source:  http://www.youtube.com/watch?feature=player_detailpage&v=hdU-IWdLZ54#t=131
DELETE FROM `creature_movement_template` WHERE `entry` = 14327;
INSERT INTO `creature_movement_template`  VALUES
(14327, 1, 5.38201, -449.751, 16.4069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56867, 0, 0),
(14327, 2, 1.84266, -457.824, 16.4027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.1257, 0, 0),
(14327, 3, -5.94911, -461.589, 16.3998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05599, 0, 0),
(14327, 4, -14.187, -458.465, 16.4001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22347, 0, 0),
(14327, 5, -17.7826, -450.064, 16.4047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55195, 0, 0),
(14327, 6, -11.3306, -443.247, 16.4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.569417, 0, 0),
(14327, 7, -4.13976, -441.568, 16.4101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.041629, 0, 0),
(14327, 8, 3.09104, -444.836, 16.4087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55198, 0, 0);
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 14327;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 14327;

-- Linked creature 14349 (Pimbig) to creature 14327 (Lethtendris) to follow her
-- and share aggro
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(14349, 429, 14327, 515, 50);

-- Added equipment to creature 14327 (Lethtendris)
-- Source: http://www.wowhead.com/npc=14327#comments
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 1206;
INSERT INTO `creature_equip_template_raw` VALUES
(1206, 35563, 0, 0, 285346306, 0, 0, 2, 0, 0);
UPDATE `creature_template` SET `equipment_id` = 1206 WHERE `entry` = 14327;
