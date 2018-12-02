-- Reexport script for Jessica Chambers feeding Bortherhood of Light council in Light's Hope Chapel
-- changed timing to avoid this script to overlap with Commander Eligor Dawnbringer's one

-- NPC 16115 (Commander Eligor Dawnbringer) will start the script by allowing NPC 16256 (Jessica Chambers) to move and trigger WP scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=1611501 AND delay=256;
INSERT INTO dbscripts_on_creature_movement VALUES
(1611501, 256, 32, 0, 0, 0, 16256, 25, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');

UPDATE creature SET MovementType=2 WHERE id=16256;

DELETE FROM creature_movement_template WHERE entry=16256;
INSERT INTO creature_movement_template VALUES
(16256, 0, 1, 2300.9, -5345.09, 90.8799, 2.16421, 0, 1625601, NULL),
(16256, 0, 2, 2300.9, -5345.09, 90.8799, 2.16421, 0, 0, NULL),
(16256, 0, 3, 2300.58, -5340.83, 90.8805, 2.81973, 0, 1625602, NULL),
(16256, 0, 4, 2300.58, -5340.83, 90.8805, 2.81973, 0, 0, NULL);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1625601, 1625602);
INSERT INTO dbscripts_on_creature_movement VALUES
(1625601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1625601, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16421, ''),
(1625602, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1625602, 1, 31, 16113, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16113'),
(1625602, 1, 31, 16114, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1625602, 1, 31, 16115, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16115'),
(1625602, 1, 31, 16116, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16116'),
(1625602, 2, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81973, ''),
(1625602, 2, 29, 3, 2, 0, 16113, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2, 29, 3, 2, 0, 16114, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2, 29, 3, 2, 0, 16115, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 2, 29, 3, 2, 0, 16116, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1625602, 5, 0, 0, 0, 0, 0, 0, 0, 2000000635, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 9, 0, 0, 0, 0, 0, 0, 0, 2000000636, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 12, 0, 0, 0, 0, 0, 0, 0, 2000000637, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 16, 0, 0, 0, 0, 16115, 15, 7, 2000000638, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 18, 0, 0, 0, 0, 16113, 15, 7, 2000000639, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 21, 0, 0, 0, 0, 16114, 15, 7, 2000000640, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 23, 0, 0, 0, 0, 0, 0, 0, 2000000641, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 27, 0, 0, 0, 0, 16114, 15, 7, 2000000642, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 33, 0, 0, 0, 0, 16116, 15, 7, 2000000643, 0, 0, 0, 0, 0, 0, 0, ''),
(1625602, 37, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement'),
(1625602, 37, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37, 29, 3, 1, 0, 16113, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37, 29, 3, 1, 0, 16114, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37, 29, 3, 1, 0, 16115, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'),
(1625602, 37, 29, 3, 1, 0, 16116, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000000635 AND 2000000643;
INSERT INTO dbscript_string VALUES
(2000000635, 'Ok, you had the fish platter, Commander. Enjoy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000636, 'Father, you had the bowl of fruit? Right?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000637, 'And for the ladies, roast baby boar. Enjoy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000638, 'My compliments to the chef!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000639, 'Is this a mango? Stupendous!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000640, 'Thank you, Jessica.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000641, 'Please let me know if you need anything else!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000642, 'And I might add, that dress is lovely! You must tell me where you got it from.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000643, 'Indeed... Lovely dress, Jessica.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);
