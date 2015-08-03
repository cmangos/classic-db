
UPDATE `creature` SET `modelid`='0', `position_x`='3439.25', `position_y`='-4980.96', `position_z`='195.8113', `orientation`='2.321288' WHERE `guid`='86607';

UPDATE `creature_template` SET `UnitFlags`='32768', `SpeedWalk`='1', `DamageMultiplier`='1.25', `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1', `EquipmentTemplateId`='2429' WHERE `Entry`='10822';

DELETE FROM `creature_equip_template_raw` WHERE `entry`='2429';
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
('2429', '5290', '0', '0', '33489666', '0', '0', '781', '0', '0');
