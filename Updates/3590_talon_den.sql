-- Add gameobject target "Talon Den".
-- Could not find this object in sniff, but it makes it possible to use the item i.10622, provided for q.3514
-- It is not needed to use this item to get quest credit, but its nice if you are able to use it nontheless
-- https://github.com/vmangos/core/commit/02afc0d21df989914aa924b4f03ba048f9baf228#diff-57e0202987f8d1b0183fac50b0cb0e29aff5849928de7d8191b44020485351ebR25
DELETE FROM gameobject WHERE id=152093; -- (i.10622 s.12684 spellfocus 143)
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecsmin,spawntimesecsmax,animprogress,state) VALUES
(99837, 152093, 1, 2511.77, 1986.62, 347.705, 3.7958, 0, 0, 0.0524759, 0.998622, 7200, 7200, 100, 1),
(99838, 152093, 1, 2501.17, 1911.33, 344.059, 1.0414, 0, 0, 0.0524759, 0.998622, 7200, 7200, 100, 1),
(99839, 152093, 1, 2403.67, 1809.85, 359.99, 0.403666, 0, 0, 0.0524759, 0.998622, 7200, 7200, 100, 1),
(99840, 152093, 1, 2445.36, 1994.02, 339.368, 6.27765, 0, 0, 0.00276556, -0.999996, 7200, 7200, 100, 1),
(99841, 152093, 1, 2457.19, 1931.27, 362.05, 0.306274, 0, 0, 0.152539, 0.988297, 7200, 7200, 100, 1),
(99842, 152093, 1, 2470.74, 1863.08, 348.472, 4.67701, 0, 0, 0.719504, -0.694488, 7200, 7200, 100, 1),
(99843, 152093, 1, 2460.92, 1798, 352.504, 2.94677, 0, 0, 0.995259, 0.0972552, 7200, 7200, 100, 1);
