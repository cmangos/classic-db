-- Add missing movement and despawn for kids in Eastvale logging camp
-- Thanks @stan84 for reporting
-- Closes https://github.com/cmangos/issues/issues/2036

-- Fix NPCs kids in Eastvale logging camp: position and random movement
UPDATE creature SET spawndist=8, MovementType=1 WHERE id IN (798, 799, 800, 801, 802);
UPDATE creature SET position_x=-9511.99, position_y=-1272.53, position_z=43.669, orientation=5.56961 WHERE id=801;  -- Eric
UPDATE creature SET position_x=-9507.03, position_y=-1275.85, position_z=44.1562, orientation=5.16513 WHERE id=802; -- Jay

-- Eastvale logging campshould stay at home by night
DELETE FROM game_event_creature WHERE guid IN (86158, 86159, 86157, 86354, 86156);
INSERT INTO game_event_creature VALUES
(86158, -27),
(86159, -27),
(86157, -27),
(86354, -27),
(86156, -27);
