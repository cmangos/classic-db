-- Add Loot for Advanced Target Dummy 2674
UPDATE creature_template SET LootId=2674 WHERE entry=2674;
DELETE FROM creature_loot_template WHERE entry=2674;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2674, 7191, 10, 0, 1, 1, 0, 'Fused Wiring'),
(2674, 4387, 60, 0, 1, 1, 0, 'Iron Strut'),
(2674, 4389, 60, 0, 1, 1, 0, 'Gyrochronatom'),
(2674, 4382, 70, 0, 1, 1, 0, 'Bronze Framework'),
(2674, 4234, 90, 0, 2, 2, 0, 'Heavy Leather');
