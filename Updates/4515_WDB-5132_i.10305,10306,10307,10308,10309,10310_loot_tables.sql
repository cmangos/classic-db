-- From Discord: "Anyone know if https://www.wowhead.com/wotlk/item=10310/scroll-of-strength-iv is normal to drop sometimes from a defias miner or evoker in deadmines?"
-- 10305,10306,10307,10308,10309,10310 - Improve Loot Tables for 1138,1729,1849,6372
DELETE FROM `creature_loot_template` WHERE `item` = 2770 AND `entry` NOT IN (2976,2978,808,475,824,1727,2989,40,327,624,1236,4113,5849,2269,598,4416,4116,4846,1094,4844,4849,3578,1426,2450,674,623,14427,1167,1424,1393,3586); -- only "Digger" npcs if any.
DELETE FROM `creature_loot_template` WHERE `item` = 2771 AND `entry` NOT IN (2976,2978,808,475,824,1727,2989,40,327,624,1236,4113,5849,2269,598,4416,4116,4846,1094,4844,4849,3578,1426,2450,674,623,14427,1167,1424,1393,3586);
DELETE FROM `creature_loot_template` WHERE `item` = 2835 AND `entry` NOT IN (2976,2978,808,475,824,1727,2989,40,327,624,1236,4113,5849,2269,598,4416,4116,4846,1094,4844,4849,3578,1426,2450,674,623,14427,1167,1424,1393,3586);
DELETE FROM `creature_loot_template` WHERE `item` = 2775; -- seemingly none.
DELETE FROM `creature_loot_template` WHERE `item` = 50603 AND `entry` IN ( -- NPC LOOT (White World Drop) - (Scrolls IV) - (NPC Levels 55-62)
1729, -- https://www.wowhead.com/wotlk/npc=1729/defias-evoker - Level: 17 - 18
1849 -- (1523, 1849, 21, 0, 38, 38, 524288, 0, 0, 0, 0), Level 38.
);
DELETE FROM `creature_loot_template` WHERE `item` IN (10305,10306,10307,10308,10309,10310) AND `entry` IN (1138);
UPDATE `creature_template` SET `MinLevel` = 50, `MaxLevel` = 51 WHERE `entry` = 6372; -- 8-9 - hints towards something not correct with wotlk refloots see: SELECT clt.*,ct.name,ct.minlevel,ct.maxlevel FROM creature_loot_template clt left join creature_template ct on clt.entry=ct.entry where item IN (50602,50603) order by ct.minlevel,ct.entry;

UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (White World Drop) - (Scrolls I) - (NPC Levels 10-25)' WHERE `entry` = 50600;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (White World Drop) - (Scrolls II) - (NPC Levels 25-40)' WHERE `entry` = 50601;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)' WHERE `entry` = 50602;
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (White World Drop) - (Scrolls IV) - (NPC Levels 55-62)' WHERE `entry` = 50603;

-- Table 'creature_loot_template' entry 1497 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 3663 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 11806 (creature entry) not exist but used as loot id in DB.
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` IN (1497,3663,11806);

