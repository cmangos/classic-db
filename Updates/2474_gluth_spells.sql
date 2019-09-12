-- Add DB support for Gluth encounter in Naxxramas: missing spell targets and DB script event

-- Call all Zombie Chow - periodic call effect
DELETE FROM spell_script_target WHERE entry=29682;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(29682, 1, 16360, 0);

-- Zombie Chow Search - periodic search effect
DELETE FROM spell_script_target WHERE entry=28236;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28236, 1, 16360, 0);

-- Zombie Chow Search - heal effect
DELETE FROM spell_script_target WHERE entry=28238;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28238, 1, 15932, 0);

-- Decimate event script
DELETE FROM dbscript_string WHERE entry=2000000041;
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000041, '%s devours all nearby zombies!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL);

DELETE FROM dbscripts_on_event WHERE id=10495;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10495, 7, 0, 0, 0, 0, 0, 0, 0, 2000000041, 0, 0, 0, 0, 0, 0, 0, ''),
(10495, 7, 15, 28404, 0, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, '');
