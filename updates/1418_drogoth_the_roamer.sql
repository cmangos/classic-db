
UPDATE `creature_template` SET `MinMeleeDmg`='51.3', `MaxMeleeDmg`='68.1', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='1593', `MeleeAttackPower`='124', `RangedAttackPower`='12', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='14231';

DELETE FROM `creature` WHERE `guid`='31173';
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('31173', '14231', '1', '0', '0', '-2695.606', '-3048.912', '38.946175', '4.853457', '28800', '15', '0', '1536', '0', '0', '1');

