-- Add spawns & pooling for Inconspicuous Landmark 142189 (q.2882)
-- Add invis for Pirate treasure trigger mob 7898

-- https://www.wowhead.com/object=142194/pirates-treasure#comments
-- https://www.wowhead.com/item=9254/cuergos-treasure-map#comments
-- Pirates should spawn ~ 25 to 30y away and walk/run towards the gobject/trigger s.11487,11485,11463
-- sometimes more then 5 pirates spawn (maybe depended on location)
-- .add 9254
-- https://www.wowhead.com/quest=2882/cuergos-gold#comments:id=77637
DELETE FROM gameobject WHERE id=142189;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- old spawns
(170131, 142189, 1, -10119.7, -4052.46, 5.33005, -0.366519, 0, 0, -0.182235, 0.983255, 900, 900, 100, 1),
(170132, 142189, 1, -10249.2, -3981.8, 1.66783, -0.750491, 0, 0, -0.366501, 0.930418, 900, 900, 100, 1),
-- NEW
(170133, 142189, 1, -10217.0244140625, -3817.650634765625, 1.352978944778442382, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 900, 900, 100, 1),
(170134, 142189, 1, -10285.8134765625, -3881.826416015625, 1.070852041244506835, -2.26892542839050292, 0, 0, -0.90630722045898437, 0.422619491815567016, 900, 900, 100, 1),
(170135, 142189, 1, -10154.2001953125, -3948.635009765625, 7.744732856750488281, 2.652894020080566406, 0, 0, 0, 0, 900, 900, 100, 1),
(170136, 142189, 1, -10050.8, -3717.16, 5.44262, 2.65289, 0, 0, 0.970295, 0.241925, 900, 900, 100, 1); -- this is from classic_combined_sniff_db

-- https://www.wowhead.com/quest=2882/cuergos-gold#comments:id=756961

-- Add pooling for Inconspicuous Landmark 142189 (now 6 locations known)
UPDATE gameobject SET spawntimesecsmin=30, spawntimesecsmax=60 WHERE id=142189;

DELETE FROM pool_gameobject_template WHERE id=142189;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(142189, 1816, 0, 'Tanaris - Inconspicuous Landmark (142189)');

DELETE FROM pool_template WHERE entry=1816;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1816, 2, 'Tanaris - Inconspicuous Landmark (142189)'); -- 6 max

-- Pirate treasure trigger mob 7898 - only SMSG_DESTROY_OBJECT packet sent (bunny model)
UPDATE creature_template SET ExtraFlags=ExtraFlags|128 WHERE entry=7898;

-- Add Lootcondition for Cuergo's Key 9275, maybe should be handled by quest_template
-- This condition doesnt seem to work with KEY Slot items currently
-- https://www.wowhead.com/quest=2882/cuergos-gold#comments:id=799046
-- https://www.wowhead.com/item=9275/cuergos-key
-- DELETE FROM conditions WHERE condition_entry=9012 AND type=2;
-- INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
-- (9012, 2, 9275, 1, 0, 0, 0, 'Player Has 1 or more of Item ID 9275 in Inventory');
-- UPDATE creature_loot_template SET condition_id=0 WHERE item=9275 AND entry IN (7899,7901,7902);
