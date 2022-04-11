DELETE FROM spawn_group WHERE id IN (4090000, 4090001);
DELETE FROM spawn_group_spawn WHERE id IN (4090000, 4090001);
DELETE FROM spawn_group_formation WHERE id IN (4090000, 4090001);
DELETE FROM creature WHERE id IN (12057, 12099, 12118, 12119);
DELETE FROM waypoint_path WHERE PathId=4090000;

SET @CGUID := 4090000; -- creatures
SET @GROUP_ID := 4090000;
SET @PATH_ID := 4090000;

INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, DeathState, MovementType) VALUES
(@CGUID+224, 12057, 409, 679.838, -497.988, -213.733, 3.62471, 604800, 604800, 10, 0, 0, 1), -- Garr
(@CGUID+240, 12099, 409, 670.292, -495.011, -212.488, 3.68022, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+241, 12099, 409, 675.193, -489.132, -212.679, 3.61502, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+242, 12099, 409, 676.861, -507.534, -214.248, 3.61736, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+243, 12099, 409, 683.046, -488.763, -213.224, 3.69329, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+244, 12099, 409, 688.694, -493.342, -213.977, 3.73863, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+245, 12099, 409, 689.302, -501.019, -214.331, 3.70871, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+246, 12099, 409, 684.192, -506.928, -214.424, 3.73863, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+247, 12099, 409, 671.092, -502.33, -213.129, 3.40292, 7200, 7200, 0, 0, 0, 0), -- Firesworn
(@CGUID+266, 12118, 409, 1000.20257568359375, -955.40692138671875, -179.582534790039062, 0.0, 604800, 604800, 0, 0, 0, 0), -- Lucifron - a boss, cant find out its spawn loc, this is the first wp
(@CGUID+267, 12119, 409, 1002.78607177734375, -951.76617431640625, -178.620162963867187, 0.0, 604800, 604800, 0, 0, 0, 0), -- Flamewaker Protector
(@CGUID+268, 12119, 409, 1002.24871826171875, -959.68133544921875, -180.471405029296875, 0.0, 604800, 604800, 0, 0, 0, 0); -- Flamewaker Protector


-- ============
-- SPAWN GROUPS
-- ============

INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(@GROUP_ID+0, 'The Molten Core - Lucifron', 0, 0, 0, 3),
(@GROUP_ID+1, 'The Molten Core - Garr', 0, 0, 0, 3);

-- INSERT INTO spawn_group_entry (Id, Entry, MinCount, MaxCount, Chance) VALUES

INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES
(@GROUP_ID+0, @CGUID+266, 0), -- Lucifron
(@GROUP_ID+0, @CGUID+267, 1), -- Flamewaker Protector
(@GROUP_ID+0, @CGUID+268, 2), -- Flamewaker Protector

(@GROUP_ID+1, @CGUID+224, 0), -- Garr
(@GROUP_ID+1, @CGUID+240, 1), -- Firesworn
(@GROUP_ID+1, @CGUID+241, 2), -- Firesworn
(@GROUP_ID+1, @CGUID+242, 3), -- Firesworn
(@GROUP_ID+1, @CGUID+243, 4), -- Firesworn
(@GROUP_ID+1, @CGUID+244, 5), -- Firesworn
(@GROUP_ID+1, @CGUID+245, 6), -- Firesworn
(@GROUP_ID+1, @CGUID+246, 7), -- Firesworn
(@GROUP_ID+1, @CGUID+247, 8); -- Firesworn

INSERT INTO spawn_group_formation (Id, FormationType, FormationSpread, FormationOptions, PathId, MovementType, Comment) VALUES
(@GROUP_ID+0, 4, 5, 0, @PATH_ID+0, 4, 'The Molten Core - Lucifron'),
(@GROUP_ID+1, 6, 10, 0, 0, 1, 'The Molten Core - Garr');

INSERT INTO waypoint_path (PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(@PATH_ID+0, 01, 1000.20257568359375, -955.40692138671875, -179.582534790039062, 100, 0, 0),
(@PATH_ID+0, 02, 1007.78198242187500, -958.08843994140625, -180.174041748046875, 100, 0, 0),
(@PATH_ID+0, 03, 1014.45031738281250, -978.56317138671875, -181.185424804687500, 100, 0, 0),
(@PATH_ID+0, 04, 1037.02221679687500, -986.34191894531250, -181.516296386718750, 100, 0, 0),
(@PATH_ID+0, 05, 1053.14965820312500, -990.75457763671875, -182.661544799804687, 100, 0, 0),
(@PATH_ID+0, 06, 1070.41137695312500, -1006.7645263671875, -185.544433593750000, 100, 0, 0);