
--
-- ONYXIA

-- table A
-- remove Viskag, Deathbringer, and trinket from table A and set maxcount to 1
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17064';
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17068';
DELETE FROM `reference_loot_template` WHERE `entry`='34001' and`item`='17075';
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`='34001' and`item`='18813';
UPDATE `creature_loot_template` SET `maxcount`='1' WHERE `entry`='10184' and`item`='34001';

-- table B
-- add Viskag, Deathbringer, and trinket to bonus loot table B
DELETE FROM `creature_loot_template` WHERE entry = 10184 AND item in (17075, 17068, 17064);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('10184', '17075', '8', '2', '1', '1', '0'),
('10184', '17068', '8', '2', '1', '1', '0'),
('10184', '17064', '8', '2', '1', '1', '0');

--
-- MAGMADAR
DELETE FROM creature_loot_template WHERE entry = 11982 AND NOT item in (20951, 34011);

-- table A
-- Medallion of Steadfast Might + half the T1 legs
DELETE FROM reference_loot_template WHERE entry = 34051;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34051', '17065', '0', '1', '1', '1', '0'),
('34051', '16835', '0', '1', '1', '1', '0'),
('34051', '16867', '0', '1', '1', '1', '0'),
('34051', '16847', '0', '1', '1', '1', '0'),
('34051', '16843', '0', '1', '1', '1', '3'),
('34051', '16855', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34052;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
('11982', '34051', '100', '1', '-34051', '1', '0');

-- table B
-- Striker's Mark + the other half of T1 legs
DELETE FROM reference_loot_template WHERE entry = 34052;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34052', '17069', '0', '1', '1', '1', '0'),
('34052', '16796', '0', '1', '1', '1', '0'),
('34052', '16810', '0', '1', '1', '1', '0'),
('34052', '16822', '0', '1', '1', '1', '0'),
('34052', '16814', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34052;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11982', '34052', '100', '1', '-34052', '1', '0');

-- table C
-- Earthshaker, Eshkandar's Right Claw + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34050;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34050', '17073', '20', '1', '1', '1', '0'),
('34050', '18203', '20', '1', '1', '1', '0'),
('34050', '18823', '0', '1', '1', '1', '0'),
('34050', '19142', '0', '1', '1', '1', '0'),
('34050', '19143', '0', '1', '1', '1', '0'),
('34050', '18861', '0', '1', '1', '1', '0'),
('34050', '19136', '0', '1', '1', '1', '0'),
('34050', '18822', '0', '1', '1', '1', '0'),
('34050', '18821', '0', '1', '1', '1', '0'),
('34050', '19144', '0', '1', '1', '1', '0'),
('34050', '18820', '0', '1', '1', '1', '0'),
('34050', '18829', '0', '1', '1', '1', '3'),
('34050', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11982 AND item = 34050;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11982', '34050', '100', '1', '-34050', '1', '0');

--
-- GARR
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17066';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17071';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='17105';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18820';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18821';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18822';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18823';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18824';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18829';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18832';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='18861';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19136';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19142';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19143';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='19144';
DELETE FROM `creature_loot_template` WHERE `entry`='12057' and`item`='34015';

-- table A
-- Drillborer + half the T1 helms
DELETE FROM reference_loot_template WHERE entry = 34053;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34053', '17066', '0', '1', '1', '1', '0'),
('34053', '16834', '0', '1', '1', '1', '0'),
('34053', '16866', '0', '1', '1', '1', '0'),
('34053', '16846', '0', '1', '1', '1', '0'),
('34053', '16842', '0', '1', '1', '1', '3'),
('34053', '16854', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34053;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34053', '100', '1', '-34053', '1', '0');

-- table B
-- Gutgore Ripper + the other half of the T1 helms
DELETE FROM reference_loot_template WHERE entry = 34054;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34054', '17071', '0', '1', '1', '1', '0'),
('34054', '16795', '0', '1', '1', '1', '0'),
('34054', '16808', '0', '1', '1', '1', '0'),
('34054', '16821', '0', '1', '1', '1', '0'),
('34054', '16813', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34054;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34054', '100', '1', '-34054', '1', '0');

-- table C
-- Aurastone Hammer, Brutality Blade + the shared loot pool between Magmadar/Garr/Geddon/Golemagg 

DELETE FROM reference_loot_template WHERE entry = 34055;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34055', '17105', '20', '1', '1', '1', '0'),
('34055', '18832', '20', '1', '1', '1', '0'),
('34055', '18823', '0', '1', '1', '1', '0'),
('34055', '19142', '0', '1', '1', '1', '0'),
('34055', '19143', '0', '1', '1', '1', '0'),
('34055', '18861', '0', '1', '1', '1', '0'),
('34055', '19136', '0', '1', '1', '1', '0'),
('34055', '18822', '0', '1', '1', '1', '0'),
('34055', '18821', '0', '1', '1', '1', '0'),
('34055', '19144', '0', '1', '1', '1', '0'),
('34055', '18820', '0', '1', '1', '1', '0'),
('34055', '18829', '0', '1', '1', '1', '3'),
('34055', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12057 AND item = 34055;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12057', '34055', '100', '1', '-34055', '1', '0');

--
-- BARON GEDDON
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16797';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16807';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16836';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16844';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='16856';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='17110';
DELETE FROM `creature_loot_template` WHERE `entry`='12056' and`item`='34027';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34056;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34056', '16797', '0', '1', '1', '1', '0'),
('34056', '16807', '0', '1', '1', '1', '0'),
('34056', '17110', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12056 AND item = 34056;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12056', '34056', '100', '1', '-34056', '1', '0');

-- table B
-- Druid, Pal/Shm T1 shoulders + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34057;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34057', '16836', '30', '1', '1', '1', '0'),
('34057', '16844', '30', '1', '1', '1', '3'),
('34057', '16856', '30', '1', '1', '1', '4'),
('34057', '18823', '0', '1', '1', '1', '0'),
('34057', '19142', '0', '1', '1', '1', '0'),
('34057', '19143', '0', '1', '1', '1', '0'),
('34057', '18861', '0', '1', '1', '1', '0'),
('34057', '19136', '0', '1', '1', '1', '0'),
('34057', '18822', '0', '1', '1', '1', '0'),
('34057', '18821', '0', '1', '1', '1', '0'),
('34057', '19144', '0', '1', '1', '1', '0'),
('34057', '18820', '0', '1', '1', '1', '0'),
('34057', '18829', '0', '1', '1', '1', '3'),
('34057', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12056 AND item = 34057;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12056', '34057', '100', '1', '-34057', '1', '0');

--
-- GOLEMAGG THE INCINERATOR
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='17072';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='17103';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18820';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18821';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18822';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18823';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18824';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18829';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18842';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='18861';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19136';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19142';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19143';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='19144';
DELETE FROM `creature_loot_template` WHERE `entry`='11988' and`item`='34028';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34058;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34058', '16833', '0', '1', '1', '1', '0'),
('34058', '16865', '0', '1', '1', '1', '0'),
('34058', '16845', '0', '1', '1', '1', '0'),
('34058', '16841', '0', '1', '1', '1', '3'),
('34058', '16853', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34058;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34058', '100', '1', '-34058', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34059;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34059', '16798', '0', '1', '1', '1', '0'),
('34059', '16809', '0', '1', '1', '1', '0'),
('34059', '16820', '0', '1', '1', '1', '0'),
('34059', '16815', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34059;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34059', '100', '1', '-34059', '1', '0');

-- table C
-- Golemagg weapons + the shared loot pool between Magmadar/Garr/Geddon/Golemagg
DELETE FROM reference_loot_template WHERE entry = 34060;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34060', '18842', '25', '1', '1', '1', '0'),
('34060', '17103', '25', '1', '1', '1', '0'),
('34060', '17072', '25', '1', '1', '1', '0'),
('34060', '18823', '0', '1', '1', '1', '0'),
('34060', '19142', '0', '1', '1', '1', '0'),
('34060', '19143', '0', '1', '1', '1', '0'),
('34060', '18861', '0', '1', '1', '1', '0'),
('34060', '19136', '0', '1', '1', '1', '0'),
('34060', '18822', '0', '1', '1', '1', '0'),
('34060', '18821', '0', '1', '1', '1', '0'),
('34060', '19144', '0', '1', '1', '1', '0'),
('34060', '18820', '0', '1', '1', '1', '0'),
('34060', '18829', '0', '1', '1', '1', '3'),
('34060', '18824', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11988 AND item = 34060;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11988', '34060', '100', '1', '-34060', '1', '0');

--
-- LUCIFRON
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16800';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16805';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16829';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16837';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16859';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='16863';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='17109';
DELETE FROM `creature_loot_template` WHERE `entry`='12118' and`item`='34012';

-- table A
-- Choker of Enlightenment and Druid, Mage, Pal/Shm T1
DELETE FROM reference_loot_template WHERE entry = 34061;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34061', '16829', '0', '1', '1', '1', '0'),
('34061', '16800', '0', '1', '1', '1', '0'),
('34061', '17109', '0', '1', '1', '1', '0'),
('34061', '16837', '0', '1', '1', '1', '3'),
('34061', '16859', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12118 AND item = 34061;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12118', '34061', '100', '1', '-34061', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34062;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34062', '16863', '33', '1', '1', '1', '0'),
('34062', '16805', '33', '1', '1', '1', '0'),
('34062', '17077', '0', '1', '1', '1', '0'),
('34062', '18870', '0', '1', '1', '1', '0'),
('34062', '18872', '0', '1', '1', '1', '0'),
('34062', '18875', '0', '1', '1', '1', '0'),
('34062', '18878', '0', '1', '1', '1', '0'),
('34062', '18879', '0', '1', '1', '1', '0'),
('34062', '18861', '0', '1', '1', '1', '0'),
('34062', '19147', '0', '1', '1', '1', '0'),
('34062', '19146', '0', '1', '1', '1', '0'),
('34062', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12118 AND item = 34062;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12118', '34062', '100', '1', '-34062', '1', '0');

--
-- GEHENNAS
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16812';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16826';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16839';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16849';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16860';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='16862';
DELETE FROM `creature_loot_template` WHERE `entry`='12259' and`item`='34014';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34063;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34063', '16826', '0', '1', '1', '1', '0'),
('34063', '16812', '0', '1', '1', '1', '0'),
('34063', '16839', '0', '1', '1', '1', '3'),
('34063', '16860', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 12259 AND item = 34063;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12259', '34063', '100', '1', '-34063', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34064;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34064', '16862', '25', '1', '1', '1', '0'),
('34064', '16849', '25', '1', '1', '1', '0'),

('34064', '17077', '0', '1', '1', '1', '0'),
('34064', '18870', '0', '1', '1', '1', '0'),
('34064', '18872', '0', '1', '1', '1', '0'),
('34064', '18875', '0', '1', '1', '1', '0'),
('34064', '18878', '0', '1', '1', '1', '0'),
('34064', '18879', '0', '1', '1', '1', '0'),
('34064', '18861', '0', '1', '1', '1', '0'),
('34064', '19147', '0', '1', '1', '1', '0'),
('34064', '19146', '0', '1', '1', '1', '0'),
('34064', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12259 AND item = 34064;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12259', '34064', '100', '1', '-34064', '1', '0');

--
-- SHAZZRAH
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16801';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16803';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16811';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16824';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16831';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='16852';
DELETE FROM `creature_loot_template` WHERE `entry`='12264' and`item`='34026';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34065;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34065', '16831', '0', '1', '1', '1', '0'),
('34065', '16801', '0', '1', '1', '1', '0'),
('34065', '16852', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12264 AND item = 34065;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12264', '34065', '100', '1', '-34065', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34066;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34066', '16803', '25', '1', '1', '1', '0'),
('34066', '16811', '25', '1', '1', '1', '0'),
('34066', '16824', '25', '1', '1', '1', '0'),

('34066', '17077', '0', '1', '1', '1', '0'),
('34066', '18870', '0', '1', '1', '1', '0'),
('34066', '18872', '0', '1', '1', '1', '0'),
('34066', '18875', '0', '1', '1', '1', '0'),
('34066', '18878', '0', '1', '1', '1', '0'),
('34066', '18879', '0', '1', '1', '1', '0'),
('34066', '18861', '0', '1', '1', '1', '0'),
('34066', '19147', '0', '1', '1', '1', '0'),
('34066', '19146', '0', '1', '1', '1', '0'),
('34066', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12264 AND item = 34066;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12264', '34066', '100', '1', '-34066', '1', '0');

--
-- SULFURON HARBINGER
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16816';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16823';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16848';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='16868';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='17074';
DELETE FROM `creature_loot_template` WHERE `entry`='12098' and`item`='34029';

-- table A
DELETE FROM reference_loot_template WHERE entry = 34067;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34067', '16848', '0', '1', '1', '1', '0'),
('34067', '16816', '0', '1', '1', '1', '0'),
('34067', '17074', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12098 AND item = 34067;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12098', '34067', '100', '1', '-34067', '1', '0');

-- table B
DELETE FROM reference_loot_template WHERE entry = 34068;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34068', '16868', '33', '1', '1', '1', '0'),
('34068', '16823', '33', '1', '1', '1', '0'),

('34068', '17077', '0', '1', '1', '1', '0'),
('34068', '18870', '0', '1', '1', '1', '0'),
('34068', '18872', '0', '1', '1', '1', '0'),
('34068', '18875', '0', '1', '1', '1', '0'),
('34068', '18878', '0', '1', '1', '1', '0'),
('34068', '18879', '0', '1', '1', '1', '0'),
('34068', '18861', '0', '1', '1', '1', '0'),
('34068', '19147', '0', '1', '1', '1', '0'),
('34068', '19146', '0', '1', '1', '1', '0'),
('34068', '19145', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 12098 AND item = 34068;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('12098', '34068', '100', '1', '-34068', '1', '0');

--
-- MAJORDOMO EXECUTUS

-- some items were swapped in the wrong tables
UPDATE `gameobject_loot_template` SET `groupid`='2' WHERE `entry`='16719' and`item`='18803';
UPDATE `gameobject_loot_template` SET `groupid`='3' WHERE `entry`='16719' and`item`='18812';
UPDATE `gameobject_loot_template` SET `groupid`='2' WHERE `entry`='16719' and`item`='18808';
UPDATE `gameobject_loot_template` SET `groupid`='3' WHERE `entry`='16719' and`item`='18809';

--
-- RAGNAROS

-- table A (T2 set items)
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17063';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17076';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17082';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17102';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17104';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17106';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='17107';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='18814';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='18815';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='18816';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='18817';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='19137';
DELETE FROM `reference_loot_template` WHERE `entry`='34030' and`item`='19138';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16901';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16909';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16915';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16922';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16930';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16938';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16946';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16954';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34030' and`item`='16962';

-- table C
DELETE FROM reference_loot_template WHERE entry = 34069;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34069', '19138', '0', '1', '1', '1', '0'),
('34069', '18817', '0', '1', '1', '1', '0'),
('34069', '18814', '0', '1', '1', '1', '0'),
('34069', '18815', '0', '1', '1', '1', '0'),
('34069', '18816', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11502 AND item = 34069;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '34069', '100', '1', '-34069', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34070;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34070', '17102', '0', '1', '1', '1', '0'),
('34070', '17063', '0', '1', '1', '1', '0'),
('34070', '17106', '0', '1', '1', '1', '0'),
('34070', '19137', '0', '1', '1', '1', '0'),
('34070', '17107', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11502 AND item = 34070;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '34070', '100', '1', '-34070', '1', '0');

-- table E (bonus table, 2handers + Shard of the Flame)
DELETE FROM creature_loot_template WHERE entry = 11502 AND item in (17104, 17076, 17082);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11502', '17104', '8', '2', '1', '1', '0'),
('11502', '17076', '8', '2', '1', '1', '0'),
('11502', '17082', '8', '2', '1', '1', '0');

--
-- NEFARIAN
DELETE FROM `creature_loot_template` WHERE `entry`='11583' and`item`='34010';

-- table C
DELETE FROM reference_loot_template WHERE entry = 34071;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34071', '19364', '10', '1', '1', '1', '0'),
('34071', '19356', '10', '1', '1', '1', '0'),
('34071', '19379', '0', '1', '1', '1', '0'),
('34071', '19380', '0', '1', '1', '1', '0'),
('34071', '19381', '0', '1', '1', '1', '0'),
('34071', '19382', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11583 AND item = 34071;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11583', '34071', '100', '1', '-34071', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34072;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34072', '19360', '10', '1', '1', '1', '0'),
('34072', '19363', '10', '1', '1', '1', '0'),
('34072', '19377', '0', '1', '1', '1', '0'),
('34072', '19378', '0', '1', '1', '1', '0'),
('34072', '19375', '0', '1', '1', '1', '0'),
('34072', '19376', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11583 AND item = 34072;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11583', '34072', '100', '1', '-34072', '1', '0');

--
-- CHROMAGGUS

-- table A (T2 set items)
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19347';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19349';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19352';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19361';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19385';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19386';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19387';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19388';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19389';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19390';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19391';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19392';
DELETE FROM `reference_loot_template` WHERE `entry`='34038' and`item`='19393';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16832';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16902';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16917';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16924';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16932';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16937';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16945';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16953';
UPDATE `reference_loot_template` SET `groupid`='1' WHERE `entry`='34038' and`item`='16961';

-- table C
DELETE FROM reference_loot_template WHERE entry = 34073;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34073', '19352', '10', '1', '1', '1', '0'),
('34073', '19349', '10', '1', '1', '1', '0'),
('34073', '19387', '0', '1', '1', '1', '0'),
('34073', '19388', '0', '1', '1', '1', '0'),
('34073', '19389', '0', '1', '1', '1', '0'),
('34073', '19385', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14020 AND item = 34073;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14020', '34073', '100', '1', '-34073', '1', '0');

-- table D
DELETE FROM reference_loot_template WHERE entry = 34074;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34074', '19361', '10', '1', '1', '1', '0'),
('34074', '19347', '10', '1', '1', '1', '0'),
('34074', '19391', '0', '1', '1', '1', '0'),
('34074', '19386', '0', '1', '1', '1', '0'),
('34074', '19390', '0', '1', '1', '1', '0'),
('34074', '19393', '0', '1', '1', '1', '3'),
('34074', '19392', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 14020 AND item = 34074;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14020', '34074', '100', '1', '-34074', '1', '0');

--
-- FLAMEGOR
-- shared loot table A
UPDATE `creature_loot_template` SET `maxcount`='1' WHERE `entry`='11981' and`item`='34037';
DELETE FROM reference_loot_template WHERE entry = 34037;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34037', '16964', '4', '1', '1', '1', '0'),
('34037', '16899', '4', '1', '1', '1', '0'),
('34037', '16907', '4', '1', '1', '1', '0'),
('34037', '16913', '4', '1', '1', '1', '0'),
('34037', '16920', '4', '1', '1', '1', '0'),
('34037', '16928', '4', '1', '1', '1', '0'),
('34037', '16940', '4', '1', '1', '1', '0'),
('34037', '16948', '4', '1', '1', '1', '3'),
('34037', '16956', '4', '1', '1', '1', '4'),
('34037', '19353', '4', '1', '1', '1', '0'),
('34037', '19355', '4', '1', '1', '1', '0'),
('34037', '19396', '0', '1', '1', '1', '0'),
('34037', '19394', '0', '1', '1', '1', '0'),
('34037', '19397', '0', '1', '1', '1', '0'),
('34037', '19395', '0', '1', '1', '1', '0');

-- table B
-- Flamegor-specific items
DELETE FROM reference_loot_template WHERE entry = 34075;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34075', '19357', '10', '1', '1', '1', '0'),
('34075', '19367', '10', '1', '1', '1', '0'),
('34075', '19433', '0', '1', '1', '1', '0'),
('34075', '19432', '0', '1', '1', '1', '0'),
('34075', '19430', '0', '1', '1', '1', '0'),
('34075', '19431', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 11981 AND item = 34075;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11981', '34075', '100', '1', '-34075', '1', '0');

--
-- EBONROC
DELETE FROM `creature_loot_template` WHERE `entry`='14601' and`item`='34036';
DELETE FROM `reference_loot_template` WHERE `entry`='34036';

-- shared loot table B
DELETE FROM creature_loot_template WHERE entry = 14601 AND item = 34037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14601', '34037', '100', '1', '-34037', '1', '0');

-- table B
-- Ebonroc-specific items
DELETE FROM reference_loot_template WHERE entry = 34076;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34076', '19368', '10', '1', '1', '1', '0'),
('34076', '19403', '0', '1', '1', '1', '0'),
('34076', '19406', '0', '1', '1', '1', '0'),
('34076', '19407', '0', '1', '1', '1', '0'),
('34076', '19405', '0', '1', '1', '1', '0'),
('34076', '19345', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14601 AND item = 34076;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14601', '34076', '100', '1', '-34076', '1', '0');

--
-- FIREMAW
DELETE FROM `creature_loot_template` WHERE `entry`='11983' and`item`='34035';
DELETE FROM `reference_loot_template` WHERE `entry`='34035';

-- shared loot table A
DELETE FROM creature_loot_template WHERE entry = 11983 AND item = 34037;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11983', '34037', '100', '1', '-34037', '1', '0');

-- table B
-- Firemaw-specific items
DELETE FROM reference_loot_template WHERE entry = 34077;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34077', '19365', '0', '1', '1', '1', '0'),
('34077', '19400', '0', '1', '1', '1', '0'),
('34077', '19399', '0', '1', '1', '1', '0'),
('34077', '19398', '0', '1', '1', '1', '0'),
('34077', '19401', '0', '1', '1', '1', '3'),
('34077', '19402', '0', '1', '1', '1', '4'),
('34077', '19344', '0', '1', '1', '1', '3'),
('34077', '19343', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 11983 AND item = 34077;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('11983', '34077', '100', '1', '-34077', '1', '0');

--
-- HAKKAR

-- table A
DELETE FROM `creature_loot_template` WHERE `entry`='14834' and`item`='34090';

DELETE FROM `reference_loot_template` WHERE `entry`='34079';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34079', '19852', '0', '1', '1', '1', '0'),
('34079', '19864', '0', '1', '1', '1', '0'),
('34079', '19853', '0', '1', '1', '1', '0'),
('34079', '19856', '0', '1', '1', '1', '0'),
('34079', '19857', '0', '1', '1', '1', '0'),
('34079', '20257', '0', '1', '1', '1', '3'),
('34079', '20264', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 14834 AND item = 34079;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14834', '34079', '100', '1', '-34079', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34078';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34078', '19854', '0', '1', '1', '1', '0'),
('34078', '19861', '0', '1', '1', '1', '0'),
('34078', '19865', '0', '1', '1', '1', '0'),
('34078', '19862', '0', '1', '1', '1', '0'),
('34078', '19855', '0', '1', '1', '1', '0'),
('34078', '19859', '0', '1', '1', '1', '0'),
('34078', '19876', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 14834 AND item = 34078;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('14834', '34078', '100', '1', '-34078', '1', '0');

--
-- OSSIRIAN THE UNSCARRED 

-- table A
DELETE FROM `creature_loot_template` WHERE `entry`='15339' and`item`='34025';
DELETE FROM `reference_loot_template` WHERE `entry`='34025';

DELETE FROM `reference_loot_template` WHERE `entry`='34103';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34103', '21459', '10', '1', '1', '1', '0'),
('34103', '21460', '0', '1', '1', '1', '0'),
('34103', '21461', '0', '1', '1', '1', '0'),
('34103', '21462', '0', '1', '1', '1', '0'),
('34103', '21463', '0', '1', '1', '1', '0'),
('34103', '21464', '0', '1', '1', '1', '3');

DELETE FROM creature_loot_template WHERE entry = 15339 AND item = 34103;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15339', '34103', '100', '1', '-34103', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34104';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34104', '21715', '10', '1', '1', '1', '0'),
('34104', '21452', '0', '1', '1', '1', '0'),
('34104', '21456', '0', '1', '1', '1', '0'),
('34104', '21458', '0', '1', '1', '1', '0'),
('34104', '21454', '0', '1', '1', '1', '3'),
('34104', '21453', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15339 AND item = 34104;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15339', '34104', '100', '1', '-34104', '1', '0');

--
-- THE PROPHET SKERAM
DELETE FROM `creature_loot_template` WHERE `entry`='15263' and`item`='34046';
DELETE FROM `reference_loot_template` WHERE `entry`='34046';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34080';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34080', '21128', '10', '1', '1', '1', '0'),
('34080', '21699', '0', '1', '1', '1', '0'),
('34080', '21701', '0', '1', '1', '1', '0'),
('34080', '21702', '0', '1', '1', '1', '0'),
('34080', '21700', '0', '1', '1', '1', '0'),
('34080', '21698', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15263 AND item = 34080;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15263', '34080', '100', '1', '-34080', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34081';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34081', '21703', '10', '1', '1', '1', '0'),
('34081', '21706', '0', '1', '1', '1', '0'),
('34081', '21707', '0', '1', '1', '1', '0'),
('34081', '21708', '0', '1', '1', '1', '0'),
('34081', '21814', '0', '1', '1', '1', '0'),
('34081', '21705', '0', '1', '1', '1', '3'),
('34081', '21704', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15263 AND item = 34081;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15263', '34081', '100', '1', '-34081', '1', '0');

--
-- BATTLEGUARD SARTURA
DELETE FROM `creature_loot_template` WHERE `entry`='15516' and`item`='34047';
DELETE FROM `reference_loot_template` WHERE `entry`='34047';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34082';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34082', '21666', '10', '1', '1', '1', '0'),
('34082', '21670', '0', '1', '1', '1', '0'),
('34082', '21672', '0', '1', '1', '1', '0'),
('34082', '21669', '0', '1', '1', '1', '0'),
('34082', '21671', '0', '1', '1', '1', '0'),
('34082', '21668', '0', '1', '1', '1', '3'),
('34082', '21667', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15516 AND item = 34082;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15516', '34082', '100', '1', '-34082', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34083';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34083', '21673', '10', '1', '1', '1', '0'),
('34083', '21648', '0', '1', '1', '1', '0'),
('34083', '21675', '0', '1', '1', '1', '0'),
('34083', '21676', '0', '1', '1', '1', '0'),
('34083', '21674', '0', '1', '1', '1', '0'),
('34083', '21678', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15516 AND item = 34083;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15516', '34083', '100', '1', '-34083', '1', '0');

--
-- FANKRISS THE UNYIELDING
DELETE FROM `creature_loot_template` WHERE `entry`='15510' and`item`='34048';
DELETE FROM `reference_loot_template` WHERE `entry`='34048';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34084';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34084', '21650', '10', '1', '1', '1', '0'),
('34084', '21664', '0', '1', '1', '1', '0'),
('34084', '21652', '0', '1', '1', '1', '0'),
('34084', '21665', '0', '1', '1', '1', '0'),
('34084', '21663', '0', '1', '1', '1', '0'),
('34084', '21651', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15510 AND item = 34084;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15510', '34084', '100', '1', '-34084', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34085';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34085', '21635', '10', '1', '1', '1', '0'),
('34085', '21647', '0', '1', '1', '1', '0'),
('34085', '21645', '0', '1', '1', '1', '0'),
('34085', '21627', '0', '1', '1', '1', '0'),
('34085', '22396', '0', '1', '1', '1', '3'),
('34085', '22402', '0', '1', '1', '1', '4');

DELETE FROM creature_loot_template WHERE entry = 15510 AND item = 34085;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15510', '34085', '100', '1', '-34085', '1', '0');


--
-- C'THUN
DELETE FROM `creature_loot_template` WHERE `entry`='15727' and`item`='34049';
DELETE FROM `reference_loot_template` WHERE `entry`='34049';

-- table A
DELETE FROM `reference_loot_template` WHERE `entry`='34101';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34101', '21126', '8', '1', '1', '1', '0'),
('34101', '21586', '0', '1', '1', '1', '0'),
('34101', '22731', '0', '1', '1', '1', '0'),
('34101', '21596', '0', '1', '1', '1', '0'),
('34101', '21585', '0', '1', '1', '1', '0'),
('34101', '22730', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 34101;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '34101', '100', '1', '-34101', '1', '0');

-- table B
DELETE FROM `reference_loot_template` WHERE `entry`='34102';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('34102', '21134', '8', '1', '1', '1', '0'),
('34102', '21839', '8', '1', '1', '1', '0'),
('34102', '21583', '0', '1', '1', '1', '0'),
('34102', '21581', '0', '1', '1', '1', '0'),
('34102', '22732', '0', '1', '1', '1', '0'),
('34102', '21582', '0', '1', '1', '1', '0');

DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 34102;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '34102', '100', '1', '-34102', '1', '0');

-- table C (vanquished tentacle)
DELETE FROM creature_loot_template WHERE entry = 15727 AND item = 21579;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('15727', '21579', '20', '2', '1', '1', '0');


-- Clean up now obsolete reference tables
DELETE FROM reference_loot_template WHERE entry IN (34010, 34012, 34013, 34014, 34015, 34026, 34027, 34028, 34029, 34090);
