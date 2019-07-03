-- Researched Auras Poison Proc 3616, Torch Burn 5680, Phasing Stealth 6718, Slowing Poison 8601

-- Add Poison Proc 3616 for 
UPDATE creature_template_addon SET auras='3616' WHERE entry IN (
127, -- Murloc Tidehunter
505,  -- Greater Tarantula
2208, -- Greymist Tidehunter
2651, -- Witherbark Hideskinner
2686, -- Witherbark Broodguard
3260, -- Bristleback Water Seeker
5645, -- Sandfury Hideskinner
5856, -- Glassweb Spider
6551, -- Gorishi Wasp
7605, -- Raven
8762, -- Timberweb Recluse
17236 -- Tcha'kaz
);

DELETE FROM creature_template_addon WHERE entry IN (8556,10882);
INSERT INTO creature_template_addon (entry, auras) VALUES
(7349, '3616'), -- Tomb Fiend
(8556, '3616'), -- Crypt Walker
(10882, '3616'); -- Arikara

-- Add Torch Burn 5680 for 
UPDATE creature_template_addon SET auras='5680' WHERE entry IN (
2977, -- Venture Co. Taskmaster
3736 -- Darkslayer Mordenthal
);

-- Add Phasing Stealth 6718 for
-- based on https://github.com/TrinityCore/TrinityCore/issues/23221
UPDATE creature_template_addon SET auras='6718' WHERE entry IN (
3804 -- Forsaken Intruder
);

UPDATE creature_template_addon SET auras='3616 6718' WHERE entry=3806; -- Forsaken Infiltrator
UPDATE creature_template_addon SET auras='6718 8601' WHERE entry=3807; -- Forsaken Assassin

-- Add Slowing Poison 8601 for 
UPDATE creature_template_addon SET auras='8601' WHERE entry IN (
544, -- Murloc Nightcrawler
1110, -- Skeletal Raider
5226, -- Murk Worm
5422, -- Scorpid Hunter
6554, -- Gorishi Stinger
8601, -- Noxious Plaguebat
11793, -- Celebrian Dryad
14532  -- Razzashi Venombrood
);

UPDATE creature_template_addon SET auras='8601 18950 22766' WHERE entry=11456; -- Wildspawn Shadowstalker

DELETE FROM creature_template_addon WHERE entry=10041;
INSERT INTO creature_template_addon (entry, auras) VALUES (10041, '8601'); -- Gorishi Hive Queen

UPDATE creature_template_addon SET auras='3616 8601' WHERE entry IN (
909, -- Defias Night Blade
4971 -- Slim's Friend
);

UPDATE creature_template_addon SET auras='6408 8601' WHERE entry=7110; -- Jadefire Shadowstalker

-- Add Putrid Breath 21061 for
UPDATE creature_template_addon SET auras='21061' WHERE entry=11790; -- Putridus Satyr
UPDATE creature_template_addon SET auras='3417 13299 21061' WHERE entry=11791; -- Putridus Trickster


UPDATE creature_template_addon SET auras='11441' WHERE entry=7329; -- Withered Quilguard: Withered Touch 11441
UPDATE creature_template_addon SET auras='11441' WHERE entry=8606; -- Living Decay: Withered Touch 11441
UPDATE creature_template_addon SET auras='12246' WHERE entry=7332; -- Withered Spearhide: Infected Spine 12246

-- Add Ghoul Rot 12539 for
UPDATE creature_template_addon SET auras='12539' WHERE entry IN (
7347, -- Boneflayer Ghoul
7348 -- Thorn Eater Ghoul
);

DELETE FROM creature_template_addon WHERE entry=7351;
INSERT INTO creature_template_addon (entry, auras) VALUES (7351, '12254'); -- Tomb Reaver: Virulent Poison proc

-- Add Chilling Touch 12529 for
UPDATE creature_template_addon SET auras='12529' WHERE entry IN (
7352, -- Freezing Soul
7353 -- Freezing Spirit
);

DELETE FROM creature_template_addon WHERE entry=7356;
INSERT INTO creature_template_addon (entry, auras) VALUES (7356, '12947'); -- Plaguemaw the Rotting: Withered Touch

UPDATE creature_template_addon SET auras='12556' WHERE entry=7358; -- Amnennar the Coldbringer: Frost Armor 12556
UPDATE creature_template_addon SET auras='8876 12627' WHERE entry=7358; -- Glutton: Thrash 8876

UPDATE creature_template_addon SET auras='12099' WHERE entry=5277; -- Nightmare Scalebane: Shield Spike 12099

UPDATE creature_template_addon SET auras='7276' WHERE entry=7605; -- Raven: Poison Proc 7276
UPDATE creature_template_addon SET auras='7276' WHERE entry=3767; -- Bleakheart Trickster: Poison Proc 7276

UPDATE creature_template_addon SET auras='11838' WHERE entry=14880; -- Razzashi Skitterer: Hate to Zero 11838

