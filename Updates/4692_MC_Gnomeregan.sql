-- Gnomeregan
UPDATE `creature_template` SET `CharmedSpellList`='621205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6212'; -- https://www.wowhead.com/classic/npc=6212/dark-iron-agent
UPDATE `creature_template` SET `CharmedSpellList`='622405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6224'; -- https://www.wowhead.com/classic/npc=6224/leprous-machinesmith
UPDATE `creature_template` SET `CharmedSpellList`='622205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6222'; -- https://www.wowhead.com/classic/npc=6222/leprous-technician
UPDATE `creature_template` SET `CharmedSpellList`='760305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7603'; -- https://www.wowhead.com/classic/npc=7603/leprous-assistant
UPDATE `creature_template` SET `CharmedSpellList`='622305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6223'; -- https://www.wowhead.com/classic/npc=6223/leprous-defender
UPDATE `creature_template` SET `CharmedSpellList`='621105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6211'; -- https://www.wowhead.com/classic/npc=6211/caverndeep-reaver
UPDATE `creature_template` SET `CharmedSpellList`='640705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6407'; -- https://www.wowhead.com/classic/npc=6407/holdout-technician
UPDATE `creature_template` SET `CharmedSpellList`='639205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6392'; -- https://www.wowhead.com/classic/npc=6392/holdout-medic
UPDATE `creature_template` SET `CharmedSpellList`='967605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='9676'; -- https://www.wowhead.com/classic/npc=9676/tink-sprocketwhistle
UPDATE `creature_template` SET `CharmedSpellList`='639105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6391'; -- https://www.wowhead.com/classic/npc=6391/holdout-warrior
UPDATE `creature_template` SET `CharmedSpellList`='736105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7361'; -- https://www.wowhead.com/classic/npc=7361/grubbis
UPDATE `creature_template` SET `CharmedSpellList`='620605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6206'; -- https://www.wowhead.com/classic/npc=6206/caverndeep-burrower
UPDATE `creature_template` SET `CharmedSpellList`='620705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6207'; -- https://www.wowhead.com/classic/npc=6207/caverndeep-ambusher
UPDATE `creature_template` SET `CharmedSpellList`='632905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6329'; -- https://www.wowhead.com/classic/npc=6329/irradiated-pillager

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (621205,622405,622205,760305,622305,621105,640705,639205,967605,639105,736105,620605,620705,632905);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(621205, 'Vanilla - Dark Iron Agent', 0, 0),
(622405, 'Vanilla - Leprous Machinesmith', 0, 0),
(622205, 'Vanilla - Leprous Technician', 0, 0),
(760305, 'Vanilla - Leprous Assistant', 0, 0),
(622305, 'Vanilla - Leprous Defender', 0, 0),
(621105, 'Vanilla - Caverndeep Reaver', 0, 0),
(640705, 'Vanilla - Holdout Technician', 0, 0),
(639205, 'Vanilla - Holdout Medic', 0, 0),
(967605, 'Vanilla - Tink Sprocketwhistle', 0, 0),
(639105, 'Vanilla - Holdout Warrior', 0, 0),
(736105, 'Vanilla - Grubbis', 0, 0),
(620605, 'Vanilla - Caverndeep Burrower', 0, 0),
(620705, 'Vanilla - Caverndeep Ambusher', 0, 0),
(632905, 'Vanilla - Irradiated Pillager', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (621205,622405,622205,760305,622305,621105,640705,639205,967605,639105,736105,620605,620705,632905);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(621205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Dark Iron Agent - Attack'),
(622405, 5, 13398, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Machinesmith - Throw Wrench'),
(622405, 4, 10345, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Machinesmith - Rebuild'),
(622405, 3, 10732, 0, -1, 0, 0, 100, 1, 0, 0, 22906, 28406, 'Leprous Machinesmith - Supercharge'),
(622405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Machinesmith - Attack'),
(622205, 5, 13398, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Technician - Throw Wrench'),
(622205, 4, 10732, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Technician - Supercharge'),
(622205, 3, 10345, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Technician - Rebuild'),
(622205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Technician - Attack'),
(760305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Assistant - Attack'),
(622305, 4, 14443, 0, -1, 0, 0, 100, 1, 0, 0, 13947, 24999, 'Leprous Defender - Multi-Shot'),
(622305, 3, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Defender - Shoot'),
(622305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Leprous Defender - Attack'),
(621105, 3, 15496, 0, -1, 0, 0, 100, 1, 0, 0, 3366, 4993, 'Caverndeep Reaver - Cleave'),
(621105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Caverndeep Reaver - Attack'),
(640705, 4, 8858, 0, -1, 0, 0, 100, 1, 0, 0, 5521, 9489, 'Holdout Technician - Bomb'),
(640705, 3, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Holdout Technician - Shoot'),
(640705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Holdout Technician - Attack'),
(639205, 5, 13864, 0, -1, 0, 0, 100, 1, 0, 0, 2000, 2000, 'Holdout Medic - Power Word: Fortitude'),
(639205, 4, 22168, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Holdout Medic - Renew'),
(639205, 3, 22167, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Holdout Medic - Heal'), -- 34945
(639205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Holdout Medic - Attack'),
(967605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Tink Sprocketwhistle - Attack'),
(639105, 4, 11976, 0, -1, 0, 0, 100, 1, 0, 0, 7732, 12755, 'Holdout Warrior - Strike'),
(639105, 3, 12555, 0, -1, 0, 0, 100, 1, 0, 0, 5408, 8761, 'Holdout Warrior - Pummel'),
(639105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Holdout Warrior - Attack'),
(736105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Grubbis - Attack'),
(620605, 3, 7405, 0, -1, 0, 0, 100, 1, 0, 0, 5838, 9487, 'Caverndeep Burrower - Sunder Armor'), -- 87081
(620605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Caverndeep Burrower - Attack'),
(620705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Caverndeep Ambusher - Attack'),
(632905, 4, 9771, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Irradiated Pillager - Radiation Bolt'), -- 92266
(632905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Irradiated Pillager - Attack');

UPDATE `creature_spell_list` SET `InitialMin`=10000 WHERE `Id`=622701 AND `Position`=1; -- Mechano-Frostwalker - Cast Hail Storm

DELETE FROM `spell_script_target` WHERE `entry` = 11819 AND `targetEntry` = 7849;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (11819, 1, 7849, 0); -- Script for Random Position from targeted unit

