-- Fixed DB errors
-- Remove loot id from creature that have no loot
UPDATE creature_template SET LootId=0 WHERE Entry IN (2870, 11054);

-- Fix non existant template id from placeholder trainer
UPDATE creature_template SET TrainerTemplateId=0 WHERE Entry=5037;
