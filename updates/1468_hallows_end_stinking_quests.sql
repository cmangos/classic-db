-- Quest 8373

-- Adding script targets to despawn stink bombs for spell 24973
DELETE FROM spell_script_target WHERE entry=24973;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (24973, 0, 180449, 2);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES (24973, 0, 180450, 4);

-- Quest 8322 + 8409
-- Changing object 18854 to non-quest Keg
UPDATE `gameobject` SET `id`= 180575 WHERE `guid`= 18854;

-- Toggling quest with non-quest keg so is just normal object when Hallow's End is not on.
DELETE FROM game_event_gameobject WHERE guid=18854;
INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (18854, -12);

-- Adding horde faction (same as wickerman ember) to object 180570 so alliance unable to see wheel
UPDATE `gameobject_template` SET `faction`= 83 WHERE `entry`= 180570;

-- Quest 1658
-- Adding areatrigger to support quest completion
DELETE FROM areatrigger_involvedrelation WHERE id=3991;
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES (3991, 1658);
UPDATE `quest_template` SET `SpecialFlags`= 2 WHERE `entry`= 1658;

-- Adjusting Sergeant Hartman's position, setting non-attackable + adding correct gossip
UPDATE `creature` SET `position_x`= -826.323914, `position_y`= -532.833923, `position_z`= 14.450028, `orientation`= 0.470631 WHERE `id`= 15199;
DELETE FROM gossip_menu WHERE entry=6538 AND text_id=7741;
INSERT `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (6538, 7741, 0, 0);
UPDATE `creature_template` SET `NpcFlags`= 3, `UnitFlags`= 130, `GossipMenuID`= 6538 WHERE `Entry`= 15199;

-- Quest 1657
-- Setting vendor option caption and condition on quest 1657 completed.
DELETE FROM gossip_menu_option WHERE menu_id=6537 AND id=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (6537, 0, 1, 'I want to buy another stink bomb!', 3, 4, 0, 0, 0, 0, 0, NULL, 1372);
DELETE FROM conditions WHERE condition_entry=1657;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (1372, 8, 1657, 0);

-- Setting quest 1657 to be non-repeatable and adding support for external completion
UPDATE `quest_template` SET `QuestFlags`= 0, `SpecialFlags`= 2 WHERE `entry`= 1657;

-- Removing placeholder focus and creating original focus (thanks to ytdb)
-- Original display ID = 299 but setting to 0 as object needs to be invisible but unable to set this state
DELETE FROM gameobject_template WHERE entry=180504;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180504, 8, 0, 'Southshore Spell Focus', 0, 0, 1, 1345, 50, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `gameobject` SET `id`= 180504 WHERE `guid`= 99898;
DELETE FROM game_event_gameobject WHERE guid=99898;
INSERT `game_event_gameobject` (`guid`, `event`) VALUES (99898, 12); 

-- Making Southshore Stink Bomb Counter invisible non-selectable or attackable
UPDATE `creature_template` SET `UnitFlags`= 33554432, `ExtraFlags`= 130 WHERE `Entry`= 15415;
DELETE FROM creature WHERE guid=85635;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `Deathstate`, `MovementType`) VALUES (85635, 15415, 0, 0, 0, -835.52, -528.52, 11.97, 0, 300, 0, 0, 64, 0, 0, 0);
DELETE FROM game_event_creature WHERE guid=85635;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (85635, 12);

-- Adding script to credit quest
DELETE FROM dbscripts_on_event WHERE id=9417;
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (9417, 0, 8, 15415, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Credit for quest 1657');