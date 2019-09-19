-- =====================================================================================================
-- Add CREATURE_EXTRA_FLAG_DUAL_WIELD_FORCED
-- =====================================================================================================
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|8388608 WHERE `entry` IN (
-- Bestiary
12263, -- Slaughterhouse Protector
11022, -- Alexi Barov
15643, -- Amani Berserker
16387, -- Atiesh
502, -- Benny Blaanco
10318, -- Blackhand Assassin
7029, -- Blackrock Battlemaster
3672, -- Boahn
4403, -- Muckshell Pincer
1398, -- Boss Galgosh
10997, -- Cannon Master Willey
813, -- Colonel Kurzen
5683, -- Comar Villard
5846, -- Dark Iron Taskmaster
3736, -- Darkslayer Mordenthal
7057, -- Digmaster Shovelphlange
11261, -- Doctor Theolen Krastinov
9040, -- Dope'rel
3840, -- Druid of the Fang
11469, -- Eldreth Seether
4479, -- Fardel Dabyrie
12100, -- Lava Reaver
7033, -- Firegut Ogre
9264, -- Firebrand Pyromancer
4329, -- Firemane Scout
5835, -- Foreman Grills
5713, -- Gasher
14425, -- Gnawbone
9027, -- Gorosh the Dervish
14515, -- High Priestess Arlokk
3974, -- Houndmaster Loksey
9319, -- Houndmaster Grebmar
3983, -- Interrogator Vishas
4480, -- Kenata Dabyrie
3669, -- Lord Cobrahn
2597, -- Lord Falconcrest
3670, -- Lord Pythas
8407, -- Makron the Corrupt
14688, -- Master Sandoval
723, -- Mosh'Ogg Butcher
2320, -- Nagaz
4420, -- Overlord Ramtusk
10824, -- Ranger Lord Hawkspear
6771, -- Ravenholdt Assassin
15084, -- Renataki
8216, -- Retherokk the Berserker
10488, -- Risen Construct
947, -- Rohh the Silent
16050, -- Rotfang
11387, -- Sandfury Speaker
4493, -- Scarlet Avenger
15162, -- Scarlet Inquisitor
1838, -- Scarlet Interrogator
4540, -- Scarlet Monk
9258, -- Scarshield Raider
8529, -- Scourge Champion
9236, -- Shadow Hunter Vosh'gajin
11196, -- Shatterspear Drummer
2600, -- Singer
16299, -- Skeletal Shocktrooper
16422, -- Skeletal Soldier
1785, -- Skeletal Terror
10478, -- Splintered Skeleton
4714, -- Slitherblade Myrmidon
315, -- Stalvan Mistmantle
2589, -- Syndicate Mercenary
5932, -- Taskmaster Whipfang
61, -- Thuros Lightfingers
11467, -- Tsu'zee
11880, -- Twilight Avenger
5399, -- Veyzhak the Cannibal
9237, -- War Master Voone
11452, -- Wildspawn Rogue
2554, -- Witherbark Axe Thrower
2558, -- Witherbark Berserker
8218, -- Witherheart the Stalker
2605, -- Zalas Witherbark
11348, -- Zealot Zath
12262, -- Ziggurat Protector

-- =======================
-- ACID "Dual Wield" Aura
580, -- Redridge Drudger					// Bestiary confirmed
1561, -- Bloodsail Raider
4666, -- Burning Blade Felsworn
9583, -- Bloodaxe Veteran					// Bestiary confirmed
12236, -- Lord Vyletongue					// Bestiary confirmed
10391, -- Skeletal Berserker					// Bestiary confirmed
11043, -- Crimson Monk
639, -- Edwin VanCleef
1696, -- Targorr the Dread					// Bestiary confirmed
1711, -- Defias Convict					// Bestiary confirmed
1716, -- Bazil Thredd					// Bestiary confirmed
7605, -- Raven					// Bestiary confirmed
14882 -- Atal'ai Mistress
);