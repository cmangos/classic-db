
-- Eviscerator
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `HealthMultiplier`='9', `PowerMultiplier`='5', `DamageMultiplier`='7.5', `ArmorMultiplier`='1', `MinLevelHealth`='18234', `MaxLevelHealth`='18234', `MinLevelMana`='10205', `MaxLevelMana`='10205', `MinMeleeDmg`='55.7', `MaxMeleeDmg`='73.8', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='2610', `MeleeAttackPower`='210', `RangedAttackPower`='20', `MeleeBaseAttackTime`='1300', `RangedBaseAttackTime`='1300', `AIName`='EventAI' WHERE `Entry`='9029';

DELETE FROM `creature_ai_scripts` WHERE `creature_id`='9029';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('902901', '9029', '0', '0', '100', '1', '4000', '8000', '6000', '12000', '11', '14331', '1', '32', '0', '0', '0', '0', '0', '0', '0', '0', 'Eviscerator - Vicious Rend'),
('902902', '9029', '0', '0', '100', '1', '6000', '12000', '12000', '24000', '11', '15245', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Eviscerator - Shadow Bolt Volley'),
('902903', '9029', '0', '0', '100', '1', '6000', '12000', '12000', '24000', '11', '7121', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Eviscerator - Anti-Magic Shield');
