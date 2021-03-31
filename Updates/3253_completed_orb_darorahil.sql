-- q.4964 'The Completed Orb of Dar'Orahil'
-- q.4975 'The Completed Orb of Noh'Orahil'
DELETE FROM dbscripts_on_quest_start WHERE id IN (4964,4975);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 4964
(4964,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4964,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4964,100,15,16633,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(4964,7000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(4964,8000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
-- 4975
(4975,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(4975,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(4975,100,15,16633,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(4975,7000,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(4975,8000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 4964, RequiredCondition = 3732 WHERE entry = 4964; -- Player must have q.4963 'Shard of an Infernal' completed.
UPDATE quest_template SET StartScript = 4975, RequiredCondition = 3730, SpecialFlags = 0 WHERE entry = 4975; -- Player must have q.4962 'Shard of a Felhound' completed.

-- conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 3728 AND 3732;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(3728, 8, 4976, 0), -- must be completed for both
(3729, 8, 4962, 0),
(3730, -1, 3729, 3728),
(3731, 8, 4963, 0),
(3732, -1, 3731, 3728);
