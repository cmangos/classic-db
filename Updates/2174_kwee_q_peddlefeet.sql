-- Kwee Q. Peddlefeet 16075
UPDATE creature_template SET UnitFlags=32768, SpeedWalk=(2.5 / 2.5), SpeedRun=(7 / 7) WHERE entry=16075;

-- Kwee Q. Peddlefeet 16075 - Insert Spawns from wotlk-db with updated with sniff position
DELETE FROM creature WHERE guid IN (106252,106253,106254,106324,106325,106326);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(106252, 16075, 0, 0, 0, 1302.19, 343.6486, -64.94396, 1.553343, 300, 300, 0, 0), -- UC+ wotlk sniff
(106253, 16075, 1, 0, 0, 9670.281, 2534.938, 1360.082, 5.340707, 300, 300, 0, 0), -- Dar+ wotlk sniff
(106254, 16075, 0, 0, 0, -4867.874, -1032.225, 502.2731, 5.497787, 300, 300, 0, 0), -- IF+ tbc sniff
(106324, 16075, 0, 0, 0, -8435.294, 323.4314, 121.8293, 1.762783, 300, 300, 0, 0), -- SW+ tbc sniff
(106325, 16075, 1, 0, 0, 1929.576, -4137.403, 40.47078, 4.171337, 300, 300, 0, 0), -- OG+ wotlk sniff
(106326, 16075, 1, 0, 0, -1199.995, -118.7875, 163.882, 3.106686, 300, 300, 0, 0); -- TB+ wotlk sniff

-- Link to "Love is in the Air" game_event
DELETE FROM game_event_creature WHERE guid IN (106252,106253,106254,106324,106325,106326);
INSERT INTO game_event_creature (guid, event) VALUES
(106252, 8),
(106253, 8),
(106254, 8),
(106324, 8),
(106325, 8),
(106326, 8);
