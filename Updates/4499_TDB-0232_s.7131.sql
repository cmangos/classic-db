DELETE FROM `spell_proc_event` WHERE `entry` = 7131; -- Illusion Passive
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES (7131, 65536); -- classic has some corrupted data for it.

UPDATE `creature_template` SET `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` IN (2638,4785,5097,6493,6932,11027,11263);
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 4785;
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000 WHERE `entry` = 5097;
UPDATE `creature_template` SET `SpeedWalk` = 0.666668, `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 6932;
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 11027;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.25) WHERE `entry` = 11263;
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|8389136 WHERE `entry` IN (4785,6932);

