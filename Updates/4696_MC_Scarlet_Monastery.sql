-- Scarlet Monastery
UPDATE `creature_template` SET `CharmedSpellList`='430605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4306'; -- https://www.wowhead.com/classic/npc=4306/scarlet-torturer
UPDATE `creature_template` SET `CharmedSpellList`='428305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4283'; -- https://www.wowhead.com/classic/npc=4283/scarlet-sentry
UPDATE `creature_template` SET `SpellList` = 430301, `CharmedSpellList`='430305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4303'; -- https://www.wowhead.com/classic/npc=4303/scarlet-abbot
UPDATE `creature_template` SET `SpellList` = 430101, `CharmedSpellList`='430105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4301'; -- https://www.wowhead.com/classic/npc=4301/scarlet-centurion
UPDATE `creature_template` SET `SpellList` = 429401, `CharmedSpellList`='429405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4294'; -- https://www.wowhead.com/classic/npc=4294/scarlet-sorcerer
UPDATE `creature_template` SET `SpellList` = 430001, `CharmedSpellList`='430005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4300'; -- https://www.wowhead.com/classic/npc=4300/scarlet-wizard
UPDATE `creature_template` SET `SpellList` = 429801, `CharmedSpellList`='429805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4298'; -- https://www.wowhead.com/classic/npc=4298/scarlet-defender
UPDATE `creature_template` SET `CharmedSpellList`='429505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4295'; -- https://www.wowhead.com/classic/npc=4295/scarlet-myrmidon
UPDATE `creature_template` SET `SpellList` = 429201, `CharmedSpellList`='429205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4292'; -- https://www.wowhead.com/classic/npc=4292/scarlet-protector
UPDATE `creature_template` SET `SpellList` = 429001, `CharmedSpellList`='429005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4290'; -- https://www.wowhead.com/classic/npc=4290/scarlet-guardsman
UPDATE `creature_template` SET `SpellList` = 428901, `CharmedSpellList`='428905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4289'; -- https://www.wowhead.com/classic/npc=4289/scarlet-evoker
UPDATE `creature_template` SET `SpellList` = 429701, `CharmedSpellList`='429705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4297'; -- https://www.wowhead.com/classic/npc=4297/scarlet-conjuror
UPDATE `creature_template` SET `SpellList` = 428601, `CharmedSpellList`='428605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4286'; -- https://www.wowhead.com/classic/npc=4286/scarlet-soldier
UPDATE `creature_template` SET `SpellList` = 429901, `CharmedSpellList`='429905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4299'; -- https://www.wowhead.com/classic/npc=4299/scarlet-chaplain
UPDATE `creature_template` SET `SpellList` = 429101, `CharmedSpellList`='429105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4291'; -- https://www.wowhead.com/classic/npc=4291/scarlet-diviner
UPDATE `creature_template` SET `SpellList` = 454001, `CharmedSpellList`='454005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4540'; -- https://www.wowhead.com/classic/npc=4540/scarlet-monk
UPDATE `creature_template` SET `SpellList` = 428801, `CharmedSpellList`='428805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4288'; -- https://www.wowhead.com/classic/npc=4288/scarlet-beastmaster
UPDATE `creature_template` SET `SpellList` = 429601, `CharmedSpellList`='429605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4296'; -- https://www.wowhead.com/classic/npc=4296/scarlet-adept
UPDATE `creature_template` SET `SpellList` = 428701, `CharmedSpellList`='428705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4287'; -- https://www.wowhead.com/classic/npc=4287/scarlet-gallant
UPDATE `creature_template` SET `CharmedSpellList`='657505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6575'; -- https://www.wowhead.com/classic/npc=6575/scarlet-trainee
UPDATE `creature_template` SET `SpellList` = 430201, `CharmedSpellList`='430205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4302'; -- https://www.wowhead.com/classic/npc=4302/scarlet-champion
UPDATE `creature_template` SET `SpellList` = 429301, `CharmedSpellList`='429305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4293'; -- https://www.wowhead.com/classic/npc=4293/scarlet-scryer
UPDATE `creature_template` SET `SpellList` = 398301, `CharmedSpellList`='398305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3983'; -- https://www.wowhead.com/classic/npc=3983/interrogator-vishas

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (430605,428305,430305,430105,429405,430005,429805,429505,429205,429005,428905,429705,428605,429905,429105,454005,428805,429605,428705,657505,430205,429305,398305,
430301,430101,429401,430001,429801,429201,429001,428901,429701,428601,429901,429101,454001,428801,429601,428701,430201,429301,398301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(430605, 'Vanilla - Scarlet Torturer', 0, 0),
(428305, 'Vanilla - Scarlet Sentry', 0, 0),
(430305, 'Vanilla - Scarlet Abbot', 0, 0),
(430105, 'Vanilla - Scarlet Centurion', 0, 0),
(429405, 'Vanilla - Scarlet Sorcerer', 0, 0),
(430005, 'Vanilla - Scarlet Wizard', 0, 0),
(429805, 'Vanilla - Scarlet Defender', 0, 0),
(429505, 'Vanilla - Scarlet Myrmidon', 0, 0),
(429205, 'Vanilla - Scarlet Protector', 0, 0),
(429005, 'Vanilla - Scarlet Guardsman', 0, 0),
(428905, 'Vanilla - Scarlet Evoker', 0, 0),
(429705, 'Vanilla - Scarlet Conjuror', 0, 0),
(428605, 'Vanilla - Scarlet Soldier', 0, 0),
(429905, 'Vanilla - Scarlet Chaplain', 0, 0),
(429105, 'Vanilla - Scarlet Diviner', 0, 0),
(454005, 'Vanilla - Scarlet Monk', 0, 0),
(428805, 'Vanilla - Scarlet Beastmaster', 0, 0),
(429605, 'Vanilla - Scarlet Adept', 0, 0),
(428705, 'Vanilla - Scarlet Gallant', 0, 0),
(657505, 'Vanilla - Scarlet Trainee', 0, 0),
(430205, 'Vanilla - Scarlet Champion', 0, 0),
(429305, 'Vanilla - Scarlet Scryer', 0, 0),
(398305, 'Vanilla - Interrogator Vishas', 0, 0),
-- SpellList
(430301, 'Scarlet Monastery - Scarlet Abbot', 75, 0),
(430101, 'Scarlet Monastery - Scarlet Centurion', 0, 0),
(429401, 'Scarlet Monastery - Scarlet Sorcerer', 0, 75),
(430001, 'Scarlet Monastery - Scarlet Wizard', 0, 0),
(429801, 'Scarlet Monastery - Scarlet Defender', 0, 0),
(429201, 'Scarlet Monastery - Scarlet Protector', 75, 0),
(429001, 'Scarlet Monastery - Scarlet Guardsman', 0, 0),
(428901, 'Scarlet Monastery - Scarlet Evoker', 50, 75),
(429701, 'Scarlet Monastery - Scarlet Conjuror', 0, 75),
(428601, 'Scarlet Monastery - Scarlet Soldier', 0, 0),
(429901, 'Scarlet Monastery - Scarlet Chaplain', 75, 0),
(429101, 'Scarlet Monastery - Scarlet Diviner', 0, 75),
(454001, 'Scarlet Monastery - Scarlet Monk', 0, 0),
(428801, 'Scarlet Monastery - Scarlet Beastmaster', 0, 75),
(429601, 'Scarlet Monastery - Scarlet Adept', 50, 75),
(428701, 'Scarlet Monastery - Scarlet Gallant', 0, 0),
(430201, 'Scarlet Monastery - Scarlet Champion', 0, 0),
(429301, 'Scarlet Monastery - Scarlet Scryer', 0, 75),
(398301, 'Scarlet Monastery - Interrogator Vishas', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (430605,428305,430305,430105,429405,430005,429805,429505,429205,429005,428905,429705,428605,429905,429105,454005,428805,429605,428705,657505,430205,429305,398305,
430301,430101,429401,430001,429801,429201,429001,428901,429701,428601,429901,429101,454001,428801,429601,428701,430201,429301,398301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- CharmedSpellList
(430605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Torturer - Attack'),
(428305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Sentry - Attack'),
(430305, 5, 8362, 0, -1, 0, 0, 100, 1, 0, 0, 6000, 20000, 'Scarlet Abbot - Renew'),
(430305, 4, 12039, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Scarlet Abbot - Heal'),
(430305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Abbot - Attack'),
(430105, 3, 6192, 0, -1, 0, 0, 100, 1, 0, 0, 10626, 19814, 'Scarlet Centurion - Battle Shout'), -- 31403
(430105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Centurion - Attack'),
(429405, 5, 20819, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Sorcerer - Frostbolt'),
(429405, 4, 6146, 0, -1, 0, 0, 100, 1, 0, 0, 12478, 13866, 'Scarlet Sorcerer - Slow'),
(429405, 3, 8364, 0, -1, 0, 0, 100, 1, 0, 0, 16398, 18893, 'Scarlet Sorcerer - Blizzard'),
(429405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Sorcerer - Attack'),
(430005, 4, 2601, 0, -1, 0, 0, 100, 1, 0, 0, 17641, 18673, 'Scarlet Wizard - Fire Shield'), -- 32749
(430005, 3, 8439, 0, -1, 0, 0, 100, 1, 0, 0, 3000, 3000, 'Scarlet Wizard - Arcane Explosion'), -- 34517
(430005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Wizard - Attack'),
(429805, 5, 3639, 0, -1, 0, 0, 100, 1, 0, 0, 8601, 11729, 'Scarlet Defender - Improved Blocking'),
(429805, 3, 11972, 0, -1, 0, 0, 100, 1, 0, 0, 8684, 11631, 'Scarlet Defender - Shield Bash'),
(429805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Defender - Attack'),
(429505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Myrmidon - Attack'),
(429205, 4, 8258, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Protector - Devotion Aura'),
(429205, 3, 3472, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Scarlet Protector - Holy Light'), -- 31713
(429205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Protector - Attack'),
(429005, 3, 6713, 0, -1, 0, 0, 100, 1, 0, 0, 13865, 18908, 'Scarlet Guardsman - Disarm'),
(429005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Guardsman - Attack'),
(428905, 5, 20296, 0, -1, 0, 0, 100, 1, 0, 0, 18805, 29766, 'Scarlet Evoker - Flamestrike'),
(428905, 4, 18968, 0, -1, 0, 0, 100, 1, 0, 0, 10008, 12774, 'Scarlet Evoker - Fire Shield'),
(428905, 3, 20815, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Evoker - Fireball'),
(428905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Evoker - Attack'),
(429705, 4, 20823, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Conjuror - Fireball'),
(429705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Conjuror - Attack'),
(428605, 3, 3639, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Scarlet Soldier - Improved Blocking'),
(428605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Soldier - Attack'),
(429905, 5, 25058, 0, -1, 0, 0, 100, 1, 0, 0, 16635, 19569, 'Scarlet Chaplain - Renew'),
(429905, 4, 22187, 0, -1, 0, 0, 100, 1, 0, 0, 8401, 9693, 'Scarlet Chaplain - Power Word: Shield'),
(429905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Chaplain - Attack'),
(429105, 4, 11981, 0, -1, 0, 0, 100, 1, 0, 0, 8506, 9013, 'Scarlet Diviner - Mana Burn'),
(429105, 3, 20815, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Diviner - Fireball'),
(429105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Diviner - Attack'),
(454005, 5, 11978, 0, -1, 0, 0, 100, 1, 0, 0, 3442, 6927, 'Scarlet Monk - Kick'), -- 76583
(454005, 4, 3391, 0, -1, 0, 0, 100, 1, 0, 0, 8131, 11556, 'Scarlet Monk - Thrash'),
(454005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Monk - Attack'),
(428805, 4, 7896, 0, -1, 0, 0, 100, 1, 0, 0, 8187, 9598, 'Scarlet Beastmaster - Exploding Shot'),
(428805, 3, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Beastmaster - Shoot'),
(428805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Beastmaster - Attack'),
(429605, 4, 20820, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Adept - Holy Smite'),
(429605, 3, 11642, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Scarlet Adept - Heal'),
(429605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Adept - Attack'),
(428705, 4, 5589, 0, -1, 0, 0, 100, 1, 0, 0, 12407, 14387, 'Scarlet Gallant - Hammer of Justice'), -- 77787
(428705, 3, 14517, 0, -1, 0, 0, 100, 1, 0, 0, 4148, 5552, 'Scarlet Gallant - Crusader Strike'),
(428705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Gallant - Attack'),
(657505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Trainee - Attack'),
(430205, 3, 17143, 0, -1, 0, 0, 100, 1, 0, 0, 6025, 16864, 'Scarlet Champion - Holy Strike'),
(430205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Champion - Attack'),
(429305, 4, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Scryer - Shadow Bolt'),
(429305, 3, 1090, 0, -1, 0, 0, 100, 1, 0, 0, 17545, 22391, 'Scarlet Scryer - Sleep'), -- 77773
(429305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Scryer - Attack'),
(398305, 5, 14032, 0, -1, 0, 0, 100, 1, 0, 0, 6074, 7877, 'Interrogator Vishas - Shadow Word: Pain'),
(398305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Interrogator Vishas - Attack'),
-- SpellList
(430301, 4, 6064, 0, -1, 201, 0, 100, 1, 5000, 20000, 10000, 30000, 'Scarlet Abbot - Heal on Friendly Missing 50% including self'),
(430301, 5, 8362, 0, -1, 201, 0, 100, 1, 5000, 20000, 10000, 30000, 'Scarlet Abbot - Renew on Friendly Missing 50% including self'),

(430101, 3, 6192, 0, -1, 0, 0, 100, 1, 4800, 18000, 10000, 24600, 'Scarlet Centurion - Battle Shout'), -- s.31403 tbc+

(429401, 5, 9672, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Scarlet Sorcerer - Frostbolt'),
(429401, 4, 6146, 0, -1, 130, 0, 100, 1, 5000, 20000, 15000, 30000, 'Scarlet Sorcerer - Slow - top aggro aura not present'),

(430001, 4, 2601, 0, -1, 5, 0, 100, 1, 0, 10000, 15000, 30000, 'Scarlet Wizard - Fire Shield - eligible friendly missing buff'),
(430001, 3, 8439, 0, -1, 103, 0, 100, 2, 0, 10000, 1000, 10000, 'Scarlet Wizard - Arcane Explosion - AOE eligible target exists - not passed to cast'),

(429801, 1, 7164, 0, -1, 0, 0, 100, 1, 0, 6600, 180000, 180000, 'Scarlet Defender - Defensive Stance'),
(429801, 5, 3639, 0, -1, 0, 0, 100, 1, 4000, 20000, 6000, 20000, 'Scarlet Defender - Improved Blocking'),
(429801, 3, 11972, 0, -1, 1, 0, 100, 1, 0, 20000, 6000, 18000, 'Scarlet Defender - Shield Bash'),

(429201, 4, 8258, 0, -1, 0, 0, 100, 1, 0, 10000, 240000, 250000, 'Scarlet Protector - Devotion Aura'),
(429201, 3, 3472, 0, -1, 201, 0, 100, 1, 0, 10000, 10000, 20000, 'Scarlet Protector - Holy Light - on friendly missing 50% including self'), -- s.31713 tbc+

(429001, 1, 7164, 0, -1, 0, 0, 100, 1, 0, 6600, 180000, 180000, 'Scarlet Guardsman - Defensive Stance'),
(429001, 3, 676, 0, -1, 1, 0, 100, 1, 6000, 18000, 14200, 25200, 'Scarlet Guardsman - Disarm'), -- s.6713 tbc+

(428901, 5, 8422, 0, -1, 100, 0, 100, 1, 14400, 14400, 22900, 27700, 'Scarlet Evoker - Flamestrike'),
(428901, 4, 2601, 0, -1, 5, 0, 100, 1, 0, 10000, 15000, 30000, 'Scarlet Evoker - Fire Shield - eligible friendly missing buff'),
(428901, 3, 9053, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Scarlet Evoker - Fireball'),

(429701, 4, 9053, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Scarlet Conjuror - Fireball'),

(428601, 3, 3639, 0, -1, 1, 0, 100, 1, 0, 10000, 10000, 21700, 'Scarlet Soldier - Improved Blocking'),

(429901, 5, 8362, 0, -1, 201, 0, 100, 1, 0, 20000, 10000, 30000, 'Scarlet Chaplain - Renew on Friendly Missing 50% including self'),
(429901, 4, 6066, 0, -1, 5, 0, 100, 1, 0, 10000, 6000, 28000, 'Scarlet Chaplain - Power Word: Shield - eligible friendly missing buff'),

(429101, 4, 8131, 0, -1, 105, 0, 100, 1, 0, 10000, 8506, 9013, 'Scarlet Diviner - Mana Burn - on random player mana user'),
(429101, 3, 9053, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Scarlet Diviner - Fireball'),

(454001, 5, 11978, 0, -1, 1, 0, 100, 1, 0, 10000, 3000, 18000, 'Scarlet Monk - Kick'),
(454001, 4, 3391, 0, -1, 0, 0, 100, 1, 5000, 20000, 5000, 20000, 'Scarlet Monk - Thrash'),

(428801, 4, 7896, 0, -1, 0, 0, 100, 1, 7000, 21000, 10000, 23000, 'Scarlet Beastmaster - Exploding Shot'),
(428801, 3, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Scarlet Beastmaster - Shoot'),

(429601, 4, 9734, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Scarlet Adept - Holy Smite'),
(429601, 3, 6063, 0, -1, 201, 0, 100, 1, 0, 20000, 10000, 30000, 'Scarlet Adept - Heal on Friendly Missing 50% including self'),

(428701, 4, 5589, 0, -1, 1, 0, 100, 1, 5000, 20000, 60000, 60000, 'Scarlet Gallant - Hammer of Justice'),
(428701, 3, 14517, 0, -1, 1, 0, 100, 1, 0, 10000, 2000, 20000, 'Scarlet Gallant - Crusader Strike'),

(430201, 3, 17143, 0, -1, 1, 0, 100, 1, 7000, 21000, 7000, 28000, 'Scarlet Champion - Holy Strike'),

(429301, 4, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Scarlet Scryer - Shadow Bolt'),
(429301, 3, 1090, 0, -1, 0, 0, 100, 1, 9000, 18000, 30000, 35000, 'Scarlet Scryer - Sleep'),

(398301, 5, 2767, 0, -1, 121, 0, 100, 1, 0, 10000, 5000, 15000, 'Interrogator Vishas - Shadow Word: Pain - random player aura not present');

-- https://www.wowhead.com/classic/npc=4303/scarlet-abbot#comments;mode:normal
-- https://www.youtube.com/watch?v=gCDMtHt-MsA&ab_channel=Aezyria
-- https://www.youtube.com/watch?v=crzKSKmA4po&ab_channel=RobertRambles
-- https://www.youtube.com/watch?v=leLDeIh3Vqo&ab_channel=DannyGaminGnC
-- ('454305','4543','0','0','100','1025','13100','21400','38200','57700','0','0','11','8814','1','0','0','0','0','0','0','0','0','0','Bloodmage Thalnos - Cast Flame Spike'),
-- ('454306','4543','0','0','100','1025','10600','16800','11300','23200','0','0','11','12470','17','1024','0','0','0','0','0','0','0','0','Bloodmage Thalnos - Cast Fire Nova'),
-- ('454307','4543','0','0','100','1025','9700','24100','8400','15700','0','0','11','8053','1','0','0','0','0','0','0','0','0','0','Bloodmage Thalnos - Cast Flame Shock'),
-- ('454308','4543','0','0','100','1281','0','0','3600','4800','0','0','11','9613','1','256','0','0','0','0','0','0','0','0','Bloodmage Thalnos - Cast Shadow Bolt (Range Mode)'),
-- ('454309','4543','0','0','100','1537','0','0','5000','10000','0','0','11','9613','1','256','0','0','0','0','0','0','0','0','Bloodmage Thalnos - Cast Shadow Bolt (Melee Mode)'),
 -- (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`)
UPDATE `creature_spell_list` SET `InitialMin` = 10000, `InitialMax` = 35000, `RepeatMin` = 30000, `RepeatMax` = 60000, `Probability` = 4 WHERE `Id` = 454301 AND `SpellId` = 8814; -- Scarlet Monastery - Bloodmage Thalnos - Flame Spike
UPDATE `creature_spell_list` SET `InitialMin` = 5000, `InitialMax` = 20000, `RepeatMin` = 10000, `RepeatMax` = 20000, `Probability` = 3, `TargetId` = 103 WHERE `Id` = 454301 AND `SpellId` = 12470; -- Scarlet Monastery - Bloodmage Thalnos - Fire Nova
UPDATE `creature_spell_list` SET `InitialMin` = 4000, `InitialMax` = 16000, `RepeatMin` = 6000, `RepeatMax` = 30000, `Probability` = 2, `TargetId` = 121 WHERE `Id` = 454301 AND `SpellId` = 8053; -- Scarlet Monastery - Bloodmage Thalnos - Flame Shock (Rank 3)
UPDATE `creature_spell_list` SET `InitialMin` = 0, `InitialMax` = 0, `RepeatMin` = 0, `RepeatMax` = 0, `Probability` = 1 WHERE `Id` = 454301 AND `SpellId` = 9613; -- Scarlet Monastery - Bloodmage Thalnos - Shadow Bolt

