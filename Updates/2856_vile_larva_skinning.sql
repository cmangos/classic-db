-- vile larva should not be skinnable
UPDATE creature_template SET SkinningLootId=0 WHERE entry IN(12218);
