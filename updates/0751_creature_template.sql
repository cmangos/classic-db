-- Revert some NPCs to their elite stats because they were elite in Classic (rank is already correct, but not stats)
-- They were using TBC stats instead of their Classic ones
-- Damn patch 2.3
UPDATE creature_template SET MinLevelHealth = 1389, MaxLevelHealth = 1482, Healthmultiplier = 3 WHERE Entry = 436; -- Blackrock Shadowcaster
UPDATE creature_template SET MinLevelHealth = 984, MaxLevelHealth = 1068, Healthmultiplier = 3 WHERE Entry = 594; -- Defias Henchman
UPDATE creature_template SET MinLevelHealth = 855, MaxLevelHealth = 921, Healthmultiplier = 3 WHERE Entry = 619; -- Defias Conjurer
UPDATE creature_template SET MinLevelHealth = 1158, MaxLevelHealth = 1251, Healthmultiplier = 3 WHERE Entry = 623; -- Skeletal Miner
UPDATE creature_template SET MinLevelHealth = 2400, MaxLevelHealth = 2559, Healthmultiplier = 3 WHERE Entry = 1051; -- Dark Iron Dwarf
UPDATE creature_template SET MinLevelHealth = 2559, MaxLevelHealth = 2715, Healthmultiplier = 3 WHERE Entry = 1052; -- Dark Iron Saboteur
UPDATE creature_template SET MinLevelHealth = 2715, MaxLevelHealth = 2865, Healthmultiplier = 3 WHERE Entry = 1053; -- Dark Iron Tunneler
UPDATE creature_template SET MinLevelHealth = 2865, MaxLevelHealth = 3018, Healthmultiplier = 3 WHERE Entry = 1054; -- Dark Iron Demolitionist
UPDATE creature_template SET MinLevelHealth = 1251, MaxLevelHealth = 1347, Healthmultiplier = 3 WHERE Entry = 1178; -- Mo'grosh Ogre
UPDATE creature_template SET MinLevelHealth = 1131, MaxLevelHealth = 1212, Healthmultiplier = 3 WHERE Entry = 1179; -- Mo'grosh Enforcer
UPDATE creature_template SET MinLevelHealth = 1347, MaxLevelHealth = 1452, Healthmultiplier = 3 WHERE Entry = 1180; -- Mo'grosh Brute
UPDATE creature_template SET MinLevelHealth = 1131, MaxLevelHealth = 1212, Healthmultiplier = 3 WHERE Entry = 1181; -- Mo'grosh Shaman
UPDATE creature_template SET MinLevelHealth = 1212, MaxLevelHealth = 1299, Healthmultiplier = 3 WHERE Entry = 1183; -- Mo'grosh Mystic
UPDATE creature_template SET MinLevelHealth = 1452, MaxLevelHealth = 1452, Healthmultiplier = 3 WHERE Entry = 1225; -- Ol' Sooty
UPDATE creature_template SET MinLevelHealth = 666, MaxLevelHealth = 666, Healthmultiplier = 3 WHERE Entry = 1388; -- Vagash
UPDATE creature_template SET MinLevelHealth = 1068, MaxLevelHealth = 1158, Healthmultiplier = 3 WHERE Entry = 1725; -- Defias Watchman
UPDATE creature_template SET MinLevelHealth = 921, MaxLevelHealth = 990, Healthmultiplier = 3 WHERE Entry = 1726; -- Defias Magician
UPDATE creature_template SET MinLevelHealth = 528, MaxLevelHealth = 528, Healthmultiplier = 3 WHERE Entry = 2166; -- Oakenscowl
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, Healthmultiplier = 3 WHERE Entry = 2254; -- Crushridge Mauler
UPDATE creature_template SET MinLevelHealth = 2910, MaxLevelHealth = 3012, Healthmultiplier = 3 WHERE Entry = 2255; -- Crushridge Mage
UPDATE creature_template SET MinLevelHealth = 4185, MaxLevelHealth = 4377, Healthmultiplier = 3 WHERE Entry = 2256; -- Crushridge Enforcer
UPDATE creature_template SET MinLevelHealth = 5148, MaxLevelHealth = 5148, Healthmultiplier = 3 WHERE Entry = 2257; -- Mug'thol
UPDATE creature_template SET MinLevelHealth = 4377, MaxLevelHealth = 4572, Healthmultiplier = 3 WHERE Entry = 2287; -- Crushridge Warmonger
UPDATE creature_template SET MinLevelHealth = 3171, MaxLevelHealth = 3171, Healthmultiplier = 3 WHERE Entry = 2304; -- Captain Ironhill
UPDATE creature_template SET MinLevelHealth = 2379, MaxLevelHealth = 2512, Healthmultiplier = 3.25 WHERE Entry = 2344; -- Dun Garok Mountaineer
UPDATE creature_template SET MinLevelHealth = 2941, MaxLevelHealth = 3104, Healthmultiplier = 3.25 WHERE Entry = 2345; -- Dun Garok Rifleman
UPDATE creature_template SET MinLevelHealth = 2512, MaxLevelHealth = 2636, Healthmultiplier = 3.25 WHERE Entry = 2346; -- Dun Garok Priest
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, Healthmultiplier = 3 WHERE Entry = 2416; -- Crushridge Plunderer
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4572, Healthmultiplier = 3 WHERE Entry = 2421; -- Muckrake
UPDATE creature_template SET MinLevelHealth = 4377, MaxLevelHealth = 4377, Healthmultiplier = 3 WHERE Entry = 2422; -- Glommus
UPDATE creature_template SET MinLevelHealth = 4008, MaxLevelHealth = 4185, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2569; -- Boulderfist Mauler
UPDATE creature_template SET MinLevelHealth = 3405, MaxLevelHealth = 3540, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2570; -- Boulderfist Shaman
UPDATE creature_template SET MinLevelHealth = 4377, MaxLevelHealth = 4572, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2571; -- Boulderfist Lord
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, Healthmultiplier = 3 WHERE Entry = 2588; -- Syndicate Prowler
UPDATE creature_template SET MinLevelHealth = 5757, MaxLevelHealth = 5970, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2641; -- Vilebranch Headhunter
UPDATE creature_template SET MinLevelHealth = 4179, MaxLevelHealth = 4329, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2642; -- Vilebranch Shadowcaster
UPDATE creature_template SET MinLevelHealth = 5970, MaxLevelHealth = 6186, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2643; -- Vilebranch Berserker
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 6414, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2644; -- Vilebranch Hideskinner
UPDATE creature_template SET MinLevelHealth = 4950, MaxLevelHealth = 5130, Healthmultiplier = 3 WHERE Entry = 2645; -- Vilebranch Shadow Hunter
UPDATE creature_template SET MinLevelHealth = 6414, MaxLevelHealth = 6645, Healthmultiplier = 3 WHERE Entry = 2646; -- Vilebranch Blood Drinker
UPDATE creature_template SET MinLevelHealth = 6327, MaxLevelHealth = 6556, Healthmultiplier = 3.7, armormultiplier = 1 WHERE Entry = 2647; -- Vilebranch Soul Eater
UPDATE creature_template SET MinLevelHealth = 6645, MaxLevelHealth = 6876, Healthmultiplier = 3, armormultiplier = 1 WHERE Entry = 2648; -- Vilebranch Aman'zasi Guard
UPDATE creature_template SET MinLevelHealth = 6645, MaxLevelHealth = 6876, Healthmultiplier = 3 WHERE Entry = 2681; -- Vilebranch Raiding Wolf
UPDATE creature_template SET MinLevelHealth = 5334, MaxLevelHealth = 5334, Healthmultiplier = 3.5 WHERE Entry = 2773; -- Or'Kalar
UPDATE creature_template SET MinLevelHealth = 984, MaxLevelHealth = 1068, Healthmultiplier = 3 WHERE Entry = 3630; -- Deviate Coiler
UPDATE creature_template SET MinLevelHealth = 1068, MaxLevelHealth = 1158, Healthmultiplier = 3 WHERE Entry = 3631; -- Deviate Stinglash
UPDATE creature_template SET MinLevelHealth = 984, MaxLevelHealth = 1068, Healthmultiplier = 3 WHERE Entry = 3632; -- Deviate Creeper
UPDATE creature_template SET MinLevelHealth = 1068, MaxLevelHealth = 1158, Healthmultiplier = 3 WHERE Entry = 3633; -- Deviate Slayer
UPDATE creature_template SET MinLevelHealth = 1068, MaxLevelHealth = 1158, Healthmultiplier = 3 WHERE Entry = 3638; -- Devouring Ectoplasm
UPDATE creature_template SET MinLevelHealth = 1068, MaxLevelHealth = 1158, Healthmultiplier = 3 WHERE Entry = 3641; -- Deviate Lurker
UPDATE creature_template SET MinLevelHealth = 2097, MaxLevelHealth = 2250, Healthmultiplier = 3 WHERE Entry = 4061; -- Mirkfallon Dryad
UPDATE creature_template SET MinLevelHealth = 1563, MaxLevelHealth = 1686, Healthmultiplier = 3 WHERE Entry = 4065; -- Blackrock Sentry
UPDATE creature_template SET MinLevelHealth = 2097, MaxLevelHealth = 2097, Healthmultiplier = 3 WHERE Entry = 4409; -- Gatekeeper Kordurus
UPDATE creature_template SET MinLevelHealth = 1815, MaxLevelHealth = 1953, Healthmultiplier = 3 WHERE Entry = 4462; -- Blackrock Hunter
UPDATE creature_template SET MinLevelHealth = 1953, MaxLevelHealth = 2097, Healthmultiplier = 3 WHERE Entry = 4464; -- Blackrock Gladiator
UPDATE creature_template SET MinLevelHealth = 5970, MaxLevelHealth = 6186, Healthmultiplier = 3 WHERE Entry = 4468; -- Jade Sludge
UPDATE creature_template SET MinLevelHealth = 4605, MaxLevelHealth = 4776, Healthmultiplier = 3 WHERE Entry = 4469; -- Emerald Ooze
UPDATE creature_template SET MinLevelHealth = 1452, MaxLevelHealth = 1563, Healthmultiplier = 3 WHERE Entry = 4788; -- Fallenroot Satyr
UPDATE creature_template SET MinLevelHealth = 2400, MaxLevelHealth = 2559, Healthmultiplier = 3 WHERE Entry = 6523; -- Dark Iron Rifleman
UPDATE creature_template SET MinLevelHealth = 4884, MaxLevelHealth = 4884, Healthmultiplier = 2 WHERE Entry = 7734; -- Ilifar
UPDATE creature_template SET MinLevelHealth = 4884, MaxLevelHealth = 4884, Healthmultiplier = 2 WHERE Entry = 7735; -- Felcular
UPDATE creature_template SET MinLevelHealth = 1452, MaxLevelHealth = 1452, Healthmultiplier = 3 WHERE Entry = 10581; -- Young Arikara
UPDATE creature_template SET MinLevelHealth = 15720, MaxLevelHealth = 15720, Healthmultiplier = 5 WHERE Entry = 11387; -- Sandfury Speaker
UPDATE creature_template SET MinLevelHealth = 22008, MaxLevelHealth = 22008, Healthmultiplier = 7 WHERE Entry = 11389; -- Bloodscalp Speaker
UPDATE creature_template SET MinLevelHealth = 22008, MaxLevelHealth = 22008, Healthmultiplier = 7 WHERE Entry = 11390; -- Skullsplitter Speaker
UPDATE creature_template SET MinLevelHealth = 8352, MaxLevelHealth = 8613, Healthmultiplier = 3 WHERE Entry = 11721; -- Hive'Ashi Worker
UPDATE creature_template SET MinLevelHealth = 1562, MaxLevelHealth = 1562, Healthmultiplier = 3 WHERE Entry = 11921; -- Besseleth
UPDATE creature_template SET MinLevelHealth = 2250, MaxLevelHealth = 2250, Healthmultiplier = 3 WHERE Entry = 12579; -- Bloodfury Ripper
UPDATE creature_template SET MinLevelHealth = 2000, MaxLevelHealth = 2000, Healthmultiplier = 0.6553 WHERE Entry = 16427; -- Soldier of the Frozen Wastes
UPDATE creature_template SET MinLevelHealth = 68487, MaxLevelHealth = 68487, Healthmultiplier = 22.44 WHERE Entry = 16429; -- Soul Weaver

-- Clean-up
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;