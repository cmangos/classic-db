
UPDATE `creature_template` SET `UnitFlags`='64', `SpeedWalk`='0.666668', `Rank`='2', `DamageMultiplier`='5', `MinMeleeDmg`='103.9', `MaxMeleeDmg`='137.9', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3791', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `ResistanceShadow`='0', `MovementType`='1' WHERE `Entry`='11447';
UPDATE `creature_template` SET `UnitFlags`='64', `SpeedWalk`='1', `Rank`='2', `DamageMultiplier`='12', `MinMeleeDmg`='96.8', `MaxMeleeDmg`='128.2', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3075', `MeleeAttackPower`='238', `RangedAttackPower`='24', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='11497';
UPDATE `creature_template` SET `SpeedWalk`='1', `Rank`='2', `DamageMultiplier`='10', `MinMeleeDmg`='99.8', `MaxMeleeDmg`='132.4', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3435', `MeleeAttackPower`='242', `RangedAttackPower`='25', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1', `EquipmentTemplateId`='2430' WHERE `Entry`='11498';

DELETE FROM `creature_equip_template_raw` WHERE `entry`='2430';
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
('2430', '782', '0', '0', '33489666', '0', '0', '781', '0', '0');

