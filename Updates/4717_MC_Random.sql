-- Zul'Farak / Random - MC & Enslave Lists
UPDATE `creature_template` SET `CharmedSpellList`='760805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7608'; -- https://www.wowhead.com/classic/npc=7608/murta-grimgut
UPDATE `creature_template` SET `CharmedSpellList`='760505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7605'; -- https://www.wowhead.com/classic/npc=7605/raven
UPDATE `creature_template` SET `CharmedSpellList`='760605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7606'; -- https://www.wowhead.com/classic/npc=7606/oro-eyegouge
UPDATE `creature_template` SET `CharmedSpellList`='760405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7604'; -- https://www.wowhead.com/classic/npc=7604/sergeant-bly
UPDATE `creature_template` SET `CharmedSpellList`='727505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7275'; -- https://www.wowhead.com/classic/npc=7275/shadowpriest-sezzziz
UPDATE `creature_template` SET `CharmedSpellList`='887705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='8877'; -- https://www.wowhead.com/classic/npc=8877/sandfury-zealot
UPDATE `creature_template` SET `CharmedSpellList`='887605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='8876'; -- https://www.wowhead.com/classic/npc=8876/sandfury-acolyte
UPDATE `creature_template` SET `CharmedSpellList`='778905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7789'; -- https://www.wowhead.com/classic/npc=7789/sandfury-cretin
UPDATE `creature_template` SET `CharmedSpellList`='778805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7788'; -- https://www.wowhead.com/classic/npc=7788/sandfury-drudge
UPDATE `creature_template` SET `CharmedSpellList`='778705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7787'; -- https://www.wowhead.com/classic/npc=7787/sandfury-slave
UPDATE `creature_template` SET `CharmedSpellList`='724705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7247'; -- https://www.wowhead.com/classic/npc=7247/sandfury-soul-eater
UPDATE `creature_template` SET `CharmedSpellList`='565005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='5650'; -- https://www.wowhead.com/classic/npc=5650/sandfury-witch-doctor
UPDATE `creature_template` SET `CharmedSpellList`='564905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='5649'; -- https://www.wowhead.com/classic/npc=5649/sandfury-blood-drinker
UPDATE `creature_template` SET `CharmedSpellList`='564805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='5648'; -- https://www.wowhead.com/classic/npc=5648/sandfury-shadowcaster
UPDATE `creature_template` SET `CharmedSpellList`='225405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2254'; -- https://www.wowhead.com/classic/npc=2254/crushridge-mauler
UPDATE `creature_template` SET `CharmedSpellList`='225505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2255'; -- https://www.wowhead.com/classic/npc=2255/crushridge-mage
UPDATE `creature_template` SET `CharmedSpellList`='242205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2422'; -- https://www.wowhead.com/classic/npc=2422/glommus
UPDATE `creature_template` SET `CharmedSpellList`='242105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2421'; -- https://www.wowhead.com/classic/npc=2421/muckrake
UPDATE `creature_template` SET `CharmedSpellList`='228705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2287'; -- https://www.wowhead.com/classic/npc=2287/crushridge-warmonger
UPDATE `creature_template` SET `CharmedSpellList`='241705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2417'; -- https://www.wowhead.com/classic/npc=2417/grelborg-the-miser
UPDATE `creature_template` SET `CharmedSpellList`='225605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2256'; -- https://www.wowhead.com/classic/npc=2256/crushridge-enforcer
UPDATE `creature_template` SET `CharmedSpellList`='225705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2257'; -- https://www.wowhead.com/classic/npc=2257/mugthol
UPDATE `creature_template` SET `CharmedSpellList`='242005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='2420'; -- https://www.wowhead.com/classic/npc=2420/targ

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (760805,760505,760605,760405,727505,887705,887605,778905,778805,778705,724705,565005,564905,564805,225405,225505,242205,242105,228705,241705,225605,225705,242005);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(760805, 'Vanilla - Murta Grimgut', 0, 0),
(760505, 'Vanilla - Raven', 0, 0),
(760605, 'Vanilla - Oro Eyegouge', 0, 0),
(760405, 'Vanilla - Sergeant Bly', 0, 0),
(727505, 'Vanilla - Shadowpriest Sezz\'ziz', 0, 0),
(887705, 'Vanilla - Sandfury Zealot', 0, 0),
(887605, 'Vanilla - Sandfury Acolyte', 0, 0),
(778905, 'Vanilla - Sandfury Cretin', 0, 0),
(778805, 'Vanilla - Sandfury Drudge', 0, 0),
(778705, 'Vanilla - Sandfury Slave', 0, 0),
(724705, 'Vanilla - Sandfury Soul Eater', 0, 0),
(565005, 'Vanilla - Sandfury Witch Doctor', 0, 0),
(564905, 'Vanilla - Sandfury Blood Drinker', 0, 0),
(564805, 'Vanilla - Sandfury Shadowcaster', 0, 0),
(225405, 'Vanilla - Crushridge Mauler', 0, 0),
(225505, 'Vanilla - Crushridge Mage', 0, 0),
(242205, 'Vanilla - Glommus', 0, 0),
(242105, 'Vanilla - Muckrake', 0, 0),
(228705, 'Vanilla - Crushridge Warmonger', 0, 0),
(241705, 'Vanilla - Grel\'borg the Miser', 0, 0),
(225605, 'Vanilla - Crushridge Enforcer', 0, 0),
(225705, 'Vanilla - Mug\'thol', 0, 0),
(242005, 'Vanilla - Targ', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (760805,760505,760605,760405,727505,887705,887605,778905,778805,778705,724705,565005,564905,564805,225405,225505,242205,242105,228705,241705,225605,225705,242005);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- CharmedSpellList
(760805, 6, 11974, 0, -1, 0, 0, 100, 1, 0, 0, 11607, 12729, 'Murta Grimgut - Power Word: Shield'),
(760805, 5, 9734, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Murta Grimgut - Holy Smite'),
(760805, 4, 11640, 0, -1, 0, 0, 100, 1, 0, 0, 10455, 11628, 'Murta Grimgut - Renew'),
(760805, 3, 11642, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Murta Grimgut - Heal'),
(760805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Murta Grimgut - Attack'),
(760505, 4, 12540, 0, -1, 0, 0, 100, 1, 0, 0, 7305, 12570, 'Raven - Gouge'),
(760505, 3, 7159, 0, -1, 0, 0, 100, 1, 0, 0, 2000, 2000, 'Raven - Backstab'),
(760505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Raven - Attack'),
(760605, 6, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Oro Eyegouge - Shadow Bolt'),
(760605, 5, 11990, 0, -1, 0, 0, 100, 1, 0, 0, 3000, 13500, 'Oro Eyegouge - Rain of Fire'),
(760605, 4, 11962, 0, -1, 0, 0, 100, 1, 0, 0, 15531, 17698, 'Oro Eyegouge - Immolate'),
(760605, 3, 12741, 0, -1, 0, 0, 100, 1, 0, 0, 10486, 25113, 'Oro Eyegouge - Curse of Weakness'),
(760605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Oro Eyegouge - Attack'),
(760405, 6, 12170, 0, -1, 0, 0, 100, 1, 0, 0, 5048, 8769, 'Sergeant Bly - Revenge'),
(760405, 4, 11972, 0, -1, 0, 0, 100, 1, 0, 0, 10202, 12792, 'Sergeant Bly - Shield Bash'),
(760405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sergeant Bly - Attack'),
(727505, 6, 12039, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Shadowpriest Sezz\'ziz - Heal'),
(727505, 5, 8362, 0, -1, 0, 0, 100, 1, 0, 0, 17200, 28862, 'Shadowpriest Sezz\'ziz - Renew'),
(727505, 4, 13704, 0, -1, 0, 0, 100, 1, 0, 0, 20843, 29092, 'Shadowpriest Sezz\'ziz - Psychic Scream'),
(727505, 3, 12739, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowpriest Sezz\'ziz - Shadow Bolt'),
(727505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowpriest Sezz\'ziz - Attack'),
(887705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Zealot - Attack'),
(887605, 6, 11981, 0, -1, 0, 0, 100, 1, 0, 0, 10087, 13469, 'Sandfury Acolyte - Mana Burn'),
(887605, 5, 11980, 0, -1, 0, 0, 100, 1, 0, 0, 16837, 27789, 'Sandfury Acolyte - Curse of Weakness'),
(887605, 4, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Acolyte - Shadow Bolt'),
(887605, 3, 11639, 0, -1, 0, 0, 100, 1, 0, 0, 19783, 24943, 'Sandfury Acolyte - Shadow Word: Pain'),
(887605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Acolyte - Attack'),
(778905, 5, 20798, 0, -1, 0, 0, 100, 1, 0, 0, 60000, 60000, 'Sandfury Cretin - Demon Skin'),
(778905, 4, 14032, 0, -1, 0, 0, 100, 1, 0, 0, 15254, 19523, 'Sandfury Cretin - Shadow Word: Pain'),
(778905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Cretin - Attack'),
(778805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Drudge - Attack'),
(778705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Slave - Attack'),
(724705, 4, 7154, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Sandfury Soul Eater - Dark Offering'),
(724705, 3, 11016, 0, -1, 0, 0, 100, 1, 0, 0, 15723, 27201, 'Sandfury Soul Eater - Soul Bite'),
(724705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Soul Eater - Attack'),
(565005, 5, 17843, 0, -1, 0, 0, 100, 1, 0, 0, 17848, 19528, 'Sandfury Witch Doctor - Flash Heal'),
(565005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Witch Doctor - Attack'),
(564905, 3, 11898, 0, -1, 0, 0, 100, 1, 0, 0, 13133, 17780, 'Sandfury Blood Drinker - Blood Leech'),
(564905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Blood Drinker - Attack'),
(564805, 6, 18396, 0, -1, 0, 0, 100, 1, 0, 0, 5000, 5000, 'Sandfury Shadowcaster - Dismounting Blast'),
(564805, 5, 20798, 0, -1, 0, 0, 100, 1, 0, 0, 60000, 60000, 'Sandfury Shadowcaster - Demon Skin'),
(564805, 4, 14032, 0, -1, 0, 0, 100, 1, 0, 0, 15228, 17954, 'Sandfury Shadowcaster - Shadow Word: Pain'),
(564805, 3, 12471, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Shadowcaster - Shadow Bolt'),
(564805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Sandfury Shadowcaster - Attack'),
-- video
(225405, 4, 11976, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 15000, 'Crushridge Mauler - Strike'),
(225405, 3, 6253, 0, -1, 0, 0, 100, 1, 0, 0, 5000, 13000, 'Crushridge Mauler - Backhand'),
(225405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crushridge Mauler - Attack'),

(225505, 4, 6742, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 19000, 'Crushridge Mage - Bloodlust'),
(225505, 3, 9672, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crushridge Mage - Frostbolt'),
(225505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crushridge Mage - Attack'),

(242205, 5, 13730, 0, -1, 0, 0, 100, 1, 0, 0, 11000, 26000, 'Glommus - Demoralizing Shout'),
(242205, 4, 11428, 0, -1, 0, 0, 100, 1, 0, 0, 6000, 19000, 'Glommus - Knockdown'),
(242205, 3, 9128, 0, -1, 0, 0, 100, 1, 0, 0, 36000, 49000, 'Glommus - Battle Shout'),
(242205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Glommus - Attack'),

(242105, 4, 12555, 0, -1, 0, 0, 100, 1, 0, 0, 5000, 9000, 'Muckrake - Pummel'),
(242105, 3, 8379, 0, -1, 0, 0, 100, 1, 0, 0, 19000, 24000, 'Muckrake - Disarm'),
(242105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Muckrake - Attack'),

(228705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crushridge Warmonger - Attack'),

(241705, 5, 4979, 0, -1, 0, 0, 100, 1, 0, 0, 6000, 11000, 'Grel\'borg the Miser - Quick Flame Ward'),
(241705, 4, 11990, 0, -1, 0, 0, 100, 1, 0, 0, 7000, 15000, 'Grel\'borg the Miser - Rain of Fire'),
(241705, 3, 6742, 0, -1, 0, 0, 100, 1, 0, 0, 7000, 10000, 'Grel\'borg the Miser - Bloodlust'),
(241705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Grel\'borg the Miser - Attack'),

(225605, 4, 9791, 0, -1, 0, 0, 100, 1, 0, 0, 7000, 21000, 'Crushridge Enforcer - Head Crack'),
(225605, 3, 7093, 0, -1, 0, 0, 100, 1, 0, 0, 25000, 35000, 'Crushridge Enforcer - Intimidation'),
(225605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Crushridge Enforcer - Attack'),

(225705, 4, 11976, 0, -1, 0, 0, 100, 1, 0, 0, 3000, 10000, 'Mug\'thol - Strike'),
(225705, 3, 13730, 0, -1, 0, 0, 100, 1, 0, 0, 11000, 15000, 'Mug\'thol - Demoralizing Shout'),
(225705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Mug\'thol - Attack'),

(242005, 5, 7366, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Targ - Berserker Stance'),
(242005, 4, 15496, 0, -1, 0, 0, 100, 1, 0, 0, 6000, 10000, 'Targ - Cleave'),
(242005, 3, 8147, 0, -1, 0, 0, 100, 1, 0, 0, 13000, 14000, 'Targ - Thunderclap'),
(242005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Targ - Attack');

