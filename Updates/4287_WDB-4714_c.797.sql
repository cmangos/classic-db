-- Bo 797
UPDATE creature SET position_x = -9460.582, position_y = 94.233505, position_z = 58.354, spawndist = 0, MovementType = 2 WHERE guid = 80320;
DELETE FROM creature_movement WHERE id IN (80320);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(80320,1,-9460.582,94.233505,58.354,100,5000,79701),
(80320,2,-9460.582,94.233505,58.354,100,1,5),
(80320,3,-9465.782,113.60075,57.917274,100,0,0),
(80320,4,-9457.16,126.087,59.1066,100,0,0),
(80320,5,-9444.896,135.82916,58.48393,100,0,0),
(80320,6,-9435.158,135.1569,58.408245,100,0,0),
(80320,7,-9425.547,129.19225,59.73195,100,5000,79702),
(80320,8,-9425.547,129.19225,59.73195,100,1,5),
(80320,9,-9435.158,135.1569,58.408245,100,0,0),
(80320,10,-9444.896,135.82916,58.48393,100,0,0),
(80320,11,-9457.16,126.087,59.1066,100,0,0),
(80320,12,-9465.782,113.60075,57.917274,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 79701 AND 79702;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(79701,0,20,1,2,35000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (40secs TEMP) (around current location)'),
(79702,0,20,1,7,45000,0,0,12,0,0,0,0,0,0,0,0,'Change Movement To 1 - Random (50secs TEMP) (around current location)');
-- Mark 795 & Joshua 796
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id IN (795,796);

