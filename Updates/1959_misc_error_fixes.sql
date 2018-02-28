-- Various errors fixed

-- Fixed spawn distance of idle NPCs
UPDATE creature SET spawndist=0 WHERE id IN(15561, 15567, 15607);

-- Fixed creatures linked to wrong master
UPDATE creature_linking SET master_guid=139970 WHERE guid IN (139971, 139972);

-- Removed waypoints for non existing NPC
DELETE FROM creature_movement WHERE id=38909;

-- Added missing generic scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1006, 1011);
INSERT INTO dbscripts_on_creature_movement VALUES
(1006, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_QUESTION'),
(1011, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_LAUGH');

-- Fixed swapped orientation / script ID for a traveling NPC
UPDATE creature_movement SET orientation=100, script_id=0 WHERE id=38775;
