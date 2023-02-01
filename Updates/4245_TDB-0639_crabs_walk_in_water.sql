-- Crabs walk in water
UPDATE `creature_template` SET `InhabitType` = 3, `ExtraFlags` = `ExtraFlags`|32768 WHERE `entry` IN ( -- CREATURE_EXTRA_FLAG_WALK_IN_WATER
-- classicmangos (existing data hints towards having fixed this in the past already, just was not ported to tbc or wotlk)
830, -- Sand Crawler	3	32768 (.go c 47434 water surface collusion issue, chase issue, seems the end point for random movement is picked at the water surface not the water ground floor)
831, -- Sea Crawler	3	32768
922, -- Silt Crawler	3	32768
1088, -- Monstrous Crawler	3	32768
1216, -- Shore Crawler	3	32768
2231, -- Pygmy Tide Crawler	3	32768
2232, -- Tide Crawler	3	32768
2233, -- Encrusted Tide Crawler	3	32768
2234, -- Young Reef Crawler	3	32768
2235, -- Reef Crawler	3	32768
2236, -- Raging Reef Crawler	3	32768
2544, -- Southern Sand Crawler	3	32768
3106, -- Pygmy Surf Crawler	3	32768
3107, -- Surf Crawler	3	32768
3108, -- Encrusted Surf Crawler	3	32768
3228, -- Corrupted Surf Crawler	3	32768
3812, -- Clattering Crawler	3	32768
3814, -- Spined Crawler	3	32768
4821, -- Skittering Crustacean	3	32768
4822, -- Snapping Crustacean	3	32768
4823, -- Barbed Crustacean	3	32768
6250, -- Crawler	3	32768
6827, -- Crab	3	0 - Critter (Steamvault)
12347, -- Enraged Reef Crawler	3	32768
-- tbcmangos
17216, -- Skittering Crawler	3	0
17217, -- Barbed Crawler	3	0
18241); -- Crusty	1	0
-- wotlkmangos
-- 23929, -- Giant Tidecrawler	3	0
-- 24287, -- Caldemere Snapper	3	0
-- 24478, -- Fjord Crawler	3	0
-- 24479, -- Ice Crawler	3	0
-- 25481, -- Landing Crawler	3	0
-- 26521, -- Kili'ua	3	0
-- 33712, -- Golden Crawler	3	0
-- 33713); -- Rotting Crawler	3	1048576

