-- Sentinel Keldara Sunblade 8397
UPDATE creature_template SET LootId=0 WHERE entry=8397;
UPDATE creature_template_addon SET bytes1=0 WHERE entry=8397;
DELETE FROM creature_loot_template WHERE entry=8397;
