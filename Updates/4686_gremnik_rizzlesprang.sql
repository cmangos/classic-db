-- Correct Level, Gossip and Flags of Gremnik Rizzlesprang
UPDATE `creature_template` SET `MinLevel`=60,`MaxLevel`=60,`GossipMenuId`=7092,`NpcFlags`=1 WHERE `entry`=16123;

-- Spawn Gremnik at the correct location (taken from VMaNGOS)
DELETE FROM `creature` WHERE `guid`=68935;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(68935, 16123, 0, -14456.8, 448.044, 20.4907, 0.0174533, 250, 250, 0, 0);

-- Add "Ghost" Aura to Gremnik
DELETE FROM `creature_template_addon` WHERE `entry`=16123;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (16123, '27614 27978');

-- Give him proper broadcast text menu
DELETE FROM `npc_text_broadcast_text` WHERE `Id`=8345;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES (8345, 1, 11932);
DELETE FROM `gossip_menu` WHERE `entry`=7092;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (7092, 8345);

