-- Made patrolling guards (creature 68 - Stormwind City Guard and creature 1976 - Stormwind City Patroller)
-- in Stormwind swap their equipment at nightfall. They will now wield a lantern instead of their sword.

-- Removed creature addon as they were strictly equal to creature template addon
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (68, 1976));

-- Made creature 1976 (Stormwind City Patroller) use sword+shield equipment by default
-- they were previously using lantern+shield
UPDATE `creature_template` SET `EquipmentTemplateId` = 653 WHERE `Entry` = 1976;

-- Fixed current and added missing equipment data to make creature 1976 (Stormwind City Patroller)
-- and wandering creatures 68 (Stormwind City Guard) use lanterns during the Night event
-- Static creatures 68 (Stormwind City Guard) still wield their sword
DELETE FROM `game_event_creature_data` WHERE `equipment_id` = 504 AND `event` = 27;
INSERT INTO `game_event_creature_data` VALUES
(79666, 0, 0, 504, 0, 0, 27),
(79689, 0, 0, 504, 0, 0, 27),
(79857, 0, 0, 504, 0, 0, 27),
(79859, 0, 0, 504, 0, 0, 27),
(12088, 0, 0, 504, 0, 0, 27),
(12093, 0, 0, 504, 0, 0, 27),
(79670, 0, 0, 504, 0, 0, 27),
(79675, 0, 0, 504, 0, 0, 27),
(79690, 0, 0, 504, 0, 0, 27),
(79792, 0, 0, 504, 0, 0, 27),
(79807, 0, 0, 504, 0, 0, 27),
(79814, 0, 0, 504, 0, 0, 27),
(90438, 0, 0, 504, 0, 0, 27);
