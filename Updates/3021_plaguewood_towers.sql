-- Improve NPCs in Plaguewood Zigurrats

SET @GUID := 100186;
SET @POOL := 15016;

-- Add alternate NPC 8555 (Crypt Fiend) and NPC 8551 (Dark Summoner) spawns to NPC 8553 (Necromancer) in the Plaguewood Zigurrats
DELETE FROM creature WHERE guid BETWEEN @GUID AND @GUID + 7;
INSERT INTO creature VALUES
(@GUID, 8555, 0, 0, 0, 2814.52, -3757.79, 122.507, 3.35103, 345, 345, 0, 0, 3189, 0, 0, 0),
(@GUID + 1, 8555, 0, 0, 0, 2855.31, -3232.34, 134.27, 6.26573, 345, 345, 0, 0, 3189, 0, 0, 0),
(@GUID + 2, 8555, 0, 0, 0, 3135.96, -3867.93, 135.447, 3.33358, 345, 345, 0, 0, 3189, 0, 0, 0),
(@GUID + 3, 8555, 0, 0, 0, 3185.53, -3456.8, 165.529, 4.13643, 345, 345, 0, 0, 3189, 0, 0, 0),
(@GUID + 4, 8551, 0, 0, 0, 2814.52, -3757.79, 122.507, 3.35103, 345, 345, 0, 0, 2470, 5013, 0, 0),
(@GUID + 5, 8551, 0, 0, 0, 2855.31, -3232.34, 134.27, 6.26573, 345, 345, 0, 0, 2470, 5013, 0, 0),
(@GUID + 6, 8551, 0, 0, 0, 3135.96, -3867.93, 135.447, 3.33358, 345, 345, 0, 0, 2470, 5013, 0, 0),
(@GUID + 7, 8551, 0, 0, 0, 3185.53, -3456.8, 165.529, 4.13643, 345, 345, 0, 0, 2470, 5013, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id=855301;
INSERT INTO dbscripts_on_creature_movement VALUES
(855301, 5000, 0, 15, 8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Aura Blackfathom Channeling');

-- Keep correct orientation even when using static WP to trigger script
UPDATE creature_movement SET orientation=3.35103 WHERE id=91940;
UPDATE creature_movement SET orientation=6.26573 WHERE id=91946;
UPDATE creature_movement SET orientation=3.33358 WHERE id=92235;
UPDATE creature_movement SET orientation=4.13643 WHERE id=92264;

-- Add visual channeling aura through addon
DELETE FROM creature_addon WHERE guid BETWEEN @GUID AND @GUID + 7 OR guid IN (91940, 91946, 92235, 92264);
INSERT INTO creature_addon VALUES
(91940, 0, 0, 1, 16, 0, 0, '8734'),
(91946, 0, 0, 1, 16, 0, 0, '8734'),
(92235, 0, 0, 1, 16, 0, 0, '8734'),
(92264, 0, 0, 1, 16, 0, 0, '8734'),

(@GUID, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 1, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 2, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 3, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 4, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 5, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 6, 0, 0, 1, 16, 0, 0, '8734'),
(@GUID + 7, 0, 0, 1, 16, 0, 0, '8734');

-- Create related pooling
DELETE FROM pool_creature WHERE guid BETWEEN @GUID AND @GUID + 7 OR guid IN (91940, 91946, 92235, 92264);
INSERT INTO pool_creature VALUES
(91940, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 4, @POOL, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(91946, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 1, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 5, @POOL + 1, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(92235, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 2, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 6, @POOL + 2, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(92264, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 3, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@GUID + 7, @POOL + 3, 0, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner');

DELETE FROM pool_template WHERE entry BETWEEN @POOL AND @POOL + 3;
INSERT INTO pool_template VALUES
(@POOL, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 1, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 2, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner'),
(@POOL + 3, 1, 'Plaguewood Ziggurat - Necromancer/Crypt Fiend/Dark Summoner');
