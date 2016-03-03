-- Fixed spawns position and pools for rare ogres NPCs in Lower Blackrock Spire
-- Thanks @metalica for reporting. This closes #708
-- Sources:
-- http://www.wowhead.com/npc=9219/spirestone-butcher#comments
-- http://www.wowhead.com/npc=9217/spirestone-lord-magus#comments
-- http://www.wowhead.com/npc=9218/spirestone-battle-lord#comments

SET @POOL := 25501;

-- Spirestone Battle Lord (9218)
UPDATE creature SET position_x=-52.41, position_y=-306.9, position_z=43.34, orientation=5.53 WHERE id = 9218;
UPDATE creature_template SET Rank=2 WHERE Entry=9218;

DELETE FROM pool_creature WHERE guid IN (43517, 43519);
INSERT INTO pool_creature VALUES
(43517, @POOL + 1, 0, 'Spirestone Battle Lord/Placeholder'),
(43519, @POOL + 1, 15, 'Spirestone Battle Lord/Placeholder');

DELETE FROM pool_template WHERE entry = @POOL + 1;
INSERT INTO pool_template VALUES
(@POOL + 1, 1, 'Spirestone Battle Lord/Placeholder');

-- Spirestone Lord Magus (9217)
UPDATE creature SET position_x=-58.87, position_y=-320.75, position_z=44.13, orientation=5.53 WHERE id = 9217;
UPDATE creature_template SET Rank=2, EquipmentTemplateId=1023 WHERE Entry=9217;

DELETE FROM pool_creature WHERE guid IN (43516, 43521);
INSERT INTO pool_creature VALUES
(43516, @POOL + 2, 0, 'Spirestone Lord Magus/Placeholder'),
(43521, @POOL + 2, 30, 'Spirestone Lord Magus/Placeholder');

DELETE FROM pool_template WHERE entry = @POOL + 2;
INSERT INTO pool_template VALUES
(@POOL + 2, 1, 'Spirestone Lord Magus/Placeholder');

-- Spirestone Butcher (9219)
UPDATE creature SET position_x=-37.05, position_y=-387.07, position_z=31.8, orientation=4.65, MovementType=2 WHERE id = 9219;
UPDATE creature_template SET Rank=2 WHERE Entry=9219;

DELETE FROM creature_movement_template WHERE entry = 9219;
INSERT INTO creature_movement_template VALUES
(9219, 1, -37.05, -387.07, 31.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65, 0, 0),
(9219, 2, -36.5, -478.69, 29.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6, 0, 0);

UPDATE creature SET MovementType=2 WHERE guid = 43507;

DELETE FROM creature_movement WHERE id = 43507;
INSERT INTO creature_movement VALUES
(43507, 1, -37.05, -387.07, 31.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65, 0, 0),
(43507, 2, -36.5, -478.69, 29.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6, 0, 0);

DELETE FROM pool_creature WHERE guid IN (43507, 43523);
INSERT INTO pool_creature VALUES
(43507, @POOL + 3, 0, 'Spirestone Butcher/Placeholder'),
(43523, @POOL + 3, 30, 'Spirestone Butcher/Placeholder');

DELETE FROM pool_template WHERE entry = @POOL + 3;
INSERT INTO pool_template VALUES
(@POOL + 3, 1, 'Spirestone Butcher/Placeholder');
