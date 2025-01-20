-- Scarlet Monastery
UPDATE `creature_template` SET `CharmedSpellList`='1285605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='12856'; -- https://www.wowhead.com/classic/npc=12856/ashenvale-outrunner
UPDATE `creature_template` SET `CharmedSpellList`='405405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4054'; -- https://www.wowhead.com/classic/npc=4054/laughing-sister
UPDATE `creature_template` SET `CharmedSpellList`='801505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='8015'; -- https://www.wowhead.com/classic/npc=8015/ashenvale-sentinel
UPDATE `creature_template` SET `CharmedSpellList`='374305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3743'; -- https://www.wowhead.com/classic/npc=3743/foulweald-warrior
UPDATE `creature_template` SET `CharmedSpellList`='374505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3745'; -- https://www.wowhead.com/classic/npc=3745/foulweald-pathfinder
UPDATE `creature_template` SET `CharmedSpellList`='375005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3750'; -- https://www.wowhead.com/classic/npc=3750/foulweald-totemic
UPDATE `creature_template` SET `CharmedSpellList`='398705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3987'; -- https://www.wowhead.com/classic/npc=3987/dal-bloodclaw
UPDATE `creature_template` SET `CharmedSpellList`='392205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3922'; -- https://www.wowhead.com/classic/npc=3922/thistlefur-totemic
UPDATE `creature_template` SET `CharmedSpellList`='392105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3921'; -- https://www.wowhead.com/classic/npc=3921/thistlefur-ursa
UPDATE `creature_template` SET `CharmedSpellList`='1063905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='10639'; -- https://www.wowhead.com/classic/npc=10639/rorgish-jowl
UPDATE `creature_template` SET `CharmedSpellList`='392505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3925'; -- https://www.wowhead.com/classic/npc=3925/thistlefur-avenger
UPDATE `creature_template` SET `CharmedSpellList`='392605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3926'; -- https://www.wowhead.com/classic/npc=3926/thistlefur-pathfinder
UPDATE `creature_template` SET `CharmedSpellList`='392405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3924'; -- https://www.wowhead.com/classic/npc=3924/thistlefur-shaman
UPDATE `creature_template` SET `CharmedSpellList`='1055905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='10559'; -- https://www.wowhead.com/classic/npc=10559/lady-vespia
UPDATE `creature_template` SET `CharmedSpellList`='371705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3717'; -- https://www.wowhead.com/classic/npc=3717/wrathtail-sorceress
UPDATE `creature_template` SET `CharmedSpellList`='371305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='3713'; -- https://www.wowhead.com/classic/npc=3713/wrathtail-wave-rider
UPDATE `creature_template` SET `CharmedSpellList`='480205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4802'; -- https://www.wowhead.com/classic/npc=4802/blackfathom-tide-priestess
UPDATE `creature_template` SET `SpellList` = 480301, `CharmedSpellList`='480305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4803'; -- https://www.wowhead.com/classic/npc=4803/blackfathom-oracle
UPDATE `creature_template` SET `CharmedSpellList`='479905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4799'; -- https://www.wowhead.com/classic/npc=4799/fallenroot-hellcaller
UPDATE `creature_template` SET `CharmedSpellList`='479805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4798'; -- https://www.wowhead.com/classic/npc=4798/fallenroot-shadowstalker
UPDATE `creature_template` SET `CharmedSpellList`='497705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4977'; -- https://www.wowhead.com/classic/npc=4977/murkshallow-softshell
UPDATE `creature_template` SET `CharmedSpellList`='622805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='6228'; -- https://www.wowhead.com/classic/npc=6228/dark-iron-ambassador

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1285605,405405,801505,374305,374505,375005,398705,392205,392105,1063905,392505,392605,392405,1055905,371705,371305,480205,480305,480301,479905,479805,497705,622805);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1285605, 'Vanilla - Ashenvale Outrunner', 0, 0),
(405405, 'Vanilla - Laughing Sister', 0, 0),
(801505, 'Vanilla - Ashenvale Sentinel', 0, 0),
(374305, 'Vanilla - Foulweald Warrior', 0, 0),
(374505, 'Vanilla - Foulweald Pathfinder', 0, 0),
(375005, 'Vanilla - Foulweald Totemic', 0, 0),
(398705, 'Vanilla - Dal Bloodclaw', 0, 0),
(392205, 'Vanilla - Thistlefur Totemic', 0, 0),
(392105, 'Vanilla - Thistlefur Ursa', 0, 0),
(1063905, 'Vanilla - Rorgish Jowl', 0, 0),
(392505, 'Vanilla - Thistlefur Avenger', 0, 0),
(392605, 'Vanilla - Thistlefur Pathfinder', 0, 0),
(392405, 'Vanilla - Thistlefur Shaman', 0, 0),
(1055905, 'Vanilla - Lady Vespia', 0, 0),
(371705, 'Vanilla - Wrathtail Sorceress', 0, 0),
(371305, 'Vanilla - Wrathtail Wave Rider', 0, 0),
(480205, 'Vanilla - Blackfathom Tide Priestess', 0, 0),
(480305, 'Vanilla - Blackfathom Oracle', 0, 0),
(479905, 'Vanilla - Fallenroot Hellcaller', 0, 0),
(479805, 'Vanilla - Fallenroot Shadowstalker', 0, 0),
(497705, 'Vanilla - Murkshallow Softshell', 0, 0),
(622805, 'Vanilla - Dark Iron Ambassador', 0, 0),
(480301, 'Ashenvale - Blackfathom Oracle', 75, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1285605,405405,801505,374305,374505,375005,398705,392205,392105,1063905,392505,392605,392405,1055905,371705,371305,480205,480305,480301,479905,479805,497705,622805);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- CharmedSpellList
(1285605, 6, 8646, 0, -1, 0, 0, 100, 1, 0, 0, 30000, 30000, 'Ashenvale Outrunner - Snap Kick'),
(1285605, 5, 18545, 0, -1, 0, 0, 100, 1, 0, 0, 20000, 20000, 'Ashenvale Outrunner - Scorpid Sting'),
(1285605, 4, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Ashenvale Outrunner - Shoot'),
(1285605, 3, 20540, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Ashenvale Outrunner - Ashenvale Outrunner Sneak'),
(1285605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Ashenvale Outrunner - Attack'),
(405405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Laughing Sister - Attack'),
(801505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Ashenvale Sentinel - Attack'),
(374305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Foulweald Warrior - Attack'),
(374505, 4, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Foulweald Pathfinder - Shoot'),
(374505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Foulweald Pathfinder - Attack'),
(375005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Foulweald Totemic - Attack'),
(398705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Dal Bloodclaw - Attack'),
(392205, 3, 6813, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Totemic - Coat of Thistlefur'),
(392205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Totemic - Attack'),
(392105, 5, 6813, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Ursa - Coat of Thistlefur'),
(392105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Ursa - Attack'),
(1063905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Rorgish Jowl - Attack'),
(392505, 3, 6813, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Avenger - Coat of Thistlefur'),
(392505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Avenger - Attack'),
(392605, 4, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Pathfinder - Shoot'),
(392605, 3, 6813, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Pathfinder - Coat of Thistlefur'),
(392605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Pathfinder - Attack'),
(392405, 5, 6742, 0, -1, 0, 0, 100, 1, 0, 0, 5091, 8804, 'Thistlefur Shaman - Bloodlust'),
(392405, 4, 6813, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Shaman - Coat of Thistlefur'),
(392405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Thistlefur Shaman - Attack'),
(1055905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Lady Vespia - Attack'),
(371705, 4, 11831, 0, -1, 0, 0, 100, 1, 0, 0, 60000, 60000, 'Wrathtail Sorceress - Frost Nova'),
(371705, 3, 20792, 0, -1, 0, 0, 100, 1, 0, 0, 5262, 7540, 'Wrathtail Sorceress - Frostbolt'),
(371705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Wrathtail Sorceress - Attack'),
(371305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Wrathtail Wave Rider - Attack'),
(480205, 4, 2055, 0, -1, 0, 0, 100, 1, 0, 0, 20000, 20000, 'Blackfathom Tide Priestess - Heal'),
(480205, 3, 9672, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blackfathom Tide Priestess - Frostbolt'),
(480205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blackfathom Tide Priestess - Attack'),
(480305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Blackfathom Oracle - Attack'),
-- ('480302','4803','14','0','100','1025','280','40','18000','24000','0','0','11','11986','12','0','0','0','0','0','0','0','0','0','Blackfathom Oracle - Cast Healing Wave on Friendly Missing HP'),
-- ('480303','4803','0','0','100','1025','3000','6000','25000','30000','0','0','11','8363','1','0','0','0','0','0','0','0','0','0','Blackfathom Oracle - Cast Parasite'),
(480301, 0, 8363, 0, -1, 121, 0, 100, 1, 3000, 15000, 15000, 30000, 'Ashenvale - Blackfathom Oracle - Parasite - random player aura not present'),
(480301, 1, 939, 0, -1, 201, 0, 100, 2, 3000, 30000, 18000, 24000, 'Ashenvale - Blackfathom Oracle - Healing Wave - Missing 50% including self'), -- s.11986 tbc+
(479905, 3, 9613, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Fallenroot Hellcaller - Shadow Bolt'),
(479905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Fallenroot Hellcaller - Attack'),
(479805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Fallenroot Shadowstalker - Attack'),
(497705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Murkshallow Softshell - Attack'),
(622805, 5, 184, 0, -1, 0, 0, 100, 1, 0, 0, 5000, 5000, 'Dark Iron Ambassador - Fire Shield II'),
(622805, 4, 9053, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Dark Iron Ambassador - Fireball'),
(622805, 3, 10870, 0, -1, 0, 0, 100, 1, 0, 0, 240000, 240000, 'Dark Iron Ambassador - Summon Burning Servant'),
(622805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Dark Iron Ambassador - Attack');

-- SpellList
UPDATE `creature_spell_list` SET `InitialMin`=0, `RepeatMin`=5000 WHERE `Id`=1285601 AND `SpellId`=8646; -- Ashenvale Outrunner - Snap Kick on Current
UPDATE `creature_spell_list` SET `SpellId`=2055, `Probability` = 2 WHERE `Id`=480201 AND `SpellId`=11642; -- Ashenvale - Blackfathom Tide Priestess - Heal on Friendly Missing 50% including self

-- Missing creature_spell_targeting
DELETE FROM `creature_spell_targeting` WHERE `Id` IN (131,132,133,134);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `UnitCondition`, `Comments`) VALUES
(131, 1, 0, 0, 518, -1, 'Attack - random player mana user aura not present'),
(132, 1, 1, 0, 128, -1, 'Attack - top aggro not in melee range'),
(133, 1, 1, 0, 4, -1, 'Attack - top aggro mana user'),
(134, 1, 1, 0, 32768, -1, 'Attack - top aggro casting');
UPDATE `creature_spell_targeting` SET `Comments`='Hardcoded - eligible friendly dispel - skip self' WHERE `Id`=4; -- wotlk diff

