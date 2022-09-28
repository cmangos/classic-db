-- classicmangos ore node pooling is done in clusters, which is the correct way, though this prevents from adding unpooled nodes to a cluster if you dont know which to USE
-- tbcmangos uses zone pooling, so its easy to just add nodes to a pool and motherpool in said zone
-- we dont want teleport hackers/players to be able to login in certain nodes and have 100% spawn after server restart at a node (at times there are up to 4 nodes at same location up on a restart as they are completely unpooled)
-- documented the zones so Tobschinski
-- Pool unpooled ore nodes (Missed)
-- Most missed here https://github.com/cmangos/tbc-db/commit/934d0fdedf2bc2abe9d54e4e246ed6401a77a4f4#diff-6f6731cca0ee3ca2b48fa4badc27d1059f82a5dd225eb80b07df103f1f1986cfR861
-- 10784 lines after cleanup - DIFF 127 lines
-- SELECT * FROM gameobject where ID IN (150081,2047,103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658) order by guid;
-- SELECT * FROM pool_gameobject where guid IN (SELECT `guid` FROM `gameobject` WHERE ID IN (150081,2047,103711,3764,1732,2054,176643,150082,324,1733,105569,175404,123848,73940,177388,73941,1667,1610,181109,150080,1734,103713,3763,2055,1731,123309,123310,73939,176645,150079,2040,2653,1735,165658)) order by guid;

-- thunderbluff Node duplicate (guid 121614, which is also not pooled into a clusterpool because it is "in" tunderbluff)
DELETE FROM `gameobject` WHERE `guid` = 4829;
DELETE FROM `gameobject` WHERE `guid` = 121614;

-- Maraudon Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 6210;
DELETE FROM `gameobject` WHERE `guid` = 7180;
DELETE FROM `gameobject` WHERE `guid` = 9406;
DELETE FROM `gameobject` WHERE `guid` = 7215;
DELETE FROM `gameobject` WHERE `guid` = 7232;
DELETE FROM `gameobject` WHERE `guid` = 9239;
DELETE FROM `gameobject` WHERE `guid` = 7320;
DELETE FROM `gameobject` WHERE `guid` = 9418;
DELETE FROM `gameobject` WHERE `guid` = 7203;
DELETE FROM `gameobject` WHERE `guid` = 27897;
DELETE FROM `gameobject` WHERE `guid` = 34179;
DELETE FROM `gameobject` WHERE `guid` = 34183;
DELETE FROM `gameobject` WHERE `guid` = 63970;
DELETE FROM `gameobject` WHERE `guid` = 63971;

-- Felwood Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 9312;
DELETE FROM `gameobject` WHERE `guid` = 48859;
DELETE FROM `gameobject` WHERE `guid` = 48901;
DELETE FROM `gameobject` WHERE `guid` = 48909;
DELETE FROM `gameobject` WHERE `guid` = 48917;
DELETE FROM `gameobject` WHERE `guid` = 48930;
DELETE FROM `gameobject` WHERE `guid` = 48931;
DELETE FROM `gameobject` WHERE `guid` = 48932;
DELETE FROM `gameobject` WHERE `guid` = 48933;
DELETE FROM `gameobject` WHERE `guid` = 48934;
DELETE FROM `gameobject` WHERE `guid` = 48949;
DELETE FROM `gameobject` WHERE `guid` = 48950;
DELETE FROM `gameobject` WHERE `guid` = 48958;
DELETE FROM `gameobject` WHERE `guid` = 48966;
DELETE FROM `gameobject` WHERE `guid` = 48969;
DELETE FROM `gameobject` WHERE `guid` = 48971;
DELETE FROM `gameobject` WHERE `guid` = 48972;

-- Durotar Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 14685;

-- Barrens Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 14847;
DELETE FROM `gameobject` WHERE `guid` = 14848;
DELETE FROM `gameobject` WHERE `guid` = 14960;
DELETE FROM `gameobject` WHERE `guid` = 14966;
DELETE FROM `gameobject` WHERE `guid` = 14967;
DELETE FROM `gameobject` WHERE `guid` = 14969;
DELETE FROM `gameobject` WHERE `guid` = 14970;
DELETE FROM `gameobject` WHERE `guid` = 14971;
DELETE FROM `gameobject` WHERE `guid` = 15004;
DELETE FROM `gameobject` WHERE `guid` = 15005;
DELETE FROM `gameobject` WHERE `guid` = 15009;
DELETE FROM `gameobject` WHERE `guid` = 15010;
DELETE FROM `gameobject` WHERE `guid` = 15011;
DELETE FROM `gameobject` WHERE `guid` = 15016;
DELETE FROM `gameobject` WHERE `guid` = 15017;
DELETE FROM `gameobject` WHERE `guid` = 15018;
DELETE FROM `gameobject` WHERE `guid` = 15019;
DELETE FROM `gameobject` WHERE `guid` = 15020;
DELETE FROM `gameobject` WHERE `guid` = 15021;
DELETE FROM `gameobject` WHERE `guid` = 15059;
DELETE FROM `gameobject` WHERE `guid` = 15063;
DELETE FROM `gameobject` WHERE `guid` = 15068;
DELETE FROM `gameobject` WHERE `guid` = 15069;
DELETE FROM `gameobject` WHERE `guid` = 15070;
DELETE FROM `gameobject` WHERE `guid` = 15071;
DELETE FROM `gameobject` WHERE `guid` = 15072;
DELETE FROM `gameobject` WHERE `guid` = 15074;
DELETE FROM `gameobject` WHERE `guid` = 15076;
DELETE FROM `gameobject` WHERE `guid` = 15077;
DELETE FROM `gameobject` WHERE `guid` = 35023;
DELETE FROM `gameobject` WHERE `guid` = 120336; -- these were respawned by a tbc-db commit "Bael Modan"

-- Stranglethorn Vale Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 15430;
DELETE FROM `gameobject` WHERE `guid` = 170997;
DELETE FROM `gameobject` WHERE `guid` = 170998;

-- Winterspring Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 18375; -- rich thorium even!?
DELETE FROM `gameobject` WHERE `guid` = 49011; -- rich thorium even!?

-- Silithus Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 20542; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 20544; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 20545; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 20546; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 20551; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 20555; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49435; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49437; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49438; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49441; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49442; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49443; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49444; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49445; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49448; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 49449; -- ooze covered rich thorium!?
DELETE FROM `gameobject` WHERE `guid` = 50348; -- ooze covered rich thorium!?

-- Blasted Lands (Garrison Armory) Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 71944;
DELETE FROM `gameobject` WHERE `guid` = 71945;
DELETE FROM `gameobject` WHERE `guid` = 71946;
DELETE FROM `gameobject` WHERE `guid` = 71947;

-- Hillsbrad Foothills (Purgation Isle)
DELETE FROM `gameobject` WHERE `guid` = 75371;
DELETE FROM `gameobject` WHERE `guid` = 75372;
DELETE FROM `gameobject` WHERE `guid` = 75373;

-- Hillsbrad Foothills (Durnhold Keep)
DELETE FROM `gameobject` WHERE `guid` = 75431;
DELETE FROM `gameobject` WHERE `guid` = 75432;
DELETE FROM `gameobject` WHERE `guid` = 75433;
DELETE FROM `gameobject` WHERE `guid` = 75434;

-- Loch Modan (Stonewrought Dam)
DELETE FROM `gameobject` WHERE `guid` = 75714;
DELETE FROM `gameobject` WHERE `guid` = 75715;
DELETE FROM `gameobject` WHERE `guid` = 75716;

-- Loch Modan (The Farstrider Lodge)
DELETE FROM `gameobject` WHERE `guid` = 75741;
DELETE FROM `gameobject` WHERE `guid` = 75742;
DELETE FROM `gameobject` WHERE `guid` = 75743;

-- Loch Modan (Stonesplinter Valley)
DELETE FROM `gameobject` WHERE `guid` = 75873;
DELETE FROM `gameobject` WHERE `guid` = 75874;
DELETE FROM `gameobject` WHERE `guid` = 75875;

-- Tirisfal Glades (Scarlet Watch Post)
DELETE FROM `gameobject` WHERE `guid` = 78590;

-- Arathi Highlands (The Drowned Reef) - was already part of reworks!
DELETE FROM `gameobject` WHERE `guid` = 79842;
DELETE FROM `gameobject` WHERE `guid` = 79843;
DELETE FROM `gameobject` WHERE `guid` = 79844;

-- Westfall (Longshore)
DELETE FROM `gameobject` WHERE `guid` = 105199;
DELETE FROM `gameobject` WHERE `guid` = 105200;
DELETE FROM `gameobject` WHERE `guid` = 105201;

-- Desolace Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 120391;

-- Azshara Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 170053;
DELETE FROM `gameobject` WHERE `guid` = 170054;

-- 1k Needles Node without pooling
DELETE FROM `gameobject` WHERE `guid` = 170095;
DELETE FROM `gameobject` WHERE `guid` = 170109;

-- Deadmines
-- 3600110
-- 3600111
-- 3600112
-- 3600113
-- 3600120
-- 3600121
-- 3600122
-- 3600123

