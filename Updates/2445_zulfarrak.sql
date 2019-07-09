-- Stats Improvements for Zul'Farrak Endboss Room
-- Add missing auras in addons
-- Adjust spawn positions from sniff or video footage
-- Sandfury Guardian 7268
UPDATE creature_template SET UnitFlags=32832 WHERE entry=7268; -- 33088 UNIT_FLAG_IMMUNE_TO_PLAYER is removed on aggro
UPDATE creature_template_addon SET auras='7276 8876' WHERE entry=7268;
DELETE FROM creature_linking WHERE guid IN (37999, 38000, 38001);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(37999, 37998, 3), -- Sandfury Guardian -> Sandfury Guardian
(38000, 37998, 3), -- Sandfury Guardian -> Sandfury Guardian
(38001, 37998, 3); -- Sandfury Guardian -> Sandfury Guardian

UPDATE creature SET position_x=1767.163, position_y=1019.993, position_z=53.57059, orientation=2.565634, spawndist=0, MovementType=0 WHERE guid=37998;
UPDATE creature SET position_x=1761.487, position_y=1012.291, position_z=53.57142, orientation=2.181662, spawndist=0, MovementType=0 WHERE guid=37999;
UPDATE creature SET position_x=1722.216, position_y=1055.41, position_z=53.55621, orientation=5.550147, spawndist=0, MovementType=0 WHERE guid=38000;
UPDATE creature SET position_x=1716.237, position_y=1047.529, position_z=53.57142, orientation=5.88176, spawndist=0, MovementType=0 WHERE guid=38001;

-- Chief Ukorz Sandscalp 7267
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry=7267; -- Sap Immunity
UPDATE creature_model_info SET bounding_radius=0.3672, combat_reach=1.8 WHERE modelid=6439;
UPDATE creature_template_addon SET auras='11838' WHERE entry=7267;

-- Ruuzlu 7797
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry=7797; -- Sap Immunity
UPDATE creature_model_info SET bounding_radius=0.3672, combat_reach=1.8 WHERE modelid=6687;
UPDATE creature SET position_x=1730.438, position_y=1015.554, position_z=54.96126, orientation=0.9599311 WHERE id=7797;

-- Respawn time
-- 1 day for bosses
UPDATE creature SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id IN (7267, 7271, 7272, 7274, 7795, 7797, 8127);
-- 3h Sandfury Guardian
UPDATE creature SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE id=7268;

-- Patrol Sandfury Shadowhunter
DELETE FROM creature_linking WHERE guid=81529;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(81529, 81528, 515); -- Sandfury Shadowhunter -> Sandfury Shadowhunter
