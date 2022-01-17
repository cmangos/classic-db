-- Add missing vendor Seersa Copperpinch.
-- https://tbc.wowhead.com/npc=13432/seersa-copperpinch#comments
DELETE FROM creature WHERE guid=86176 AND id=13432;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, MovementType, spawndist) VALUES
(86176, 13432, 1, -1274.94, 109.166, 129.298, 1.86951, 1480, 1690, 0, 0);

DELETE FROM game_event_creature WHERE guid=86176;
INSERT INTO game_event_creature VALUES (86176, 2); -- Feast of Winter Veil
