-- Finding the Source(q.974)
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=974;

DELETE FROM dbscripts_on_spell WHERE id = 16378;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16378,0,20,2,0,0,0,0,6,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(16378,3,31,0,20,20000,0,0,0,0,0,0,0,0,0,0,0,'search for pool 20000'),
(16378,4,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit - Krakle\'s Thermometer');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001470 AND 2000001475;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001470,'Wow, it\'s 3 degrees Kraklenheit. Keep Looking.',0,0,0,0,NULL),
(2000001471,'The temperature is 122 degrees Kraklenheit.',0,0,0,0,NULL),
(2000001472,'The temperature is 9280 degrees Kraklenheit! That\'s HOT!',0,0,0,0,NULL),
(2000001473,'It\'s 428,000 degrees Kraklenheit... What\'s happening, hot stuff!?',0,0,0,0,NULL),
(2000001474,'DING! 428,000 degrees Kraklenheit, exactly! Well, approximately. Almost. Somewhere around there...',0,0,0,0,NULL),
(2000001475,'Measuring by Kraklenheit, it is 428,000 degrees! That\'s Krakley!',0,0,0,0,NULL);

UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (23712,23713,23714,23715,23716) AND id=10541; -- movement will be set by spell

DELETE FROM creature_movement WHERE id IN (23712,23713,23714,23715,23716);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23712,1,-7328.53,-1462.65,-241.072,5000,1054101,4.92183),
(23713,1,-7163.64,-1148.67,-265.202,5000,1054101,5.89921),
(23714,1,-7140.5,-1465.97,-240.86,5000,1054101,1.58825),
(23715,1,-7282.31,-1245.81,-246.847,5000,1054101,0.575959),
(23716,1,-7092.4,-1305.86,-186.075,5000,1054102,5.46288);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1054101,1054102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1054101,1,0,0,0,0,0,0,0,2000001470,2000001471,2000001472,0,0,0,0,0,''),
(1054101,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10541 - movement chenged to 0:idle'),
(1054102,1,0,0,0,0,0,0,0,2000001473,2000001474,2000001475,0,0,0,0,0,''),
(1054102,3,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10541 - movement chenged to 0:idle');

-- POOL
-- Req for quest credit
DELETE FROM pool_template WHERE entry = 15015;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(15015,1,'Fire Plume Ridge Hot Spot - Pool');
-- create pool
DELETE FROM pool_creature WHERE guid = 23716;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(23716, 15015, 100, 'Krakle\'s Thermometer - 10541 - Pool');
