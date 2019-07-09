-- Improved Blocking 3418
UPDATE creature_template_addon SET auras='3418' WHERE entry=2268; -- Hillsbrad Footman
UPDATE creature_template_addon SET auras='643 3418' WHERE entry=1036; -- Dragonmaw Centurion
UPDATE creature_template_addon SET auras='3418' WHERE entry=1666; -- Kam Deepfury
DELETE FROM creature_template_addon WHERE entry=2090;
INSERT INTO creature_template_addon (entry, auras) VALUES
(2090, '3418'); -- Ma'ruk Wyrmscale

-- Improved Blocking III 3637
UPDATE creature_template_addon SET auras='3637 18146' WHERE entry=814; -- Sergeant Malthus
UPDATE creature_template_addon SET auras='3637' WHERE entry=937; -- Kurzen Jungle Fighter
UPDATE creature_template_addon SET auras='3637' WHERE entry=2547; -- Ironpatch
UPDATE creature_template_addon SET auras='3637 5301' WHERE entry=7604; -- Sergent Bly

-- Violent Shield 3284
UPDATE creature_template_addon SET auras='3284' WHERE entry=978; -- Kurzen Subchief
UPDATE creature_template_addon SET auras='3284' WHERE entry=2271; -- Dalaran Shield Guard

-- Thrash 12787
UPDATE creature_template_addon SET auras='12787' WHERE entry=8718; -- Manahound

-- Cast Defensive State (DND) 5301
UPDATE creature_template_addon SET auras='5301' WHERE entry=13777; -- Sergeant Durgen Stormpike
UPDATE creature_template_addon SET auras='5301' WHERE entry=13841; -- Lieutenant Haggerdin

UPDATE creature_template_addon SET auras='8876 12627' WHERE entry=8567; -- Glutton

-- Living Flame Passive 5111
DELETE FROM creature_template_addon WHERE entry=3417;
INSERT INTO creature_template_addon (entry, auras) VALUES
(3417, '5111'); -- Living Flame
