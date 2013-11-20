-- Added support for event in Blackrock Spire of Scarshield Infiltrator morphing into Vaelan
-- Source: http://www.youtube.com/watch?v=VVxOPiDVwNQ

-- Adjusted Scarshield Infiltrator position
UPDATE `creature` SET `position_x` = 56.797, `position_y` = -400.285, `position_z` = 64.348, `orientation` = 3.169 WHERE `guid` = 42798;

-- Made Scarshiel Infiltrator kneel at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10299;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(10299, 0, 8, 1, 16, 0, 0, NULL);

SET @CONDITION := 63;

-- Added condition for player having item 12219 (Unadorned Seal of Ascension) in his/her inventory
DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 2, 12219, 1);

-- Made Vaelan stand at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10296;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(10296, 0, 0, 1, 16, 0, 0, NULL);

-- Added gossip menu to creature 10296 (Vaelan)
-- Note that:
-- gossip ID are placeholders as correct Vaelan gossip ID is unknown
-- option text are acceptable guess works though they fit into the dialogue with Vaelan
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 15014 AND 15023;
INSERT INTO `gossip_menu` VALUES
(15014, 3301, 0, 0),
(15014, 3311, 0, @CONDITION), 
(15015, 3302, 0, 0),
(15016, 3303, 0, 0),
(15017, 3304, 0, 0),
(15018, 3305, 0, 0),
(15019, 3306, 0, 0),
(15020, 3307, 0, 0),
(15021, 3308, 0, 0),
(15022, 3309, 0, 0),
(15023, 3310, 0, 0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 15014 AND 15022;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(15014, 0, 0, 'Do you mean you are a dragon?', 1, 1, 15015, 0, 0, 0, 0, NULL, 0),
(15015, 0, 0, 'Yes, please.', 1, 1, 15016, 0, 0, 0, 0, NULL, 0),
(15016, 0, 0, 'Tell me.', 1, 1, 15017, 0, 0, 0, 0, NULL, 0),
(15017, 0, 0, 'But Deathwing is gone now.', 1, 1, 15018, 0, 0, 0, 0, NULL, 0),
(15018, 0, 0, 'Continue.', 1, 1, 15019, 0, 0, 0, 0, NULL, 0),
(15019, 0, 0, 'Why don\'t you do it?', 1, 1, 15020, 0, 0, 0, 0, NULL, 0),
(15020, 0, 0, 'Unless?', 1, 1, 15021, 0, 0, 0, 0, NULL, 0),
(15021, 0, 0, 'What must I do?', 1, 1, 15022, 0, 0, 0, 0, NULL, 0),
(15022, 0, 0, 'Continue.', 1, 1, 15023, 0, 0, 0, 0, NULL, 0);

-- Updated creature 10296 (Vaelan) to display gossip and stand idle (no random movement)
UPDATE `creature_template` SET `gossip_menu_id` = 15014, `npcflag` = 3, `MovementType` = 0 WHERE `entry` = 10296;

-- Removed Vaelan from game as it is spawned via script
-- DELETE FROM `creature` WHERE `id` = 10296;
-- Note: Vaelan is not currently removed like it should because the script morphing Scarshield Infiltrator into Vaelan does not exist yet
