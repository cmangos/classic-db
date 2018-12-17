-- Remove creature and skinning loot sources for item 12366 (Thick Yeti Fur) that were only added in patch 2.4.3
-- This closes #203
DELETE FROM creature_loot_template WHERE entry IN (7459,7460) AND item IN (12366);
DELETE FROM skinning_loot_template WHERE entry IN (7457,7458,7459,7460) AND item IN (12366);
