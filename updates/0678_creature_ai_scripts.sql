
-- ------------------------------

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN ('11668', '12265');

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1166801', '11668', '11', '0', '100', '2', '0', '0', '0', '0', '11', '7942', '0', '2', '11', '19396', '0', '2', '0', '0', '0', '0', 'Firelord - Immunity: Fire + Incinerate (passive)'),
('1166802', '11668', '0', '0', '100', '3', '4000', '6000', '2000', '4000', '11', '19393', '4', '32', '0', '0', '0', '0', '0', '0', '0', '0', 'Firelord - Soul Burn'),
('1166803', '11668', '0', '0', '100', '3', '10000', '15000', '15000', '20000', '11', '19392', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Firelord - Summon Lava Spawn');

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1226501', '12265', '11', '0', '100', '2', '0', '0', '0', '0', '11', '7942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lava Spawn - Immunity: Fire'),
('1226502', '12265', '0', '0', '100', '3', '0', '1000', '3000', '5000', '11', '19391', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Lava Spawn - Fireball'),
('1226503', '12265', '0', '0', '100', '2', '30000', '30000', '0', '0', '1', '-1320', '0', '0', '11', '19569', '0', '2', '0', '0', '0', '0', 'Lava Spawn - Emote + Split1'),
('1226504', '12265', '17', '0', '100', '2', '12265', '0', '0', '0', '11', '19570', '0', '2', '41', '0', '0', '0', '0', '0', '0', '0', 'Lava Spawn - Split2 + Despawn');
