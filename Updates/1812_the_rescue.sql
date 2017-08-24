DELETE FROM dbscripts_on_event WHERE id IN (312,313); 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #312
(312,0,31,2239,20,0,0,0,0,0,0,0,0,0,0,0,'search for 2239'),
(312,1,0,0,0,2239,20,7,2000005081,0,0,0,0,0,0,0,'force 2239 to: say text'),
(312,4,1,6,0,2239,20,7,0,0,0,0,0,0,0,0,'force 2239 to: emote'),
(312,7,0,0,0,2239,20,7,2000005082,0,0,0,0,0,0,0,'force 2239 to: say text'),
-- #313
(313,0,31,2238,20,0,0,0,0,0,0,0,0,0,0,0,'search for 2238'),
(313,1,0,0,0,2238,20,7,2000005078,0,0,0,0,0,0,0,'force 2239 to: say text'),
(313,6,0,0,0,2238,20,7,2000005079,0,0,0,0,0,0,0,'force 2239 to: say text');

UPDATE dbscript_string SET emote = 6 WHERE entry = 2000005078;
UPDATE dbscript_string SET emote = 1 WHERE entry = 2000005079;
UPDATE dbscript_string SET emote = 5 WHERE entry = 2000005081;
UPDATE dbscript_string SET emote = 1 WHERE entry = 2000005082;

-- Both objects must despawn after use
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (1721,1722);
UPDATE gameobject SET spawntimesecsmin = 30,  spawntimesecsmax = 30 WHERE id IN (1721,1722);
