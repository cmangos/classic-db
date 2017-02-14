/* Adding missing Tribute GO's for Gnomes, Night Elves, Orcs and Taurens */
DELETE FROM gameobject_template WHERE entry IN (180211, 180213, 180207, 180209);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(180211, 5, 6314, 'Uther\'s Gnome Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180213, 5, 6315, 'Uther\'s Night Elf Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180207, 5, 665, 'Grom\'s Orc Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180209, 5, 6312, 'Grom\'s Tauren Tribute', 0, 0, 0.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/* Adding missing model ID's for Honoured Heros and Ancestors */
UPDATE creature_template SET ModelId2= 15223, ModelId3= 15224, ModelId4= 15225 WHERE Entry= 15113;
UPDATE creature_template SET ModelId2= 15229, ModelId3= 15230, ModelId4= 15232 WHERE Entry= 15115;

/* Removing single model ID from spawns */
UPDATE creature SET modelid= 0 WHERE id= 15113;
UPDATE creature SET modelid= 0 WHERE id= 15115;

/* Removing temporary entries for Uther's Statue and Grom's Monument and adding correct entries (Thanks YTDB) */
DELETE FROM gameobject_template WHERE entry IN (300140, 300145, 1323, 1324);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(1323, 8, 299, 'Uther\'s Tomb Statue', 0, 0, 1, 1323, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1324, 8, 299, 'Grom\'s Monument', 0, 0, 1.5, 1324, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE gameobject SET id= 1323 WHERE guid= 99865;
UPDATE gameobject SET id= 1324 WHERE guid= 99997;
