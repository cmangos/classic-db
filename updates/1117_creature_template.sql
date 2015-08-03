
UPDATE `creature_template` SET `MinLevel`='19', `MaxLevel`='19', `UnitFlags`='64', `SpeedWalk`='1', `ArmorMultiplier`='1', `MinLevelHealth`='449', `MaxLevelHealth`='449', `MinMeleeDmg`='27.6', `MaxMeleeDmg`='36.5', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='817', `MeleeAttackPower`='68', `RangedAttackPower`='3', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1', `AIName`='EventAI' WHERE `Entry`='14266';

DELETE FROM `creature_ai_scripts` WHERE `creature_id`='14266';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('1426601', '14266', '11', '0', '100', '0', '0', '0', '0', '0', '11', '11919', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', 'Shanda the Spinner - Poison Proc');
