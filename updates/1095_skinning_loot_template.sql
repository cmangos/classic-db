
UPDATE `creature_template` SET `MinLevel`='53', `MaxLevel`='53', `SpeedWalk`='1', `HealthMultiplier`='1.3', `DamageVariance`='1.35', `ArmorMultiplier`='1', `MinMeleeDmg`='54.0', `MaxMeleeDmg`='71.7', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='3163', `MeleeAttackPower`='218', `RangedAttackPower`='22', `MeleeBaseAttackTime`='1200', `RangedBaseAttackTime`='1200', `SkinningLootId`='10077', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0', `MovementType`='1' WHERE `Entry`='10077';

DELETE FROM `skinning_loot_template` WHERE `entry`='10077';
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('10077', '8170', '50', '1', '1', '2', '0'),
('10077', '4304', '45', '1', '1', '2', '0'),
('10077', '8171', '3', '1', '1', '1', '0'),
('10077', '8169', '2', '1', '1', '1', '0');

