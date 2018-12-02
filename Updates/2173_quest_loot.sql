-- Sayge's Fortunes do not drop from mobs
DELETE FROM creature_loot_template WHERE item IN(19229,19237,19238,19239,19240,19241,19243,19245,19246,19247,19248,19249,19250,19251,19252,19253,19254,19255,19256,19266,19423,19424,19451,19453,19454);

-- Remove quest condition and set drop chance to 1 for all Scarab drops in AQ (chance ported from classic-db)
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item IN(20858,20859,20860,20861,20862,20863,20864,20865);

-- i.9308 Grime-Encrusted Object doesn't require quest to drop
UPDATE creature_loot_template SET ChanceOrQuestChance=25 WHERE item=9308;

-- i.17422/17423/17643 doesn't require quest to drop
UPDATE creature_loot_template SET ChanceOrQuestChance=80 WHERE item IN(17422,17423,17643);

-- Several non-questitems had -35% dropchance from c.2377
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(6579,7364,7909,12261) AND entry=2377;
-- A pattern had -15% dropchance from c.2374
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(7364) AND entry=2374;
-- Several non-questitems had -20% dropchance from c.2375
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(11038,7364,6391,1529) AND entry=2375;
-- Several non-questitems had -45% dropchance from c.2376
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(774,3818,3871,6390,7364,7909,10316,11038) AND entry=2376;

-- Bloodsail Orders only drop from Bloodsail Orders g.2087
DELETE FROM gameobject_loot_template WHERE item=3921 AND entry !=1853;
