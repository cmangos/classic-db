-- Eranikus the Chained
-- spawned from item 10455 (must whisper to player random text)
DELETE FROM dbscript_random_templates WHERE id = 6; -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(6,0,-1552,0),
(6,0,-1553,0),
(6,0,-1554,0),
(6,0,-1555,0),
(6,0,-1556,0),
(6,0,-1557,0),
(6,0,-1558,0),
(6,0,-1559,0),
(6,0,-1560,0),
(6,0,-1561,0);
