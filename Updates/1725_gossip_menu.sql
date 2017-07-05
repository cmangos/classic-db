UPDATE creature_template SET GossipMenuId=50001 WHERE entry=3693; -- Terenthis
UPDATE creature_template SET GossipMenuId=50002 WHERE entry=3692; -- Volcor

DELETE FROM `gossip_menu` WHERE `entry` IN(50001,50002);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES 
(50001, 3334, 0, 0), -- Terenthis (Text from classic-db, gossip ID unknown)
(50002, 3214, 0, 0); -- Volcor (Text from wotlk-db, gossip ID unknown)