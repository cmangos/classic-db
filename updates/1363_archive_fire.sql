-- Added missing GO 176295 (Archive Fire) in Stratholme
-- Made it spawn on event (GO use)
DELETE FROM gameobject WHERE guid = 120441;
INSERT INTO gameobject VALUES
(120441, 176295, 329, 3458.875, -3106.348, 137.889, 3.14159, 0, 0, 1, 0, -30, 100, 1);

DELETE FROM dbscripts_on_event WHERE id = 5258;
INSERT INTO dbscripts_on_event VALUES
(5258, 1, 9, 120441, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');
