-- Fixed quest 1221 (Blueleaf Tubers): pre-required quest items were not obtainable
UPDATE gameobject_template SET data8=1221 WHERE entry IN (21277, 21530, 68865);
UPDATE gameobject_loot_template SET ChanceOrQuestChance=100 WHERE entry IN (3450, 3502, 4059);
