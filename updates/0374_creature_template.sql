-- Fixed rank of creature 3792 (Terrowulf Packlord) as it is not elite
-- Source: http://www.wowwiki.com/Terrowulf_Packlord
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 3792;

-- Fixed rank of creature 2604 (Molok The Crusher) as it is not elite
-- and his faction is obviously Ogre, not Wolf...
-- Source: http://www.wowwiki.com/Molok_the_Crusher?oldid=311156
UPDATE `creature_template` SET `rank` = 4, `faction_A` = 45, `faction_H` = 45 WHERE `entry` = 2604;

-- Fixed rank of creature 10647 (Prince Raze) as it is not elite
-- Source: http://www.wowwiki.com/Prince_Raze
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10647;

-- Fixed rank of creature 2108 (Garneg Charskull) as it is not elite
-- Source: http://www.wowwiki.com/Garneg_Charskull?oldid=361431
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2108;

-- Fixed rank of creature 2476 (Large Loch Crocolisk) as it is not elite
-- Source: http://www.wowwiki.com/Large_Loch_Crocolisk?oldid=365055
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2476;

-- Fixed rank of creature 1037 (Dragonmaw Battlemaster) as it is not elite
-- Source: http://www.wowwiki.com/Dragonmaw_Battlemaster?oldid=1478564
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 1037;

-- Fixed rank of creature 596 (Brainwashed Noble) as it is elite and rare
-- Source: http://www.wowwiki.com/Brainwashed_Noble?oldid=1110892
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 596;

-- Fixed rank of creature 10559 (Lady Vespia) as it is not elite
-- Source: http://www.wowwiki.com/Lady_Vespia?oldid=1312007
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 10559;

-- Fixed rank of creature 14222 (Araga) as it is not elite
-- Source: http://www.wowwiki.com/Araga
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 14222;

-- Fixed rank of creature 12037 (Ursol'lok) as it is not elite
-- Source: http://www.wowwiki.com/Ursol%27lok?oldid=744473
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 12037;

-- Fixed rank of creature 5933 (Achellios the Banished) as it is not elite
-- Source: http://www.wowwiki.com/Achellios_the_Banished?oldid=718043
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 5933;

-- Fixed rank of creature 771 (Commander Felstrom) as it is not elite
-- Source: http://www.wowwiki.com/Commander_Felstrom?oldid=537889
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 771;
