-- Drop linking for creatures that were removed
DELETE FROM creature_linking WHERE guid IN (88846, 88847);
DELETE FROM creature_linking WHERE master_guid=88848;

-- Fix usage of wrong dbscript string
UPDATE dbscripts_on_quest_end SET dataint=2000000135 WHERE id=114 AND delay=2000;

-- Add missing dbscripts_on_creature_movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3, 11);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(3, 0, 0, 20, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Change Movement To 0 - Idle'),
(11, 0, 0, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC - Send AI Event 5 (A) to Self');

-- Remove unused dbscripts_on_creature_movement
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3806, 3807);

-- Fix missing waittime on movegen change
UPDATE creature_movement SET waittime=10 WHERE id=80171 AND point=3;
UPDATE creature_movement SET waittime=10 WHERE id=80181 AND point IN (1, 4);

-- Update dbscripts_on_creature_movement IDs after recent changes (Defias Thug)
UPDATE creature_movement SET script_id=5 WHERE script_id=3801 AND id IN (80171, 80181);
UPDATE creature_movement SET script_id=6 WHERE script_id=3802 AND id IN (80171, 80181);
