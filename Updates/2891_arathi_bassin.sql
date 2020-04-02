-- Remove Arathi Basin Enriched Ration 20062 from wrong templates and correct the one it should be in
UPDATE item_loot_template SET ChanceOrQuestChance=100 WHERE entry=20228 AND item=20062; -- Same as 20231
DELETE FROM creature_loot_template WHERE entry IN (11465,11746,15229) AND item=20062;
