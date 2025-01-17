-- Blackfathom Deeps
UPDATE `creature_template` SET `CharmedSpellList`='481405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4814'; -- https://www.wowhead.com/classic/npc=4814/twilight-elementalist
UPDATE `creature_template` SET `CharmedSpellList`='481305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4813'; -- https://www.wowhead.com/classic/npc=4813/twilight-shadowmage
UPDATE `creature_template` SET `CharmedSpellList`='481105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4811'; -- https://www.wowhead.com/classic/npc=4811/twilight-aquamancer
UPDATE `creature_template` SET `CharmedSpellList`='481205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4812'; -- https://www.wowhead.com/classic/npc=4812/twilight-loreseeker
UPDATE `creature_template` SET `SpellList` = '480901', `CharmedSpellList`='480905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4809'; -- https://www.wowhead.com/classic/npc=4809/twilight-acolyte
UPDATE `creature_template` SET `CharmedSpellList`='481005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4810'; -- https://www.wowhead.com/classic/npc=4810/twilight-reaver
UPDATE `creature_template` SET `CharmedSpellList`='1290205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='12902'; -- https://www.wowhead.com/classic/npc=12902/lorgus-jett
UPDATE `creature_template` SET `CharmedSpellList`='624305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6243'; -- https://www.wowhead.com/classic/npc=6243/gelihast
UPDATE `creature_template` SET `SpellList` = '482001', `CharmedSpellList`='482005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4820'; -- https://www.wowhead.com/classic/npc=4820/blindlight-oracle
UPDATE `creature_template` SET `CharmedSpellList`='481905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4819'; -- https://www.wowhead.com/classic/npc=4819/blindlight-muckdweller
UPDATE `creature_template` SET `CharmedSpellList`='483105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4831'; -- https://www.wowhead.com/classic/npc=4831/lady-sarevess
UPDATE `creature_template` SET `CharmedSpellList`='481505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4815'; -- https://www.wowhead.com/classic/npc=4815/murkshallow-snapclaw
UPDATE `creature_template` SET `CharmedSpellList`='481805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4818'; -- https://www.wowhead.com/classic/npc=4818/blindlight-murloc

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (481405,481305,481105,481205,480905,481005,1290205,624305,482005,481905,483105,481505,481805,480901,482001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(481405, 'Vanilla - Twilight Elementalist', 0, 0),
(481305, 'Vanilla - Twilight Shadowmage', 0, 0),
(481105, 'Vanilla - Twilight Aquamancer', 0, 0),
(481205, 'Vanilla - Twilight Loreseeker', 0, 0),
(480905, 'Vanilla - Twilight Acolyte', 0, 0),
(481005, 'Vanilla - Twilight Reaver', 0, 0),
(1290205, 'Vanilla - Lorgus Jett', 0, 0),
(624305, 'Vanilla - Gelihast', 0, 0),
(482005, 'Vanilla - Blindlight Oracle', 0, 0),
(481905, 'Vanilla - Blindlight Muckdweller', 0, 0),
(483105, 'Vanilla - Lady Sarevess', 0, 0),
(481505, 'Vanilla - Murkshallow Snapclaw', 0, 0),
(481805, 'Vanilla - Blindlight Murloc', 0, 0),
-- LoadCreatureSpellLists: Invalid creature_spell_list 482001 list, spell 9532 has ranged spell flag but ChanceRangedAttack is 0. Skipping.
(480901, 'Blackfathom Deeps - Twilight Acolyte', 75, 0),
(482001, 'Blackfathom Deeps - Blindlight Oracle', 50, 75);

DELETE FROM `creature_spell_list` WHERE `Id` IN (481405,481305,481105,481205,480905,481005,1290205,624305,482005,481905,483105,481505,481805,480901,482001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(481405, 6, 11824, 0, -1, 0, 0, 100, 1, 0, 0, 14438, 23894, 'Twilight Elementalist - Shock'),
(481405, 5, 12548, 0, -1, 0, 0, 100, 1, 0, 0, 5994, 14117, 'Twilight Elementalist - Frost Shock'),
(481405, 4, 15039, 0, -1, 0, 0, 100, 1, 0, 0, 11647, 19706, 'Twilight Elementalist - Flame Shock'),
(481405, 3, 13281, 0, -1, 0, 0, 100, 1, 0, 0, 5632, 13512, 'Twilight Elementalist - Earth Shock'),
(481405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Elementalist - Attack'),
(481305, 3, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Shadowmage - Shadow Bolt'),
(481305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Shadowmage - Attack'),
(481105, 3, 9672, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Aquamancer - Frostbolt'),
(481105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Aquamancer - Attack'),
(481205, 4, 8365, 0, -1, 0, 0, 100, 1, 0, 0, 10006, 13510, 'Twilight Loreseeker - Enlarge'),
(481205, 3, 18972, 0, -1, 0, 0, 100, 1, 0, 0, 11647, 16577, 'Twilight Loreseeker - Slow'), -- LoadCreatureSpellLists: Invalid creature_spell_list 481205 spell 25603 does not exist. Skipping.
(481205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Loreseeker - Attack'),
(480905, 4, 8362, 0, -1, 0, 0, 100, 1, 0, 0, 16315, 19958, 'Twilight Acolyte - Renew'),
(480905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Acolyte - Attack'),
(481005, 3, 8374, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Reaver - Arcing Smash'),
(481005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Twilight Reaver - Attack'),
(1290205, 4, 12550, 0, -1, 0, 0, 100, 1, 0, 0, 18607, 20155, 'Lorgus Jett - Lightning Shield'),
(1290205, 3, 12167, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lorgus Jett - Lightning Bolt'),
(1290205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lorgus Jett - Attack'),
(624305, 4, 6533, 0, -1, 0, 0, 100, 1, 0, 0, 5740, 7930, 'Gelihast - Net'),
(624305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Gelihast - Attack'),
(482005, 4, 8362, 0, -1, 0, 0, 100, 1, 0, 0, 20000, 20000, 'Blindlight Oracle - Renew'),
(482005, 3, 12167, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blindlight Oracle - Lightning Bolt'),
(482005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blindlight Oracle - Attack'),
(481905, 3, 8382, 0, -1, 0, 0, 100, 1, 0, 0, 15034, 25015, 'Blindlight Muckdweller - Leech Poison'),
(481905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blindlight Muckdweller - Attack'),
(483105, 6, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lady Sarevess - Shoot'),
(483105, 5, 246, 0, -1, 0, 0, 100, 1, 0, 0, 8098, 9560, 'Lady Sarevess - Slow'),
(483105, 3, 8435, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lady Sarevess - Forked Lightning'),
(483105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lady Sarevess - Attack'),
(481505, 3, 6713, 0, -1, 0, 0, 100, 1, 0, 0, 31335, 44679, 'Murkshallow Snapclaw - Disarm'),
(481505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Murkshallow Snapclaw - Attack'),
(481805, 3, 11971, 0, -1, 0, 0, 100, 1, 0, 0, 6721, 9291, 'Blindlight Murloc - Sunder Armor'),
(481805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blindlight Murloc - Attack'),

(480901, 3, 2055, 0, -1, 201, 0, 100, 1, 5000, 10000, 3000, 20000, 'Blackfathom Deeps - Twilight Acolyte - Heal on Friendly Missing 50% including self'),
(480901, 4, 8362, 0, -1, 201, 0, 100, 1, 5000, 10000, 10000, 30000, 'Blackfathom Deeps - Twilight Acolyte - Renew on Friendly Missing 50% including self'),
(482001, 0, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Blackfathom Deeps - Blindlight Oracle - Lightning Bolt'),
(482001, 3, 6063, 0, -1, 201, 0, 100, 1, 5000, 20000, 20000, 30000, 'Blackfathom Deeps - Blindlight Oracle - Heal on Friendly Missing 50% including self'),
(482001, 4, 8362, 0, -1, 201, 0, 100, 1, 10000, 30000, 20000, 30000, 'Blackfathom Deeps - Blindlight Oracle - Renew on Friendly Missing 50% including self');

DELETE FROM `dbscript_random_templates` WHERE `id` = 910;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(910, 0, 2406, 0, 'Blackfathom Deeps - Random Aggro Texts'), -- Aku'mai demands more sacrifices, now you must die!
(910, 0, 2407, 0, 'Blackfathom Deeps - Random Aggro Texts'), -- Intruders!  The Hammer shall fall upon you.
(910, 0, 2408, 0, 'Blackfathom Deeps - Random Aggro Texts'), -- The Old Gods will be restored.  You will not be allowed to interfere!
(910, 0, 2409, 0, 'Blackfathom Deeps - Random Aggro Texts'); -- Your blood shall be the catalyst for the Old Gods' return!

