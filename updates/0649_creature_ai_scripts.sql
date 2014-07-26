-- Added fire immunity to creature 11668 (Firelord) in Molten Core
-- Made room in creature's AI script to add the immunity spell cast at spawn
UPDATE `creature_ai_scripts` SET `id` = 1166804 WHERE `id` = 1166803;
UPDATE `creature_ai_scripts` SET `id` = 1166803 WHERE `id` = 1166802;
UPDATE `creature_ai_scripts` SET `id` = 1166802 WHERE `id` = 1166801;

-- Added new script to make creature 11668 (Firelord) cast "Immunity: Fire" at spawn
DELETE FROM `creature_ai_scripts` WHERE `id` = 1166801;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(1166801, 11668, 11, 0, 100, 0, 0, 0, 0, 0, 11, 7942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Firelord - Damage Immunity: Fire');
