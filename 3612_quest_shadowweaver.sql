-- Raze respawns in 5 seconds.
UPDATE creature SET spawntimesecsmin=5, spawntimesecsmax=5 WHERE id=8441;

-- Completion script for quest Shadoweaver.
DELETE FROM dbscripts_on_quest_end WHERE id="3379";
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, dataint,comments) VALUES 
('3379', '0', '0', '0', '0', '0', '8441', '8', '4415', 'Shadoweaver: Raze - Say Text'),
('3379', '3000', '18', '0', '0', '0', '8441', '8', '0', 'Shadoweaver: Raze - Despawn Creature');

UPDATE quest_template SET CompleteScript='3379' WHERE (entry='3379');
