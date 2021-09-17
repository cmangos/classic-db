DELETE FROM dbscripts_on_quest_start WHERE id=2608;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(2608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000010006, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil 7207 - q.2608 start');

DELETE FROM dbscript_string WHERE entry IN (2000000020,2000000021); -- "That's interesting...","I need to consult Noram and Horatio."
DELETE FROM dbscript_string WHERE entry BETWEEN 2000010006 AND 2000010009;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES
(2000010006, 'Just /lay down anywhere, $N. I promise, this won''t hurt a bit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3567, 'Doc Mixilpixil 7207 - q.2608 start'),
(2000010007, 'Very interesting!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3565, NULL),
(2000010008, '%s seems to be talking to the squirrel and the statue. He periodically points in your direction.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 3566, NULL),
(2000010009, 'This doesn''t look good!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3568, NULL);

-- Implemented it this way (/Lay while targeting 7207)
SET @CGUID := 9011; -- condition_entry
SET @RGUID := 9003; -- dbscripts_on_relay

DELETE FROM conditions WHERE condition_entry=@CGUID;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@CGUID, 9, 2608, 0, 0, 0, 0, '');

DELETE FROM dbscripts_on_relay WHERE id=@RGUID;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(@RGUID, 0, 0, 29, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags Removed'),
(@RGUID, 1000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(@RGUID, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 2000010007, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(@RGUID, 10000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8805.29, 338.5, 95.09, 1.7, 0, ''),
(@RGUID, 13000, 0, 0, 0, 0, 0, 0, 0, 0, 2000010008, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 6000?
(@RGUID, 17000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8804.15, 325.58, 95.09, 4.9, 0, ''),
(@RGUID, 25000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8805.56, 331.968, 95.0986, 3.1, 0, ''),
(@RGUID, 29000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15905, 0, ''),
(@RGUID, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 2000010009, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(@RGUID, 30000, 1, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NPCFlags added');
