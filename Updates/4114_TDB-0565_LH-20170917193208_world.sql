-- https://github.com/lh-server/core/commit/c2f15c18efcf44156e6b354ffdae4e4844fcd523

-- The Green Hills of Stranglethorn - missing space between 21 and "and"
UPDATE quest_template SET Objectives='Bring pages 18, 20, 21 and 24 of Nesingwary\'s The Green Hills of Stranglethorn to Barnil Stonepot in order to complete Chapter III.' WHERE entry = 341;

-- Call of Water (Part 6) - are -> area
-- https://github.com/elysium-project/server/issues/1821
UPDATE quest_template SET RequestItemsText='The brazier still reflects the ambient light from the area, and the flame shifts slightly as you move closer.$B$BThe corruption along the hills seems to have kept its distance, and besides the missing components, the brazier looks prepared for the ritual to summon a cleansed manifestation of water.' WHERE entry=63;

-- https://www.wowhead.com/tbc/quest=3636/bring-the-light#comments:id=140396
-- https://www.wowhead.com/tbc/quest=3636/bring-the-light#comments:id=3160467
UPDATE `quest_template` SET `StartScript` = 3636 WHERE `entry` = 3636;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 3636;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(3636, 0, 0, 15, 2791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archbishop Benedictus - Cast Power Word: Fortitude (Rank 4)'); -- maybe should do something more too, like a say

-- Mark of Hakkar - Hakkari Urn - https://www.wowhead.com/tbc/item=10773/hakkari-urn#comments
-- https://github.com/elysium-project/server/issues/2318
DELETE FROM `creature_loot_template` WHERE `item` IN (10780,10781,10782) AND `mincountOrRef` = 1; -- contained only in one item
DELETE FROM `item_loot_template` WHERE `item` IN (10780,10781,10782) AND `entry` != 10773; -- contained only in Hakkari Urn 10773
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 10773; -- you always get all 3 items

-- Elemental Invasion item drops
-- https://github.com/elysium-project/server/issues/2308
DELETE FROM `reference_loot_template` WHERE `item` IN (18674,18672,18679,18677); -- remove from world loot
REPLACE INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `comments`) VALUES (14464, 18674, 0, 1, 'Hardened Stone Band');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 1 WHERE `entry` = 14464 AND `item` = 18673;
REPLACE INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `comments`) VALUES (14461, 18672, 0, 1, 'Elemental Ember');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 1 WHERE `entry` = 14461 AND `item` = 18671;
REPLACE INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `comments`) VALUES (14457, 18679, 0, 1, 'Frigid Ring');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 1 WHERE `entry` = 14457 AND `item` = 18678;
REPLACE INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `comments`) VALUES (14454, 18677, 0, 1, 'Zephyr Cloak');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 1 WHERE `entry` = 14454 AND `item` = 18676;
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354, `SpeedWalk` = 1.55556, `SpeedRun` = 1.14286 WHERE `entry` = 14464;
UPDATE `creature_template` SET `SpeedWalk` = 1, `SchoolImmuneMask` = 8, `DamageMultiplier` = 1, `SpeedWalk` = 1.55556, `SpeedRun` = 1.14286 WHERE `entry` = 14462; -- Thundering Invader
UPDATE `creature_template` SET `SchoolImmuneMask` = 4, `MechanicImmuneMask` = 42090354, `SpeedWalk` = 1, `SpeedRun` = 0.992063 WHERE `entry` = 14461;
UPDATE `creature_template` SET `SchoolImmuneMask` = 4, `SpeedWalk` = 1, `SpeedRun` = 0.992063 WHERE `entry` = 14460; -- Blazing Invader
UPDATE `creature_template` SET `Faction` = 91, `SchoolImmuneMask` = 16, `MechanicImmuneMask` = 42090354, `SpeedWalk` = 1.55556, `SpeedRun` = 1.14286 WHERE `entry` = 14457;
UPDATE `creature_template` SET `SchoolImmuneMask` = 16, `InhabitType` = 3, `SpeedWalk` = 1.55556, `SpeedRun` = 1.14286 WHERE `entry` = 14458; -- Watery Invader
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `MechanicImmuneMask` = 42090354, `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 14454;
UPDATE `creature_template` SET `SchoolImmuneMask` = 8, `SpeedWalk` = 1, `SpeedRun` = 1.14286 WHERE `entry` = 14455; -- Whirling Invader

-- Respawn Case, also has FLAG_TO_RESPAWN_ON_EVADE
UPDATE `creature_linking` SET `flag` = `flag`|128 where `master_guid` IN (SELECT `guid` FROM `creature` where `id` IN (14454,14457,14461,14464));

-- Correct Game Event Name
UPDATE `game_event` SET `description` = 'Elemental Invasion: Water' WHERE `entry` = 38; -- 11 Elemental Invasion: Air & 38 Elemental Invasion: Air

-- Align Rifts
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300, `animprogress` = 255 where `guid` IN (SELECT `guid` FROM `game_event_gameobject` where `event` = 11); -- 11	1	4320	2160	0	0	Elemental Invasion: Air
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300, `animprogress` = 255 where `guid` IN (SELECT `guid` FROM `game_event_gameobject` where `event` = 13); -- 13	1	4320	2160	0	0	Elemental Invasion: Fire
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300, `animprogress` = 255 where `guid` IN (SELECT `guid` FROM `game_event_gameobject` where `event` = 39); -- 39	1	4320	2160	0	0	Elemental Invasion: Earth
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300, `animprogress` = 255 where `guid` IN (SELECT `guid` FROM `game_event_gameobject` where `event` = 38); -- 38	1	4320	2160	0	0	Elemental Invasion: Air

-- TBC+ scale normalization
-- UPDATE `creature_template` SET `Scale` = 1 WHERE `entry` IN (14464,14461,14457,14454);

-- Death Text - https://www.wowhead.com/tbc/npc=14464/avalanchion
UPDATE `broadcast_text` SET `ChatTypeID` = 6 WHERE `Id` = 9660;
UPDATE `broadcast_text` SET `ChatTypeID` = 7 WHERE `Id` = 9669;

-- Gibblewilt Positions
UPDATE `creature` SET `position_x` = -5310.00, `position_y` = 610.82, `position_z` = 390.2687, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 2470 AND `id` = 8503;
UPDATE `creature` SET `position_x` = -5070.83, `position_y` = 500.00, `position_z` = 401.4849, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 134477 AND `id` = 8503;

-- Noble Deaths reputation - https://www.wowhead.com/tbc/quest=512/noble-deaths
-- https://github.com/elysium-project/server/issues/2393
UPDATE quest_template SET RewRepFaction1=72, RewRepValue1 = 100 WHERE entry=512; -- 250

-- Magnus Frostwake innkeeper
-- https://github.com/elysium-project/server/issues/2417
UPDATE creature_template SET `NpcFlags`=`NpcFlags`&~2 WHERE entry=11278;

-- https://github.com/elysium-project/server/issues/2480
DELETE FROM `creature_loot_template` WHERE `item` IN (12830,12827,11615,11614);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 13722 AND `item` = 12830; -- Plans: Corruption - https://www.wowhead.com/tbc/object=176327/blacksmithing-plans#contains;mode:normal
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 13721 AND `item` = 12827; -- Plans: Serenity - https://www.wowhead.com/tbc/object=176325/blacksmithing-plans#contains;mode:normal
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11525 AND `item` = 11615; -- Plans: Dark Iron Shoulders - https://www.wowhead.com/tbc/object=173234/blacksmithing-plans#contains;mode:normal
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11524 AND `item` = 11614; -- Plans: Dark Iron Mail - https://www.wowhead.com/tbc/object=173232/blacksmithing-plans#contains;mode:normal

