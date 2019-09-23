-- correct positions and quaternions
DELETE FROM gameobject WHERE guid IN(12345,12344) AND id IN(175787,175788);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(12345, 175787, 1, 1917.503, -4125.076, 42.95111, -1.204277, 0, 0, -0.5664063, 0.8241262, 900, 900, 100, 1),
(12344, 175788, 1, 1922.421, -4124.92, 42.93932, -1.919862, 0, 0, -0.8191519, 0.5735767, 900, 900, 100, 1);
-- spell cast done in core now
DELETE FROM dbscripts_on_quest_end WHERE command=15 AND datalong=16609;
-- fixup of standup for thrall based on sniff
DELETE FROM dbscripts_on_quest_end WHERE id=4974;
INSERT INTO dbscripts_on_quest_end VALUES 
(4974, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'STATE_STAND'),
(4974, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall active'),
(4974, 2, 13, 0, 0, 0, 175787, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'use gobject'),
(4974, 3, 0, 0, 0, 0, 0, 0, 0, 2000000128, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 11, 0, 0, 0, 0, 0, 0, 0, 2000000129, 0, 0, 0, 0, 0, 0, 0, ''),
(4974, 15, 1, 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'STATE_SIT'),
(4974, 16, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall unactive');
