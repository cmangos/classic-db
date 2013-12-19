-- Removed spawns of creature 16290 (Fallout Slime) as they are spawned during
-- the Grobbulus encounter
-- Source: http://www.wowhead.com/npc=16290#comments
DELETE FROM `creature` WHERE `id` = 16290;

-- Removed creatures of the left of the sewage room in Construct Quarter because
-- there were none in Classic version
-- Source: http://www.youtube.com/watch?v=iA_de7CcIrQ
DELETE FROM `creature` WHERE `guid` IN (88265, 88271, 88266);

-- Removed duplicate Sludge Belcher in embalming room in Construct Quarter
-- Added missing patrolling Bile Retcher along the slime in Patchwerk room
-- Source: http://www.youtube.com/watch?v=iA_de7CcIrQ
DELETE FROM `creature` WHERE `guid` = 88722;
INSERT INTO `creature` VALUES
(88722, 16018, 533, 0, 0, 3048.83, -3241.84, 293.346, 1.80722, 25, 0, 0, 106795, 0, 0, 2);

-- Changed first Bile Retcher patrolling in Patchwerk room to Sludge Belcher
-- Sources:
-- http://www.youtube.com/watch?v=IbRODBLeqk4
-- http://www.youtube.com/watch?v=agWfYn0piY8
-- http://www.youtube.com/watch?v=YtLkzm3eELs
-- http://www.youtube.com/watch?v=iA_de7CcIrQ
UPDATE `creature` SET `id` = 16029, `curhealth` = 81453 WHERE `guid` = 88723;

-- Linked the first group of Patchwork Golems
DELETE FROM `creature_linking` WHERE `guid` IN (88262, 88261, 88264); 
INSERT INTO `creature_linking` VALUES
(88262, 88263, 3),
(88261, 88263, 3),
(88264, 88263, 3);

-- Linked the abominations in right side of sewage room
DELETE FROM `creature_linking` WHERE `guid` IN (88268, 88267); 
INSERT INTO `creature_linking` VALUES
(88268, 88272, 3),
(88267, 88272, 3);

-- Linked the second group of Patchwork Golems (back of sewage room
DELETE FROM `creature_linking` WHERE `guid` IN (88278, 88279, 88280); 
INSERT INTO `creature_linking` VALUES
(88278, 88281, 3),
(88279, 88281, 3),
(88280, 88281, 3);
