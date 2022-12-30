-- q.9015 'The Challenge'
-- startscript
DELETE FROM dbscripts_on_quest_start WHERE id IN (9015);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9015,1,31,16093,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 16093 - terminate if alive'),
(9015,100,10,16093,300000,0,0,0,0,0,0,0,0,135.63031,462.32465,-48.461926,4.917214393615722656,'Summon 16093'),
(9015,101,10,16093,300000,0,0,0,0,0,0,0,0,140.05779,461.57236,-48.462814,3.103771686553955078,'Summon 16093'),
(9015,102,10,16093,300000,0,0,0,0,0,0,0,0,135.4948,462.73483,-48.46196,3.589236974716186523,'Summon 16093'),
(9015,103,10,16093,300000,0,0,0,0,0,0,0,0,134.60822,463.8146,-48.462013,1.902692675590515136,'Summon 16093'),
(9015,104,10,16093,300000,0,0,0,0,0,0,0,0,133.69318,467.39536,-48.462303,5.656152725219726562,'Summon 16093'),
(9015,200,48,768,0,0,16093,100,0x200,0,0,0,0,0,0,0,0,'remove unitFlags from all summons'),
(9015,300,26,16093,0,0,16093,100,0x200,0,0,0,0,0,0,0,0,'all summons attack Player');
UPDATE quest_template SET StartScript = 9015 WHERE entry = 9015;
