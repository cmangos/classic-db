-- Deadly Poison 10022
UPDATE creature_template_addon SET auras='3235 10022' WHERE entry=2652; -- Witherbark Venomblood

-- Poison Proc 13299
UPDATE creature_template_addon SET auras='13299' WHERE entry=10043; -- Ribbly's Crony
UPDATE creature_template_addon SET auras='13299' WHERE entry=11452; -- Wildspawn Rogue
UPDATE creature_template_addon SET auras='3417 13299' WHERE entry=11791; -- Putridus Trickster
UPDATE creature_template_addon SET auras='13299' WHERE entry=15196; -- Deathclasp

DELETE FROM creature_template_addon WHERE entry IN (8933,10876);
INSERT INTO creature_template_addon (entry, auras) VALUES
(8933, '13299'), -- Cave Creeper
(10876, '13299'); -- Undead Scarab
