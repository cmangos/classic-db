-- Correct & Align Mining Chance for Rough Stone, Coarse Stone, Heavy Stone, Solid Stone, Dense Stone
UPDATE gameobject_loot_template SET ChanceOrQuestChance=44 WHERE entry IN (1502) AND item=2835; -- 25
UPDATE gameobject_loot_template SET ChanceOrQuestChance=66 WHERE entry IN (1735,2626,18092) AND item=2835; -- 25

UPDATE gameobject_loot_template SET ChanceOrQuestChance=44 WHERE entry IN (1503) AND item=2836; -- 25
UPDATE gameobject_loot_template SET ChanceOrQuestChance=66 WHERE entry IN (1736,2627,18093) AND item=2836; -- 25

UPDATE gameobject_loot_template SET ChanceOrQuestChance=40 WHERE entry IN (1505) AND item=2838; -- 40.1

UPDATE gameobject_loot_template SET ChanceOrQuestChance=40 WHERE entry IN (1742,13961) AND item=7912; -- 39.9

UPDATE gameobject_loot_template SET ChanceOrQuestChance=40 WHERE entry IN (9597,13960,12883,17241) AND item=12365; -- 39.7 - 41.5
