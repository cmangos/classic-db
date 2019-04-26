-- Ramstein the Gorger - Flurry
DELETE FROM creature_template_addon WHERE entry IN (5434, 5435, 10439, 12123, 12124, 12125);
INSERT INTO creature_template_addon VALUES
(10439, 0, 0, 1, 16, 0, 0, '15088'),
-- Sharks - Thrash
(5434, 0, 0, 1, 16, 0, 0, '12787'),
(5435, 0, 0, 1, 16, 0, 0, '12787'),
(12123, 0, 0, 1, 16, 0, 0, '12787'),
(12124, 0, 0, 1, 16, 0, 0, '12787'),
(12125, 0, 0, 1, 16, 0, 0, '12787');

-- Sandfury Speaker - Thrash
UPDATE creature_template_addon SET auras='3417' WHERE entry=11387;

-- Scarlet Inquisitor - Immolate
UPDATE creature_template_addon SET auras='11984' WHERE entry=15162;

-- Obsidian Sentinel/Shard - Spell Reflection
UPDATE creature_template_addon SET auras='9941' WHERE entry=7023;
UPDATE creature_template_addon SET auras='10074' WHERE entry=7209;
