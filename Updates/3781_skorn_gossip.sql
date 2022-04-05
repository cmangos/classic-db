DELETE FROM `npc_text_broadcast_text` WHERE `Id`=521;
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(521, 1, 2470);

DELETE FROM `gossip_menu` WHERE `entry`=24 AND `text_id`=521;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(24, 521, 0, 1604);

DELETE FROM `conditions` WHERE `condition_entry`=1604;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1604, 8, 770, 0, 0, 0, 0, 'Has quest The Demon Scarred Cloak rewarded');

