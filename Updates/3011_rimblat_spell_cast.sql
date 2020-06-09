-- Add missing script for event 990 triggered by spell 27824 (Rimblat Grows Flower DND)
DELETE FROM dbscripts_on_event WHERE id=9900;
INSERT INTO dbscripts_on_event VALUES
(9900, 1000, 0, 9, 45964, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rimblat - respawn Flower');

-- Make object spawnable by script
UPDATE gameobject SET spawntimesecsmin=-180, spawntimesecsmax=-180 WHERE id=181103;

-- Add missing spell cast for NPC 16134 (Rimblat)
DELETE FROM dbscripts_on_creature_movement WHERE id=1613401 AND command=15;
INSERT INTO dbscripts_on_creature_movement VALUES
(1613401, 201500, 0, 15, 27824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114');
