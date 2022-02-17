-- Tamed Kodo 11627
UPDATE creature_template SET Faction=35, SpeedWalk=2.8, GossipMenuId=3650 WHERE entry=11627;
DELETE FROM gossip_menu WHERE entry=3650;
INSERT INTO gossip_menu (entry, text_id) VALUES
(3650, 4449);
