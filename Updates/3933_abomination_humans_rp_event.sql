-- Tyler and Edward training event in UC. - cupdate

-- Tyler 5653 & Edward 5654
UPDATE creature_template SET Faction=118, UnitFlags=32768 WHERE entry IN (5653,5654);

-- Captive Abomination 5687
UPDATE creature_template SET Faction=233, UnitFlags=256 WHERE entry=5687;

-- Male Human Captive 5680 & Female Human Captive 5681 -- 123
UPDATE creature_template SET Faction=233, UnitFlags=256 WHERE entry IN (5680,5681);

-- Captive Zombie 5686 & Captive Ghoul 5685
UPDATE creature_template SET Faction=233, UnitFlags=256 WHERE entry IN (5686,5685);

-- Npcs around event should not take part of training.
UPDATE creature_template SET UnitFlags=33280, ExtraFlags=64 WHERE entry IN (5679,5657,5658,5660,5659,5655,5656);

-- Brother Malach 5661 & all other scripts
UPDATE creature_template SET MovementType=0 WHERE entry IN (5661,5680,5681,5686,5685,5687);
DELETE FROM creature_movement_template WHERE entry IN (5661,5680,5681,5686,5685,5687);
UPDATE creature SET MovementType=0, Spawndist=0 WHERE id IN (5661,5680,5681,5686,5685,5687);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (566101,568001,568101,568601,568501,568701); -- event will start on random timer from EAI

-- make sure they will all despawn pr. fast after death
DELETE FROM dbscripts_on_creature_death WHERE id IN (5687,5680,5681,5686,5685);
DELETE FROM dbscripts_on_relay WHERE id IN (9004);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, comments) VALUES
(9004,1,31,5680,20,0,0,0,0x08,0,0,0,0,0,0,0,0,0,'search for - male human captive - terminate if alive'),
(9004,50,31,5681,20,0,0,0,0x08,0,0,0,0,0,0,0,0,0,'search for - female human captive - terminate if alive'),
(9004,100,31,5686,20,0,0,0,0x08,0,0,0,0,0,0,0,0,0,'search for - captive zombie - terminate if alive'),
(9004,150,31,5685,20,0,0,0,0x08,0,0,0,0,0,0,0,0,0,'search for - captive ghoul - terminate if alive'),
(9004,200,31,5687,20,0,0,0,0x08,0,0,0,0,0,0,0,0,0,'search for - Captive Abomination - terminate if alive'),
(9004,1000,0,0,0,0,0,0,0,1978,0,0,0,0,0,0,0,0,''),
(9004,1001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,7000,0,0,0,0,0,0,0,1977,0,0,0,0,0,0,0,0,''),
(9004,7001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,9000,10,5680,20000,0,0,0,0,0,0,0,0,0,1738.42,378.891,-62.29,3.91091,'summon - male human captive'),
(9004,9001,10,5681,20000,0,0,0,0,0,0,0,0,0,1735.89,381.36,-62.29,3.94233,'summon - female human captive'),
(9004,28000,15,7162,0,0,5653,40,1,0,0,0,0,0,0,0,0,0,'cast 7162 on buddy'),
(9004,33000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,33000,0,0,0,0,0,0,0,1980,0,0,0,0,0,0,0,0,''),
(9004,39000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,39000,0,0,0,0,0,0,0,8306,0,0,0,0,0,0,0,0,''),
(9004,41000,10,5686,30000,0,0,0,0,0,0,0,0,0,1738.42,378.891,-62.29,3.91091,'summon - captive zombie'),
(9004,41001,10,5685,30000,0,0,0,0,0,0,0,0,0,1735.89,381.36,-62.29,3.94233,'summon - captive ghoul'),
(9004,67000,15,7162,0,0,5653,40,1,0,0,0,0,0,0,0,0,0,'cast 7162 on buddy'),
(9004,70000,0,0,0,0,0,0,0,1984,0,0,0,0,0,0,0,0,''),
(9004,70001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,76000,0,0,0,0,0,0,0,8307,0,0,0,0,0,0,0,0,''),
(9004,76000,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9004,79000,10,5687,60000,0,0,0,0,0,0,0,0,0,1735.28,377.776,-62.1945,3.51514,'summon - Captive Abomination'),
(9004,126000,15,7162,0,0,5653,40,1,0,0,0,0,0,0,0,0,0,'cast 7162 on buddy'),
(9004,130000,15,7162,0,0,5654,40,1,0,0,0,0,0,0,0,0,0,'cast 7162 on buddy'),
(9004,135000,0,0,0,0,0,0,0,1985,0,0,0,0,0,0,0,0,''),
(9004,135001,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
