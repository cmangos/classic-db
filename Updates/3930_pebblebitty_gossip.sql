--  Mountaineer Pebblebitty 3836
DELETE FROM gossip_menu WHERE `entry` BETWEEN 1201 AND 1206;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(1201,1833,0,0),
(1202,1834,0,0),
(1203,1835,0,0),
(1204,1836,0,0),
(1205,1837,0,0),
(1206,1838,0,0);
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 1201 AND 1206;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
('1201','0','0','What\'s the worst that could happen?','4266','1','1','1202','0','20313'),
('1202','0','0','Another way? Do tell...','4268','1','1','1203','0','0'),
('1203','0','0','Orcs? Badlands? I\'m invulnerable!','4270','1','1','1204','0','0'),
('1204','0','0','Absolutely!','4272','1','1','1205','0','0'),
('1205','0','0','My apologies, Pebblebitty.','4274','1','1','1206','0','0'),
('1206','0','0','Done, done, and done.','4276','1','1','-1','0','0');
UPDATE broadcast_text SET ChatTypeId = 2 WHERE Id = 1401;

DELETE FROM `conditions` WHERE `condition_entry` = 20313;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(20313, 22, 3181, 0, 'Quest ID 3181 NOT Taken AND NOT Rewarded');
