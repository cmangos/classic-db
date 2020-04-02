-- Remove Mageweave Cloth from High Level Npcs that should not drop it
DELETE FROM `creature_loot_template` WHERE `item` = 4338 AND `entry` IN (
5977, -- 53	54	Dreadmaul Mauler
6004, -- 51	52	Shadowsworn Cultist
7034, -- 51	52	Firegut Ogre Mage
7110, -- 51	52	Jadefire Shadowstalker
7112, -- 51	52	Jaedenar Cultist
7115, -- 51	52	Jaedenar Adept
6005, -- 52	53	Shadowsworn Thug
6006, -- 52	53	Shadowsworn Adept
6202, -- 52	53	Legashi Hellcaller
7035, -- 52	53	Firegut Brute
7040, -- 52	53	Black Dragonspawn
7107, -- 52	53	Jadefire Trickster
7108, -- 52	53	Jadefire Betrayer
7114, -- 52	53	Jaedenar Enforcer
11443, -- 52	53	Gordok Ogre-Mage
1835, -- 53	54	Scarlet Invoker
7041, -- 53	54	Black Wyrmkin
7111, -- 53	54	Jadefire Hellcaller
7118, -- 53	54	Jaedenar Darkweaver
7120, -- 53	54	Jaedenar Warlock
7442, -- 53	54	Winterfall Pathfinder
7447, -- 53	55	Fledgling Chillwind
7669, -- 53	54	Servant of Grol
7885, -- 53	54	Spitelash Battlemaster
8540, -- 53	55	Torn Screamer
8555, -- 53	54	Crypt Stalker
9416, -- 53	54	Scarshield Worg
9447, -- 53	54	Scarlet Warder
9452, -- 53	55	Scarlet Enchanter
11290, -- 53	54	Mossflayer Zombie
11440, -- 53	54	Gordok Enforcer
11442, -- 53	54	Gordok Mauler
1787, -- 54	55	Skeletal Executioner
1794, -- 54	55	Soulless Ghoul
1833, -- 54	55	Scarlet Knight
1884, -- 54	56	Scarlet Lumberjack
5978, -- 54	55	Dreadmaul Warlock
7055, -- 54	55	Blackrock Worg
7441, -- 54	55	Winterfall Totemic
7523, -- 54	55	Suffering Highborne
7886, -- 54	55	Spitelash Enchantress
9098, -- 54	55	Scarshield Spellbinder
9201, -- 54	55	Spirestone Ogre Magus
11291, -- 54	55	Unliving Mossflayer
1795, -- 55	56	Searing Ghoul
1834, -- 55	56	Scarlet Paladin
7026, -- 55	56	Blackrock Sorcerer
7440, -- 55	56	Winterfall Den Watcher
7671, -- 55	56	Servant of Sevine
8525, -- 55	56	Scourge Warder
8538, -- 55	56	Unseen Servant
8541, -- 55	57	Hate Shrieker
8551, -- 55	56	Dark Summoner
9862, -- 55	55	Jaedenar Legionnaire
10382, -- 55	56	Mangled Cadaver
10390, -- 55	56	Skeletal Guardian
11451, -- 55	56	Wildspawn Satyr
11454, -- 55	56	Wildspawn Betrayer
4493, -- 56	57	Scarlet Avenger
7027, -- 56	57	Blackrock Slayer
7042, -- 56	57	Flamescale Dragonspawn
7439, -- 56	57	Winterfall Shaman
8531, -- 56	57	Gibbering Ghoul
8548, -- 56	57	Vile Tutor
9241, -- 56	57	Smolderthorn Headhunter
9261, -- 56	57	Firebrand Darkweaver
9262, -- 56	57	Firebrand Invoker
9269, -- 56	57	Smolderthorn Seer
10827, -- 56	56	Deathspeaker Selendre
1836, -- 57	58	Scarlet Cavalier
4472, -- 57	58	Haunting Vision
4494, -- 57	58	Scarlet Spellbinder
7043, -- 57	58	Flamescale Wyrmkin
7438, -- 57	58	Winterfall Ursa
8539, -- 57	58	Eyeless Watcher
8542, -- 57	59	Death Singer
8543, -- 57	58	Stitched Horror
8560, -- 57	58	Mossflayer Scout
9197, -- 57	58	Spirestone Battle Mage
9263, -- 57	58	Firebrand Dreadweaver
9264, -- 57	58	Firebrand Pyromancer
9268, -- 57	58	Smolderthorn Berserker
10405, -- 57	58	Plague Ghoul
10408, -- 57	58	Rockwing Gargoyle
10463, -- 57	58	Shrieking Banshee
11444, -- 57	58	Gordok Mage-Lord
11476, -- 57	58	Skeletal Highborne
11483, -- 57	59	Mana Remnant
8528, -- 58	59	Dread Weaver
8532, -- 58	59	Diseased Flayer
8544, -- 58	59	Gangled Golem
8546, -- 58	59	Dark Adept
8558, -- 58	59	Crypt Slayer
9096, -- 58	59	Rage Talon Dragonspawn
9583, -- 58	59	Bloodaxe Veteran
10083, -- 58	59	Rage Talon Flamescale
10398, -- 58	59	Thuzadin Shadowcaster
10406, -- 58	59	Ghoul Ravener
10412, -- 58	59	Crypt Crawler
11473, -- 58	59	Eldreth Spectre
11477, -- 58	59	Rotting Highborne
14351, -- 58	59	Gordok Bushwacker
8529, -- 59	60	Scourge Champion
8550, -- 59	60	Shadowmage
9817, -- 59	60	Blackhand Dreadweaver
9819, -- 59	60	Blackhand Veteran
10399, -- 59	60	Thuzadin Acolyte
10413, -- 59	60	Crypt Beast
11448, -- 59	60	Gordok Warlock
10317, -- 60	61	Blackhand Elite
10400, -- 60	61	Thuzadin Necromancer
10982, -- 62	62	Whitewhisker Vermin
1842 -- 63	63	Highlord Taelan Fordring
);
