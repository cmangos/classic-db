-- Fixed gossip menu for Winter Veil gifts
-- Added missing gossip menus
-- This closes https://github.com/cmangos/issues/issues/1516
DELETE FROM gossip_menu WHERE entry IN (6792, 6797, 6798);
INSERT INTO gossip_menu VALUES
(6792, 8109, 0, 0),
(6797, 8109, 0, 0),
(6798, 8109, 0, 0);

UPDATE gameobject_template SET data3=6792 WHERE entry=180743;
UPDATE gameobject_template SET data3=6797 WHERE entry=180746;
