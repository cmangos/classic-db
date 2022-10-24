-- Add your query below.
-- https://github.com/lh-server/core/commit/119dac1e342226556168b0cf73945ee0b405b961

-- Spirestone faction
UPDATE `creature_template` SET `faction`=40 WHERE `entry` = 9218; -- Spirestone Battle Lord 14

-- Fire mobs immunities
-- https://github.com/elysium-project/server/issues/2716
UPDATE `creature_template` SET `MechanicImmuneMask`= MechanicImmuneMask | 25090 -- MECHANIC_DISORIENTED MECHANIC_SLEEP MECHANIC_KNOCKOUT MECHANIC_BLEED 
WHERE entry IN (575,2745,2760,3417,4036,4037,4038,5850,5852,5893,5896,6520,6521,7266,7738,8281,8909,8910,8911,9026,9178,9376,9878,9879,14460,14461,15209,17003);
UPDATE `creature_template` SET `SchoolImmuneMask` = `SchoolImmuneMask`|4 WHERE `entry` IN ( -- missing fire immunity, confirmed with trugge research <3
3417, -- Living Flame 0
4037, -- Burning Ravager 0
5896, -- Fire Spirit 0
9026, -- Overmaster Pyron 0
9178, -- Burning Spirit 0
9376, -- Blazerunner 0
9879, -- Entropic Horror 0
15209, -- Crimson Templar 0
17003 -- Cinder Elemental 0
);
-- this guy has more extensive immunities
UPDATE `creature_template` SET `MechanicImmuneMask` = 42106738 WHERE `entry` = 9026; -- Overmaster Pyron

-- classicmangos only! diffed with vmangos race condition drops
-- Vek'nilash and Viscidus loot
-- https://github.com/elysium-project/server/issues/1133
UPDATE `creature_loot_template` SET `condition_id`=3 WHERE `item` IN (21624,21607); -- one is shaman gear, so horde/alliance condition_id
UPDATE `creature_loot_template` SET `condition_id`=4 WHERE `item` IN (21606,21623); -- one is paladin gear, so horde/alliance condition_id
UPDATE `creature_loot_template` SET `condition_id`=4 WHERE `item` = 21889; -- https://www.wowhead.com/tbc/item=21889/gloves-of-the-redeemed-prophecy
UPDATE `creature_loot_template` SET `condition_id`=4 WHERE `item` IN (23668,23667,23666); -- paladin naxx gear
UPDATE `creature_loot_template` SET `condition_id`=3 WHERE `item` IN (23663,23664,23665); -- not 100% sure about 23663, but makes it even, shaman naxx gear - https://www.wowhead.com/classic/item=23664/pauldrons-of-elemental-fury#comments:id=2698041

-- Pink Mageweave Shirt
-- https://github.com/elysium-project/server/issues/2994
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 2 WHERE `entry`=8681 AND `item`=10314; -- Pattern: Lavender Mageweave Shirt 2
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 1 WHERE `entry`=8681 AND `item`=10317; -- Pattern: Pink Mageweave Shirt 1
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 3 WHERE `entry`=8681 AND `item`=10321; -- Pattern: Tuxedo Shirt 3
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 4 WHERE `entry`=8681 AND `item`=10323; -- Pattern: Tuxedo Pants 4
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 5 WHERE `entry`=8681 AND `item`=10326; -- Pattern: Tuxedo Jacket 5
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 2 WHERE `entry`=4577 AND `item`=5772; -- Pattern: Red Woolen Bag 2
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 1 WHERE `entry`=4577 AND `item`=6275; -- Pattern: Greater Adept's Robe 1
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 3 WHERE `entry`=4577 AND `item`=10321; -- Pattern: Tuxedo Shirt 3
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 4 WHERE `entry`=4577 AND `item`=10323; -- Pattern: Tuxedo Pants 4
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600, `slot` = 5 WHERE `entry`=4577 AND `item`=10326; -- Pattern: Tuxedo Jacket 5

-- https://www.wowhead.com/tbc/npc=11658/molten-giant ~21.6 -> ~3.6 old (6.7% vmangos, 6.42% cmangos) - https://web.archive.org/web/20080424011002/http://wow.allakhazam.com/db/mob.html?wmob=11658
-- https://www.wowhead.com/tbc/npc=11659/molten-destroyer ~14.4 -> ~3.6 old (7.2% vmangos, 6.76% cmangos) - https://web.archive.org/web/20080424011007/http://wow.allakhazam.com/db/mob.html?wmob=11659
-- https://www.wowhead.com/tbc/npc=11661/flamewaker ~32.4 -> ~3.6 old (5.72% vmangos, 5.4% cmangos) - https://web.archive.org/web/20080506005236/http://wow.allakhazam.com/db/mob.html?wmob=11661
-- https://www.wowhead.com/tbc/npc=11662/flamewaker-priest ~30.6 -> ~3.6 old (5.69% vmangos, 5.35% cmangos) - https://web.archive.org/web/20080506005242/http://wow.allakhazam.com/db/mob.html?wmob=11662
-- https://www.wowhead.com/tbc/npc=11663/flamewaker-healer 19.8 -> ~2.7 old (4.16% vmangos, 4.11% cmangos) - https://web.archive.org/web/20080421224044/http://wow.allakhazam.com/db/mob.html?wmob=11663
-- https://www.wowhead.com/tbc/npc=11664/flamewaker-elite 27 -> ~ 3.6 old (6.44% vmangos, 6.16% cmangos) - https://web.archive.org/web/20080421211838/http://wow.allakhazam.com/db/mob.html?wmob=11664
-- https://www.wowhead.com/tbc/npc=11665/lava-annihilator 12.6 -> 2.16 old (2.17% vmangos, 2.06% cmangos) - https://web.archive.org/web/20080422224718/http://wow.allakhazam.com/db/mob.html?wmob=11665
-- https://www.wowhead.com/tbc/npc=11666/firewalker 10.8 -> ~ 3.6 old (6.12% vmangos, 5.76% cmangos) - https://web.archive.org/web/20080505213726/http://wow.allakhazam.com/db/mob.html?wmob=11666
-- https://www.wowhead.com/tbc/npc=11667/flameguard 10.8 -> ~ 3.6 old (6.64% vmangos, 6.48% cmangos) - https://web.archive.org/web/20080506005247/http://wow.allakhazam.com/db/mob.html?wmob=11667
-- https://www.wowhead.com/tbc/npc=11668/firelord 14.4 -> ~ 3.24 old (5.7% vmangos, 5.44% cmangos) - https://web.archive.org/web/20080505194504/http://wow.allakhazam.com/db/mob.html?wmob=11668
-- https://www.wowhead.com/tbc/npc=11673/ancient-core-hound 36% -> ~3.6% old (5.98% vmangos, 5.68% cmangos) - https://web.archive.org/web/20080416225833/http://wow.allakhazam.com/db/mob.html?wmob=11673
-- https://www.wowhead.com/tbc/npc=12076/lava-elemental 9 -> ~2.16% old (3.78% vmangos, 3.62% cmangos) - https://web.archive.org/web/20080502220244/http://wow.allakhazam.com/db/mob.html?wmob=12076
-- https://www.wowhead.com/tbc/npc=12100/lava-reaver 14.4 -> ~ 3.6 old (5.44% vmangos, 5.18% cmangos) - https://web.archive.org/web/20080430111617/http://wow.allakhazam.com/db/mob.html?wmob=12100
-- https://www.wowhead.com/tbc/npc=12101/lava-surger 16.2 -> ~2.16% old (4.32% vmangos, 4.14% cmangos) - https://web.archive.org/web/20080422224728/http://wow.allakhazam.com/db/mob.html?wmob=12101
-- https://www.wowhead.com/tbc/npc=12119/flamewaker-protector 30.6 -> ~ 3.6 old (6.28% vmangos, 5.95% cmangos) - https://web.archive.org/web/20080506005312/http://wow.allakhazam.com/db/mob.html?wmob=12119
DELETE FROM `creature_loot_template` WHERE `item` IN (16799,16802,16804,16806,16817,16819,16825,16827,16828,16830,16838,16840,16850,16851,16857,16858,16861,16864,34012)
AND `entry` IN (11658,11659,11661,11662,11663,11664,11665,11666,11667,11668,11673,12076,12100,12101,12119);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES -- name all values / 4
(11665, 34012, 4.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Lava Annihilator 5
(12076, 34012, 4.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Lava Elemental 5
(12101, 34012, 4.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Lava Surger 7
(12100, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Lava Reaver 8
(11666, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Firewalker 7
(11667, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flameguard 7
(11668, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Firelord 7
(11658, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Molten Destroyer 10
(11659, 34012, 9, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Molten Destroyer 8
-- https://www.wowhead.com/tbc/npc=11664/flamewaker-elite#comments:id=2913191
-- They do drop boe epics eg aranist 1st time we downed domo 4 out of 8 adds dropd tier 1 braces / belts
(11661, 34012, 13.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flamewaker 12
(11662, 34012, 13.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flamewaker Priest 12
(11663, 34012, 13.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flamewaker Healer 8
(11664, 34012, 13.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flamewaker Elite 11
(12119, 34012, 13.5, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'), -- Flamewaker Protector 12
(11673, 34012, 18, 1, -34012, 1, 0, 'Molten Core Epic Items (T1 Bracers & Belt)'); -- Ancient Core Hound 13

DELETE FROM `reference_loot_template_names` WHERE `entry` = 34012; -- 34011	 (Boss Loot) - Epic Patterns
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (34012, 'Molten Core Epic Items (T1 Bracers & Belt)');

DELETE FROM `reference_loot_template` WHERE `entry` = 34012;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34012, 16817, 0, 1, 1, 1, 0, 'Girdle of Prophecy'),
(34012, 16819, 0, 1, 1, 1, 0, 'Vambraces of Prophecy'),
(34012, 16799, 0, 1, 1, 1, 0, 'Arcanist Bindings'),
(34012, 16802, 0, 1, 1, 1, 0, 'Arcanist Belt'),
(34012, 16804, 0, 1, 1, 1, 0, 'Felheart Bracers'),
(34012, 16806, 0, 1, 1, 1, 0, 'Felheart Belt'),
(34012, 16825, 0, 1, 1, 1, 0, 'Nightslayer Bracelets'),
(34012, 16827, 0, 1, 1, 1, 0, 'Nightslayer Belt'),
(34012, 16828, 0, 1, 1, 1, 0, 'Cenarion Belt'),
(34012, 16830, 0, 1, 1, 1, 0, 'Cenarion Bracers'),
(34012, 16850, 0, 1, 1, 1, 0, 'Giantstalker\'s Bracers'),
(34012, 16851, 0, 1, 1, 1, 0, 'Giantstalker\'s Belt'),
(34012, 16861, 0, 1, 1, 1, 0, 'Bracers of Might'),
(34012, 16864, 0, 1, 1, 1, 0, 'Belt of Might'),
(34012, 16838, 0, 1, 1, 1, 3, 'Earthfury Belt'), -- condition 3:	6	67	0	0	0	0	Horde Player in classicmangos
(34012, 16840, 0, 1, 1, 1, 3, 'Earthfury Bracers'), -- condition 3:	6	67	0	0	0	0	Horde Player in classicmangos
(34012, 16857, 0, 1, 1, 1, 4, 'Lawbringer Bracers'), -- condition 4:	6	469	0	0	0	0	Alliance Player in classicmangos
(34012, 16858, 0, 1, 1, 1, 4, 'Lawbringer Belt'); -- condition 4:	6	469	0	0	0	0	Alliance Player in classicmangos

-- Tameable pets remove immunities, update with trugge research
UPDATE `creature_template` SET `MechanicImmuneMask`= 0 WHERE `entry` = 3653; -- Kresh (8388625)
UPDATE `creature_template` SET `MechanicImmuneMask`= 0 WHERE `entry` = 4425; -- Blind Hunter (8388625) - no data available yet, data taken from Kraul Bat ID 4538
UPDATE `creature_template` SET `MechanicImmuneMask`= 0 WHERE `entry` = 4887; -- Ghamoo-ra (76234719)
UPDATE `creature_template` SET `MechanicImmuneMask`= 0 WHERE `entry` = 5708; -- Spawn of Hakkar (76234719)

-- Improve Dropchance for i.18972,18969 - item is unique so always back and forth, also has either quest or race conditions
-- https://www.wowhead.com/classic/item=18972/perfect-yeti-hide#comments:id=3071366
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` IN (5299,5297,5296) AND `item` IN (18972,18969); -- 25

-- Move back to gameobject_loot_template
-- https://web.archive.org/web/20060614134429/http://wow.allakhazam.com/db/object.html?wobject=457
-- https://www.wowhead.com/tbc/object=180228/jinxed-hoodoo-pile
-- https://www.wowhead.com/tbc/object=180229/jinxed-hoodoo-pile
-- 180228	Jinxed Hoodoo Pile	17259
-- 180229	Jinxed Hoodoo Pile	17259
DELETE FROM `reference_loot_template` WHERE `entry` = 17259;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 17259; -- 17259	Punctured Voodoo Doll (180228/180229)
DELETE FROM `gameobject_loot_template` WHERE `entry` = 17259;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17259, 14047, 10, 1, 2, 5, 0, 'Runecloth'), -- 15
(17259, 19727, 22.5, 1, 1, 1, 0, 'Blood Scythe'), -- 20
(17259, 19813, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19814, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19815, 0, 1, 1, 1, 4, 'Punctured Voodoo Doll'), -- condition 4:	6	469	0	0	0	0	Alliance Player in classicmangos
(17259, 19816, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19817, 0, 1, 1, 1, 3, 'Punctured Voodoo Doll'), -- condition 3:	6	67	0	0	0	0	Horde Player in classicmangos
(17259, 19818, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19819, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19820, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll'),
(17259, 19821, 0, 1, 1, 1, 0, 'Punctured Voodoo Doll');

-- https://web.archive.org/web/20060331161713/http://wow.allakhazam.com/db/item.html?witem=2839 - ReqRace = 690, Horde Quest
-- https://www.wowhead.com/tbc/item=2839/a-letter-to-yvette#comments:id=2674786 - Subject: "Whoops!"I actually found this as my Night Elf druid (33 at the time) west of Brill. Was kind of funny, wish I was eligible for the quest...told me I wasn't the correct race.
DELETE FROM `creature_loot_template` WHERE `entry` IN (1520,1522,1523,1532,1530,1537,1548,1770,1664) AND `item` = 2839;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1520, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 6-7
(1522, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 7-8
(1523, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 8-9
(1664, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 11
(1770, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 11-12
(1548, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 7-8
(1537, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 8-9
(1530, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'), -- 10-11
(1532, 2839, 2.5, 0, 1, 1, 9028, 'A Letter to Yvette'); -- 10-11

-- race not a drop condition, but alliance players dont farm these mobs, not having done/taken the quest seems the most likely dropcondition
DELETE FROM `conditions` WHERE `condition_entry` = 9028; -- https://www.wowhead.com/tbc/item=2839/a-letter-to-yvette#comments:id=132342
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9028, 22, 361, 0, 0, 0, 0, 'Quest ID 361 NOT Taken AND NOT Rewarded');

-- missing in tbcmangos and classicmangos, exists in wotlk without condition, chance falls off for horde players that have done the quest and rekill the mob.
-- https://www.wowhead.com/tbc/item=5138/harvesters-head#comments:id=106875
-- This item drops for Alliance players, but they are unable to start the quest.
DELETE FROM `creature_loot_template` WHERE `entry` = 3253 AND `item` = 5138;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3253, 5138, 100, 0, 1, 1, 9029, 'Harvester\'s Head');

DELETE FROM `conditions` WHERE `condition_entry` = 9029; -- https://www.wowhead.com/tbc/item=5138/harvesters-head
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9029, 22, 897, 0, 0, 0, 0, 'Quest ID 897 NOT Taken AND NOT Rewarded');

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5, `condition_id` = 9030 WHERE `item` = 20310 AND `entry` IN (4663,4664,4665,4666,4667,4668,4705,13019); -- 2 race condition
DELETE FROM `conditions` WHERE `condition_entry` = 9030; -- https://www.wowhead.com/tbc/item=20310/flayed-demon-skin
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(9030, 22, 1480, 0, 0, 0, 0, 'Quest ID 1480 NOT Taken AND NOT Rewarded');

