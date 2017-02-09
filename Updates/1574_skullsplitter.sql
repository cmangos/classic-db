
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (669, 784);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('66901', '669', '1', '0', '100', '0', '5000', '5000', '0', '0', '11', '3621', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Skullsplitter Hunter - Skullsplitter Pet'),
('78401', '784', '1', '0', '100', '0', '5000', '5000', '0', '0', '11', '3621', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Skullsplitter Beastmaster - Skullsplitter Pet');

UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry` IN (669, 784);

DELETE FROM `creature` WHERE `id`=756;
