UPDATE creature_template SET UnitFlags=33555200,ExtraFlags=0,SpeedWalk=2.5/2.5,SpeedRun=8/7
WHERE entry IN(15882,15879,15880,15881,15884,15883,15885,15886,15887,15888,15889,15890,15872,15873,15874,15875,15876,15877,15911,15912,15913,15914,15915,15916,15918);

DELETE FROM gameobject WHERE id IN(180910,180879) AND guid IN(55787,150144);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('55787', '180910', '1','7946.681', '-2621.326', '494.1927', '5.131269', '0', '0', '-0.5446386', '0.8386708', '180', '180', '255', '1'),
('150144', '180879', '1', '7946.622', '-2621.156', '492.3542', '1.850049', '0', '0', '0.7986355', '0.601815', '180', '180', '255', '1');
DELETE FROM game_event_gameobject WHERE guid IN (55787,150144);
INSERT INTO game_event_gameobject VALUES
(55787, 7),
(150144, 7);

DELETE FROM game_event_creature WHERE guid IN (106033,106034) AND event IN(7);
INSERT INTO game_event_creature VALUES
(106033, 7),
(106034, 7);
DELETE FROM creature WHERE guid IN (106033, 106034);
INSERT INTO creature VALUES
('106033', '15961', '1', '0', '0', '7929.991', '-2605.031', '492.7756', '5.532694', '180', '180', '0', '0', '24416', '0', '0', '0'),
('106034', '15961', '1', '0', '0', '7924.086', '-2637.729', '492.7612', '0.4712389', '180', '180', '0', '0', '24416', '0', '0', '0');

UPDATE quest_template SET OfferRewardText='Very well done, $n.  Defeating Omen sent his spirit back to the waters of Elune''ara.  Although the beast himself is blessed by Elune and so cannot die, his anger will subside for another year.$b$bYour victory is a celebration, $n--a celebration of the might of Omen, of you and your allies, and of the peace you have given this tragic hero of our past.' WHERE entry IN(8868);

DELETE FROM item_loot_template WHERE entry IN (21741, 21742);
INSERT INTO item_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21741', '21730', '100', '0', '1', '1', '0', 'Schematic: Blue Rocket Cluster'),
('21741', '21731', '100', '0', '1', '1', '0', 'Schematic: Green Rocket Cluster'),
('21741', '21732', '100', '0', '1', '1', '0', 'Schematic: Red Rocket Cluster'),
('21742', '21727', '100', '0', '1', '1', '0', 'Schematic: Large Blue Rocket'),
('21742', '21728', '100', '0', '1', '1', '0', 'Schematic: Large Green Rocket'),
('21742', '21729', '100', '0', '1', '1', '0', 'Schematic: Large Red Rocket');