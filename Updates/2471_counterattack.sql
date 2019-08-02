-- Add support for quest 4021 (Counterattack!) in the Barrens

DELETE FROM creature_movement_template WHERE entry IN (9457, 9458);
INSERT INTO creature_movement_template (pathId, entry,point,position_x,position_y,position_z,orientation,script_id,waittime) VALUES
(0,9457,1, -287.779053,-1898.625366,91.680656, 1.432524, 6, 0),
(0,9457,2, -287.779053,-1898.625366,91.680656, 1.432524, 0, 0),
(0,9457,3, -296.74,-1852.16,92.992, 1.477291, 0, 60000),
(0,9458,1, -287.779053,-1898.625366,91.680656, 1.432524, 6, 0),
(0,9458,2, -287.779053,-1898.625366,91.680656, 1.432524, 0, 0),
(0,9458,3, -296.74,-1852.16,92.992, 1.477291, 0, 60000);

DELETE FROM gossip_menu_option WHERE menu_id=1882;
DELETE FROM dbscripts_on_gossip WHERE id=1882;
