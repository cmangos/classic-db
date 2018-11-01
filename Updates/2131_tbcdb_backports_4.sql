-- Miscelleanous backport from TBCDB

-- checked in sniff, have no IMMUNE_TO_NPC flag before or after starting escort
UPDATE creature_template SET UnitFlags=UnitFlags&~512 WHERE entry IN(10427, 10646);

-- Remove 0 set as AIName 
UPDATE creature_template SET AIName='' WHERE AIName='0';

-- Skullsplitter Spiritchaser 672 guid.1365 leading Ana'thek the Cruel 1059 - resolves TBC-148
DELETE FROM creature_linking WHERE master_guid=1365;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES (1366, 1365, 515),(1367, 1365, 515);
UPDATE creature SET MovementType=2 WHERE guid=1365 AND id=672;
DELETE FROM creature_movement WHERE id=1365;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(1365, 1, -13046.87, -629.1666, 53.37298, 100, 0, 0),
(1365, 2, -13036.7, -635.2722, 53.34197, 100, 0, 0),
(1365, 3, -13019.63, -643.6182, 53.98716, 100, 0, 0),
(1365, 4, -13001.18, -650.5718, 52.61216, 100, 0, 0),
(1365, 5, -12986.05, -655.6912, 51.3574, 100, 0, 0),
(1365, 6, -12953.69, -679.1108, 51.29697, 100, 0, 0),
(1365, 7, -12907.74, -720.5589, 51.17647, 100, 0, 0),
(1365, 8, -12909.85, -751.8694, 51.42327, 100, 30000, 0),
(1365, 9, -12907.74, -720.5589, 51.17647, 100, 0, 0),
(1365, 10, -12953.69, -679.1108, 51.29697, 100, 0, 0),
(1365, 11, -12986.05, -655.6912, 51.3574, 100, 0, 0),
(1365, 12, -13001.18, -650.5718, 52.61216, 100, 0, 0),
(1365, 13, -13019.63, -643.6182, 53.98716, 100, 0, 0),
(1365, 14, -13036.7, -635.2722, 53.34197, 100, 0, 0),
(1365, 15, -13046.87, -629.1666, 53.37298, 100, 0, 0),
(1365, 16, -13076.93, -607.4487, 54.23201, 5.550147, 60000, 0);

-- Respawn Expeditionary Mountaineer 14390 & Expeditionary Priest 14393
DELETE FROM creature WHERE id IN (14390,14393);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(191127, 14390, 0, 0, 0, -8208, -485, 193.739, 5.354, 120, 120, 5, 0, 3831, 0, 0, 1),  -- eye candy guid.54000
(191128, 14390, 0, 0, 0, -8181.801, -585.4965, 200.4166, 6.160618, 120, 120, 5, 0, 3831, 0, 0, 1),
(191129, 14390, 0, 0, 0, -8176.529, -584.7012, 200.5416, 2.897247, 120, 120, 5, 0, 3831, 0, 0, 1),
(191130, 14390, 0, 0, 0, -8180.905, -586.1957, 200.4166, 5.707227, 120, 120, 5, 0, 3831, 0, 0, 1),
(191131, 14390, 0, 0, 0, -8177.195, -593.8784, 200.3379, 3.538789, 120, 120, 5, 0, 3831, 0, 0, 1),
(191132, 14390, 0, 0, 0, -8176.602, -593.3247, 200.0831, 4.040922, 120, 120, 5, 0, 3831, 0, 0, 1),
(191133, 14390, 0, 0, 0, -8181.126, -591.8393, 200.2804, 5.547845, 120, 120, 5, 0, 3831, 0, 0, 1),
(191134, 14390, 0, 0, 0, -8177.798, -585.9471, 200.4166, 1.37881, 120, 120, 5, 0, 3831, 0, 0, 1),
(191135, 14393, 0, 0, 0, -8176.672, -592.8414, 200.1666, 1.384454, 180, 180, 5, 0, 3279, 1142, 0, 1),
(191136, 14393, 0, 0, 0, -8176.056, -591.6884, 200.1666, 6.074099, 180, 180, 5, 0, 3279, 1142, 0, 1);

-- Rogue Black Drake 14388
UPDATE creature SET spawntimesecsmin=60, spawntimesecsmax=60 WHERE id=14388;

DELETE FROM creature_linking WHERE master_guid=191136;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(191135, 191136, 515),
(191134, 191136, 515),
(191133, 191136, 515),
(191132, 191136, 515),
(191131, 191136, 515),
(191130, 191136, 515),
(191129, 191136, 515),
(191128, 191136, 515),
(191127, 191136, 3);

-- Grimtotem Naturalist 7726
UPDATE creature SET modelid=0 WHERE id=7726;
UPDATE creature_template_addon SET auras='' WHERE entry=7726;

-- Gnomeregan - Supercharge 10732, Rebuild 10345 Targets (same as 10348)
DELETE FROM `spell_script_target` WHERE `entry` IN (10732,10345) AND `targetEntry` IN (6225,6226,6227);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(10732, 1, 6225, 0), -- Mechano-Tank
(10345, 1, 6225, 0), -- Mechano-Tank
(10732, 1, 6226, 0), -- Mechano-Flamewalker
(10345, 1, 6226, 0), -- Mechano-Flamewalker
(10732, 1, 6227, 0), -- Mechano-Frostwalker
(10345, 1, 6227, 0); -- Mechano-Frostwalker

-- MECHANIC_DISORIENTED & MECHANIC_KNOCKOUT Immunity for Pusillin 14354
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2|8192 WHERE Entry=14354;

-- Add MECHANIC_DISARM immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4 WHERE entry IN(
7728, -- Kirith the Damned
-- alterac valley
11946, -- Drek'Thar
11948, -- Vanndar Stormpike
14762, -- Dun Baldar North Marshal
14763, -- Dun Baldar South Marshal
14764, -- Icewing Marshal
14765, -- Stonehearth Marshal
14772, -- East Frostwolf Warmaster
14773, -- Iceblood Warmaster
14776, -- Tower Point Warmaster
14777); -- West Frostwolf Warmaster

-- Dreadsteed Spirit
UPDATE creature_template SET UnitFlags=33536 WHERE entry=14504;
