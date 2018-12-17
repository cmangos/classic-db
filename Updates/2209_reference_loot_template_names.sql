-- Remove TBC reference_loot_template_names entries
-- Thanks @Anonxs
DELETE FROM reference_loot_template_names  WHERE entry IN (41000,50500,50501);
