-- Add missing gossip menu and option for NPC 15526 (Meridith the Mermaiden) in Tanaris
-- This is helpful for completing quest 8597 (Draconic for Dummies) though not mandatory

-- Conditions depending on quest status
DELETE FROM conditions WHERE condition_entry IN (225, 226, 227);
INSERT INTO conditions VALUES
(225, 8, 8599, 0, 'Quest ID 8599 Rewarded'),
(226, 9, 8597, 0, 'Quest ID 8597 Taken'),
(227, -1, 225, 226, '(Quest ID 8599 Rewarded AND Quest ID 8597 Taken)');

DELETE FROM gossip_menu WHERE entry=6658 AND text_id=7917;
INSERT INTO gossip_menu VALUES (6658, 7917, 0, 225);

-- Items below were ported from YTDB.
-- Menu option
DELETE FROM gossip_menu_option WHERE menu_id=6658 AND id=0;
INSERT INTO gossip_menu_option VALUES (6658, 0, 0, 'That would be wonderful! Thank you, Meridith.', 1, 1, -1, 0, 665801, 0, 0, NULL, 227);

-- Add script for casting buff onto player
DELETE FROM dbscripts_on_gossip WHERE id=665801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(665801, 0, 0, 0, 0, 0, 0, 0, 2000000009, 0, 0, 0, 0, 0, 0, 0, 'Meridith - Say'),
(665801, 0, 15, 25678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Meridith - Cast Siren\'s Song');

DELETE FROM dbscript_string WHERE entry=2000000009;
INSERT INTO dbscript_string (entry, content_default) VALUES (2000000009, 'Lovely song, ain\'t it?');
