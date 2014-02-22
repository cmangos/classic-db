-- Added addon to creature 16400 (Toxic Tunnel) in Naxxramas Construct Wing
-- to make the tunnel leading to Gluth as stinky and dangerous as it should be
-- also fixed level of creature 16400 because it was level 80 instead of 61 like it should be in Classic
DELETE FROM `creature_template_addon` WHERE `entry` = 16400;
-- INSERT INTO `creature_template_addon` VALUES (16400, 0, 0, 1, 16, 0, 0, '28370');
DELETE FROM `creature_ai_scripts` WHERE `id` = 1640001;

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1640001, 16400, 1, 0, 100, 0, 0, 0, 0, 0, 11, 28370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toxic Tunnel - Cast Toxic Gas on Spawn');
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61,
    `faction_A` = 21, `faction_H` = 21,
    `unit_flags` = `unit_flags` | 4,
    `AIName` = 'EventAI'
    WHERE `entry` = 16400;
