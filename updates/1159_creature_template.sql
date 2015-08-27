
UPDATE `creature_template` SET `FactionAlliance`='14', `FactionHorde`='14', `Scale`='0', `UnitFlags`='33554432', `SpeedRun`='0.75', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `AIName`='EventAI' WHERE `Entry`='16129';

DELETE FROM `creature_ai_scripts` WHERE `creature_id`='16129';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1612901', '16129', '1', '0', '100', '0', '5000', '5000', '0', '0', '11', '27812', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Shadow Fissure - Void Blast');
