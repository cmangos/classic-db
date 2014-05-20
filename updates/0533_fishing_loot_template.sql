-- Fix missing fishing loot for quest 1580, "Electropellers".
-- Thanks to Neotmiren for pointing and Neotmiren and evil-at-wow for fixing
-- This closes #441 
DELETE FROM `fishing_loot_template` WHERE item = 6718;
INSERT INTO `fishing_loot_template` (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(445, 6718, -20, 0, 1, 1, 0), -- Cliffspring Falls
(448, 6718, -20, 0, 1, 1, 0), -- Grove of the Ancients
(454, 6718, -20, 0, 1, 1, 0), -- Wildbend River
(456, 6718, -20, 0, 1, 1, 0); -- Cliffspring River
