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
UPDATE `creature_template` SET `CharmedSpellList`='791505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7915'; -- https://www.wowhead.com/classic/npc=7915/walking-bomb
UPDATE `creature_template` SET `CharmedSpellList`='623205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6232'; -- https://www.wowhead.com/classic/npc=6232/arcane-nullifier-x-21
UPDATE `creature_template` SET `CharmedSpellList`='784905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7849'; -- https://www.wowhead.com/classic/npc=7849/mobile-alert-system
UPDATE `creature_template` SET `CharmedSpellList`='623405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6234'; -- https://www.wowhead.com/classic/npc=6234/mechanized-guardian
UPDATE `creature_template` SET `CharmedSpellList`='622505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6225'; -- https://www.wowhead.com/classic/npc=6225/mechano-tank
UPDATE `creature_template` SET `CharmedSpellList`='622605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6226'; -- https://www.wowhead.com/classic/npc=6226/mechano-flamewalker
UPDATE `creature_template` SET `CharmedSpellList`='622905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6229'; -- https://www.wowhead.com/classic/npc=6229/crowd-pummeler-9-60
UPDATE `creature_template` SET `CharmedSpellList`='622705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6227'; -- https://www.wowhead.com/classic/npc=6227/mechano-frostwalker
UPDATE `creature_template` SET `CharmedSpellList`='623505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6235'; -- https://www.wowhead.com/classic/npc=6235/electrocutioner-6000
UPDATE `creature_template` SET `CharmedSpellList`='623005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6230'; -- https://www.wowhead.com/classic/npc=6230/peacekeeper-security-suit
UPDATE `creature_template` SET `CharmedSpellList`='623305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6233'; -- https://www.wowhead.com/classic/npc=6233/mechanized-sentry

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (621205,622405,622205,760305,622305,621105,640705,639205,967605,639105,736105,620605,620705,632905,791505,623205,784905,623405,622505,622605,622905,622705,623505,623005,623305);
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
(632905, 'Vanilla - Irradiated Pillager', 0, 0),
(791505, 'Vanilla - Walking Bomb', 0, 0),
(623205, 'Vanilla - Arcane Nullifier X-21', 0, 0),
(784905, 'Vanilla - Mobile Alert System', 0, 0),
(623405, 'Vanilla - Mechanized Guardian', 0, 0),
(622505, 'Vanilla - Mechano-Tank', 0, 0),
(622605, 'Vanilla - Mechano-Flamewalker', 0, 0),
(622905, 'Vanilla - Crowd Pummeler 9-60', 0, 0),
(622705, 'Vanilla - Mechano-Frostwalker', 0, 0),
(623505, 'Vanilla - Electrocutioner 6000', 0, 0),
(623005, 'Vanilla - Peacekeeper Security Suit', 0, 0),
(623305, 'Vanilla - Mechanized Sentry', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (621205,622405,622205,760305,622305,621105,640705,639205,967605,639105,736105,620605,620705,632905,791505,623205,784905,623405,622505,622605,622905,622705,623505,623005,623305);
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
(632905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Irradiated Pillager - Attack'),
-- Mechanicals
(791505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Walking Bomb - Attack'),
(623205, 4, 10832, 0, -1, 0, 0, 100, 1, 0, 0, 23302, 27942, 'Arcane Nullifier X-21 - Mass Nullify'),
(623205, 3, 10831, 0, -1, 0, 0, 100, 1, 0, 0, 26470, 28612, 'Arcane Nullifier X-21 - Reflection Field'),
(623205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Arcane Nullifier X-21 - Attack'),
(784905, 4, 8279, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mobile Alert System - Stealth Detection'),
(784905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mobile Alert System - Attack'),
(623405, 3, 11820, 0, -1, 0, 0, 100, 1, 0, 0, 17079, 19964, 'Mechanized Guardian - Electrified Net'),
(623405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechanized Guardian - Attack'),
(622505, 3, 10346, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechano-Tank - Machine Gun'),
(622505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechano-Tank - Attack'),
(622605, 4, 10733, 0, -1, 0, 0, 100, 1, 0, 0, 5012, 12786, 'Mechano-Flamewalker - Flame Spray'),
(622605, 3, 11970, 0, -1, 0, 0, 100, 1, 0, 0, 11771, 14046, 'Mechano-Flamewalker - Fire Nova'),
(622605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechano-Flamewalker - Attack'),
(622905, 5, 8374, 0, -1, 0, 0, 100, 1, 0, 0, 6495, 7458, 'Crowd Pummeler 9-60 - Arcing Smash'),
(622905, 4, 5568, 0, -1, 0, 0, 100, 1, 0, 0, 15364, 19683, 'Crowd Pummeler 9-60 - Trample'),
(622905, 3, 10887, 0, -1, 0, 0, 100, 1, 0, 0, 20875, 24863, 'Crowd Pummeler 9-60 - Crowd Pummel'),
(622905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crowd Pummeler 9-60 - Attack'),
(622705, 3, 11264, 0, -1, 0, 0, 100, 1, 0, 0, 22111, 29676, 'Mechano-Frostwalker - Ice Blast'),
(622705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechano-Frostwalker - Attack'),
(623505, 5, 11085, 0, -1, 0, 0, 100, 1, 0, 0, 17714, 23485, 'Electrocutioner 6000 - Chain Bolt'),
(623505, 4, 11084, 0, -1, 0, 0, 100, 1, 0, 0, 15052, 19063, 'Electrocutioner 6000 - Shock'),
(623505, 3, 11082, 0, -1, 0, 0, 100, 1, 0, 0, 16208, 18360, 'Electrocutioner 6000 - Megavolt'),
(623505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Electrocutioner 6000 - Attack'),
(623005, 4, 6533, 0, -1, 0, 0, 100, 1, 0, 0, 20042, 22867, 'Peacekeeper Security Suit - Net'),
(623005, 3, 10730, 0, -1, 0, 0, 100, 1, 0, 0, 20301, 23671, 'Peacekeeper Security Suit - Pacify'),
(623005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Peacekeeper Security Suit - Attack'),
(623305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mechanized Sentry - Attack');

UPDATE `creature_spell_list` SET `InitialMin`=10000 WHERE `Id`=622701 AND `Position`=1; -- Mechano-Frostwalker - Cast Hail Storm

DELETE FROM `spell_script_target` WHERE `entry` = 11819 AND `targetEntry` = 7849;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (11819, 1, 7849, 0); -- Script for Random Position from targeted unit

