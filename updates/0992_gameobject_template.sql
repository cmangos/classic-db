-- Added missing object 181073 (Fragrant Cauldron) for Love in the Air event
-- Linked quest 9029 (A bubbling cauldron) to it
-- Thanks thetrueanimal for pointing. This closes #739
-- Sources: http://www.wowhead.com/quest=8984/the-source-revealed
-- http://www.wowhead.com/quest=9029/a-bubbling-cauldron
-- http://www.wowhead.com/quest=8984/the-source-revealed#screenshots:id=16849

DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9029;
INSERT INTO `gameobject_involvedrelation` VALUES
(181073, 9029);

DELETE FROM `gameobject_questrelation` WHERE `quest` = 9029;
INSERT INTO `gameobject_questrelation` VALUES
(181073, 9029);

DELETE FROM `gameobject_template` WHERE `entry` = 181073;
INSERT INTO `gameobject_template` VALUES (181073, 2, 216, 'Fragrant Cauldron', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `gameobject` WHERE `guid` = 121618;
INSERT INTO `gameobject` VALUES
(121618, 181073, 0, 87.6351, -1724.96, 220.192, 1.88655, 0, 0, 0.809484, 0.587141, 25, 100, 1);

DELETE FROM `game_event_gameobject` WHERE `guid` = 121618;
INSERT INTO `game_event_gameobject` VALUES
(121618, 8);

UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` = 9029;
