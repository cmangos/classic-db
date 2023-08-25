-- Guard Lasiter 4973 - Update
-- now always hits the target on the left due to being closest.
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 4835; -- Theramore Marksman 23900 has 2984 in template!
UPDATE creature_movement_template SET ScriptId = 497301 WHERE Entry = 4973 AND point = 1;
DELETE FROM dbscripts_on_creature_movement WHERE id = 497301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(497301,1,31,5202,25,0,0,0,0,0,0,0,0,0,0,0,0,'4973 - search for 5202'),
(497301,10,36,0,0,0,5202,30,1,0,0,0,0,0,0,0,0,'4973 - face buddy'),
(497301,11,54,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'4973 - set SHEATH_STATE_Ranged(2)'),
(497301,100,15,42131,0,0,5202,30,1,0,0,0,0,0,0,0,0,'4973 - cast 42131 on buddy'),
(497301,10000,0,0,0,0,0,0,0x04,1789,1790,1791,1792,0,0,0,0,'4973 - random Say'),
(497301,10100,54,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'4973 - set SHEATH_STATE_UNARMED(0)');

