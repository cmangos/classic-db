-- Added missing models for NPC 11598 (Risen Guardian) in Scholomance
-- Fixed the corresponding model ID (bounding radius and combat reach)
-- Source UDB
UPDATE creature_template SET ModelId2 = 5432, ModelId3 = 533, ModelId4 = 10975 WHERE Entry = 11598;

DELETE FROM creature_model_info WHERE modelid IN (775, 533, 5432, 10975);
INSERT INTO creature_model_info VALUES
(533, 0.5122, 1.95, 2, 0, 0),
(775, 0.591, 2.25, 2, 0, 0),
(5432, 0.5205, 1.5, 2, 0, 0),
(10975, 0.5205, 1.5, 2, 0, 0);
