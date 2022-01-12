-- CCSDB - classic-combined-sniff-database
-- Correct data1 and drop chances for loot of Arena Spoils 181074 from CCSDB
UPDATE gameobject_template SET data1=17918 WHERE entry=181074;
UPDATE gameobject_loot_template SET entry=17918 WHERE entry=181074;
UPDATE gameobject_loot_template SET ChanceOrQuestChance=34.5 WHERE item=22305;	-- previous value: 38
UPDATE gameobject_loot_template SET ChanceOrQuestChance=18 WHERE item=22317;	-- previous value: 17
UPDATE gameobject_loot_template SET ChanceOrQuestChance=25 WHERE item=22318;	-- previous value: 26
UPDATE gameobject_loot_template SET ChanceOrQuestChance=22.5 WHERE item=22330;	-- previous value: 19
