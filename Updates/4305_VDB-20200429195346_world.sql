-- Add your query below.
-- https://github.com/vmangos/core/commit/0bc40596498550af21e2823042371789ea048779

-- Correct levels for ZG creatures.
UPDATE `creature_template` SET `MinLevel`=56, `MaxLevel`=56, `MinLevelHealth`=8097, `MaxLevelHealth`=8097 WHERE `entry`=14921;
UPDATE `creature_template` SET `MinLevel`=60, `MaxLevel`=60, `MinLevelHealth`=4120, `MaxLevelHealth`=4120 WHERE `entry`=14758;

-- Correct melee attack speeds for ZG creatures.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=871;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=877;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=879;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14902;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14903;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14904;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14905;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=14921;
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry`=15070;

-- Correct ranged attack speeds for ZG creatures.
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11350;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11372;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11374;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=871;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=877;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=879;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14902;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14903;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14904;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14905;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=14921;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=15070;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=3197;
UPDATE `creature_template` SET `RangedBaseAttackTime`=2000 WHERE `entry`=11368;

-- Correct walking speed for ZG creatures.
UPDATE `creature_template` SET `SpeedWalk`=2 WHERE `entry`=14750;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14903;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14904;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=14921;
UPDATE `creature_template` SET `SpeedWalk`=1 WHERE `entry`=15070;

-- Correct run speed for ZG creatures.
UPDATE `creature_template` SET `SpeedRun`=1.71429 WHERE `entry`=11357;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14507;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14510;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14517;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14750;
UPDATE `creature_template` SET `SpeedRun`=2.14286 WHERE `entry`=14834;

-- Correct bounding radius / combat reach for ZG creatures.
UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=15191;
-- [1] GUID: Full: 0xF1300038B500008E Type: Creature Entry: 14517 Low: 142
-- [1] UNIT_FIELD_BOUNDINGRADIUS: 1
-- [1] UNIT_FIELD_COMBATREACH: 2
-- [1] UNIT_FIELD_DISPLAYID: 15191/2.1287E-41
UPDATE `creature_model_info` SET `bounding_radius`=2.38, `combat_reach`=10.5 WHERE `modelid`=15295;
-- shares model with (without scale auras)
-- [1] OBJECT_FIELD_GUID: Full: 0xF130007000000A17 Type: Creature Entry: 28672 Low: 2583
-- [1] UNIT_FIELD_BOUNDINGRADIUS: 2.38	/ 3.5	= 0.68
-- [1] UNIT_FIELD_COMBATREACH: 10.5		* 2		= 21
-- [1] UNIT_FIELD_DISPLAYID: 15295/2.1433E-41
-- [2] OBJECT_FIELD_GUID: Full: 0xF1300039F2000177 Type: Creature Entry: 14834 Low: 375
-- s.24692 20% SPELL_AURA_MOD_SCALE
-- [2] UNIT_FIELD_BOUNDINGRADIUS: 0.68
-- [2] UNIT_FIELD_COMBATREACH: 21
-- [2] UNIT_FIELD_DISPLAYID: 15295/2.1433E-41
-- End of migration.

