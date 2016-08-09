
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='578';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('57801', '578', '2', '0', '100', '0', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '0', '0', '0', '0', 'Murloc Scout - Flee at 15% HP');

DELETE FROM `creature_ai_scripts` WHERE `creature_id`='16052';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1605201', '16052', '2', '0', '100', '3', '25', '0', '15300', '22900', '11', '15503', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Drink Healing Potion When Below 25% HP'),
('1605202', '16052', '0', '0', '80', '3', '3000', '5500', '15000', '15000', '11', '27632', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Aimed Shot'),
('1605203', '16052', '0', '0', '80', '3', '5500', '5500', '11000', '11000', '11', '27634', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Concussive Shot'),
('1605204', '16052', '0', '0', '80', '3', '3000', '5500', '15000', '15000', '11', '18651', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Multi-Shot'),
('1605205', '16052', '0', '0', '80', '3', '3000', '5500', '13000', '18000', '11', '27633', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Wing Clip'),
('1605206', '16052', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Stop Movement on Aggro'),
('1605207', '16052', '4', '0', '100', '2', '0', '0', '0', '0', '11', '16100', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Shoot and Set Phase 1 on Aggro'),
('1605208', '16052', '0', '6', '100', '3', '2200', '4700', '2200', '4700', '11', '16100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Cast Shoot (Phase 1)'),
('1605209', '16052', '9', '6', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Start Movement at 20 Yards (Phase 1)'),
('1605210', '16052', '9', '6', '100', '3', '6', '10', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Stop Movement at 10 Yards (Phase 1)'),
('1605211', '16052', '9', '6', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Start Movement at 5 Yards (Phase 1)'),
('1605212', '16052', '2', '0', '100', '2', '15', '0', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Malgen Longspear - Set Phase 2 at 15% HP'),
('1605213', '16052', '2', '5', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Malgen Longspear - Start Movement and Flee at 15% HP (Phase 2)');

UPDATE `creature_template` SET `AIName`='EventAI' WHERE `Entry`='16052';
