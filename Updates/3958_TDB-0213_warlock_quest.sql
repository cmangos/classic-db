-- =======
-- General
-- =======

-- Minor Healing Potion mincount > 1 maxcount > 1
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` = 118 AND `entry` IN (
95,
97,
327,
452,
475,
1522, -- see % distribution, some of these npcs need to be upgraded to higher potion tier
2011,
2949,
3111,
3272
);

-- https://github.com/cmangos/tbc-db/issues/1057 - See ACID Update for these mobs, faction was adjusted to sniff/db2 value and now they need additonal script to work
UPDATE `creature_template` SET `UnitFlags` = 512 WHERE `entry` = 5676;
UPDATE `creature_template` SET `UnitFlags` = 33280 WHERE `entry` = 5677;

-- SELECT * FROM spell_script_target where entry IN (9221,7728); -- ok

