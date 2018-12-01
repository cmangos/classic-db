-- Add script for NPC 16134 (Rimbat Earthshatter) and NPC 16135 (Rayne) in Light's Hope Chapel
-- This closes https://github.com/cmangos/issues/issues/1482

UPDATE creature SET MovementType=2 WHERE id=16134;

DELETE FROM creature_movement_template WHERE entry=16134;
INSERT INTO creature_movement_template VALUES
(16134, 0, 1, 2276.66, -5325.3, 88.7947, 4.81711, 480000, 1613401, NULL);

DELETE FROM dbscripts_on_creature_movement WHERE id=1613401;
INSERT INTO dbscripts_on_creature_movement VALUES
(1613401, 201, 31, 16135, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1613401, 202, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1613401, 202, 29, 3, 2, 0, 16135, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1613401, 202, 0, 0, 0, 0, 0, 0, 0, 2000000670, 0, 0, 0, 0, 0, 0, 0, ''),
(1613401, 209, 0, 0, 0, 0, 16135, 15, 7, 2000000671, 0, 0, 0, 0, 0, 0, 0, ''),
(1613401, 213, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1613401, 213, 29, 3, 1, 0, 16135, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000000670 AND 2000000671;
INSERT INTO dbscript_string VALUES
(2000000670, 'Watch, druid. The earth still breathes. It yearns to be cleansed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000671, 'That is wondrous, Rimblat! Even this foul, sundered earth is not beyond healing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);
