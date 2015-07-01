-- Added support for Dark Coffer event in Blackrock Depths
-- Added missing GO (portraits and nameplates) and put them into pools
-- Fixed texts on nameplates GOs
-- Added script to spawn Dark Keepers NPCs (one per instance)
-- Added waypoints for one of the Dark Keeper
-- Prevent exploit of the Dark Coffer
-- Various fixes: flags, factions, respawn time...
-- This closes #178 and closes #380
-- Thanks @nekoi and @scotty0100 for reporting
-- Thanks @evil-at-wow and @Tobschinski for data and researching

SET @GUID := 160005;
SET @POOL := 15007;
SET @TIME := 3 * 60 * 60 * 1000; -- 3 hours

-- Added missing GO spawns (Dark Keeper Nameplate and Dark Keeper Portrait)
-- Fixed spawn time
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 10;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + 1, 164820, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, @TIME, 100, 1),
(@GUID + 2, 164821, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, @TIME, 100, 1),
(@GUID + 3, 164822, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, @TIME, 100, 1),
(@GUID + 4, 164823, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, @TIME, 100, 1),
(@GUID + 5, 164824, 230, 831.54, -339.529, -46.682, 0.802851, 0, 0, 0.390731, 0.920505, @TIME, 100, 1),
(@GUID + 6, 164818, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, @TIME, 100, 1),
(@GUID + 7, 161456, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, @TIME, 100, 1),
(@GUID + 8, 161457, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, @TIME, 100, 1),
(@GUID + 9, 161458, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, @TIME, 100, 1),
(@GUID + 10, 161459, 230, 831.471, -339.58, -46.7698, 0.820305, 0, 0, 0.398749, 0.91706, @TIME, 100, 1);
UPDATE `gameobject` SET `spawntimesecs` = @TIME WHERE `id` IN (164825, 164819);

-- Fixed wrong flags for some of the Dark Keeper Nameplate
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (164820, 164825);

-- Group all the GOs into pools and pools of pools to have only one Dark Keeper per instance
DELETE FROM `pool_gameobject` WHERE `guid` IN (@GUID + 1, @GUID + 2, @GUID + 3, @GUID + 4, @GUID + 5, @GUID + 6, @GUID + 7, @GUID + 8, @GUID + 9, @GUID + 10, 43130, 43131);
INSERT INTO `pool_gameobject` VALUES
(43130, @POOL, 100 ,'Dark Keeper Nameplate'),
(43131, @POOL, 100 ,'Dark Keeper Nameplate'),
(@GUID + 1, @POOL + 1, 100, 'Dark Keeper Nameplate'),
(@GUID + 7, @POOL + 1, 100, 'Dark Keeper Nameplate'),
(@GUID + 2, @POOL + 2, 100, 'Dark Keeper Nameplate'),
(@GUID + 8, @POOL + 2, 100, 'Dark Keeper Nameplate'),
(@GUID + 3, @POOL + 3, 100, 'Dark Keeper Nameplate'),
(@GUID + 9, @POOL + 3, 100, 'Dark Keeper Nameplate'),
(@GUID + 4, @POOL + 4, 100, 'Dark Keeper Nameplate'),
(@GUID + 10, @POOL + 4, 100, 'Dark Keeper Nameplate'),
(@GUID + 5, @POOL + 5, 100, 'Dark Keeper Nameplate'),
(@GUID + 6, @POOL + 5, 100, 'Dark Keeper Nameplate');

DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN @POOL AND @POOL + 5;
INSERT INTO `pool_pool` VALUES
(@POOL, @POOL + 6, 0, 'Dark Keeper Nameplate'),
(@POOL + 1, @POOL + 6, 0, 'Dark Keeper Nameplate'),
(@POOL + 2, @POOL + 6, 0, 'Dark Keeper Nameplate'),
(@POOL + 3, @POOL + 6, 0, 'Dark Keeper Nameplate'),
(@POOL + 4, @POOL + 6, 0, 'Dark Keeper Nameplate'),
(@POOL + 5, @POOL + 6, 0, 'Dark Keeper Nameplate');

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL AND @POOL + 6;
INSERT INTO `pool_template` VALUES
(@POOL, 2, 'Dark Keeper Nameplate'),
(@POOL + 1, 2, 'Dark Keeper Nameplate'),
(@POOL + 2, 2, 'Dark Keeper Nameplate'),
(@POOL + 3, 2, 'Dark Keeper Nameplate'),
(@POOL + 4, 2, 'Dark Keeper Nameplate'),
(@POOL + 5, 2, 'Dark Keeper Nameplate'),
(@POOL + 6, 1, 'MASTER - Dark Keeper Nameplate');

-- Fixed the name plate texts which were using wrong text or bad line breaks
UPDATE `page_text` SET `text` = 'Vorfalk Irongourd$B$BVorfalk works the store room of the Grim Guzzler, and his sacrifice to the Dark Keepers runs deep.$B$BMay his spirit hold strong.' WHERE `entry` = 1431;
UPDATE `page_text` SET `text` = 'Bethek Stormbrow$B$BBethek\'s wanderings take him deep within Blackrock. The secrets of the mountain beckon him.$B$BMay his spirit never falter.' WHERE `entry` = 1432;
UPDATE `page_text` SET `text` = 'Uggel Hammerhand$B$BUggel is a skilled and solemn chiseler, and when not burdened with the dark key, his hands shape great works in the Hall of Crafting.' WHERE `entry` = 1433;
UPDATE `page_text` SET `text` = 'Zimrel Darktooth$B$BWhen the madness of the dark key takes hold of Zimrel, only the screams of the dying can soothe him.$B$BFor his sacrifice, he will always have a bench above the arena.  May our blood sports temper the rage in his heart.' WHERE `entry` = 1434;
UPDATE `page_text` SET `text` = 'Ofgut Stonefist$B$BThose fallen before Dark Keeper Ofgut\'s hammer cannot be counted.$B$BThe soldiers of the West Garrison bow in awe as he passes.  For who among them can look into the eyes of Ofgut and see the secrets the dark key whispers?.' WHERE `entry` = 1435;
UPDATE `page_text` SET `text` = 'Pelver Deepstomp$B$BDark Keeper Pelver is our most honored disciple.  He has borne the key for longer than any, and it has cost him dearly.  When he is called for his burden, he is guarded in the Domicile.$B$BHis sacrifice is cherished, and he will remain in our hearts for many years... after the darkness takes him.' WHERE `entry` = 1436;

-- Added script for each Dark Keeper portrait in order to spawn the respective Dark Keeper NPC and his guards
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN (161456, 161457, 161458, 161459, 164818, 164819);
INSERT INTO `dbscripts_on_go_template_use` VALUES
(161456, 0, 10, 9437, @TIME, 0, 0, 0, 0, 0, 0, 0, 815.276, -168.652, -49.6699, 6.23083, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 816.276, -167.652, -49.6699, 5.58505, 'Spawn Dark Keeper Vorfalk and his guards'),
(161456, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 817.276, -166.652, -49.6699, 4.88692, 'Spawn Dark Keeper Vorfalk and his guards'),
(161458, 0, 10, 9439, @TIME, 0, 0, 0, 0, 0, 0, 0, 901.537, -359.291, -49.908, 3.31613, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 903.295, -356.783, -49.8522, 3.68264, 'Spawn Dark Keeper Uggel and his guards'),
(161458, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 902.896, -361.966, -50.0812, 2.74017, 'Spawn Dark Keeper Uggel and his guards'),
(161459, 0, 10, 9441, @TIME, 0, 0, 0, 0, 0, 0, 0, 549.701, -214.474, -36.8893, 0.331613, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 549.796, -217.958, -36.8654, 0.890118, 'Spawn Dark Keeper Zimrel and his guards'),
(161459, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 548.083, -212.932, -36.8628, 6.26573, 'Spawn Dark Keeper Zimrel and his guards'),
(164818, 0, 10, 9442, @TIME, 0, 0, 0, 0, 0, 0, 0, 679.491, -7.79026, -59.9754, 1.8326, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 680.491, -6.79026, -59.9754, 2.18166, 'Spawn Dark Keeper Ofgut and his guards'),
(164818, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 681.491, -5.79026, -59.9754, 2.58309, 'Spawn Dark Keeper Ofgut and his guards'),
(164819, 0, 10, 9443, @TIME, 0, 0, 0, 0, 0, 0, 0, 802.755, -245.25, -43.2198, 2.93215, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 805.289, -243.172, -43.2198, 3.42085, 'Spawn Dark Keeper Pelver and his guards'),
(164819, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 801.935, -248.841, -43.2198, 1.95477, 'Spawn Dark Keeper Pelver and his guards'),
(161457, 0, 10, 9438, @TIME, 0, 0, 0, 0, 0, 0, 0, 862.461, -309.724, -49.8757, 3.85883, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 863.219, -305.041, -49.8751, 3.68264, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 860.947, -302.54, -49.8787, 4.04916, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 864.232, -303.735, -49.8527, 3.735, 'Spawn Dark Keeper Bethek and his guards'),
(161457, 0, 10, 9445, @TIME, 0, 0, 0, 0, 0, 0, 0, 862.676, -301.922, -49.8527, 3.9619, 'Spawn Dark Keeper Bethek and his guards');

-- Made Dark Coffer (GO 160845) usable by players only once they have open the Dark Coffer Door (GO 174565) 
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 174565;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(174565, 0, 27, 0x08, 0, 160845, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Fixed spawn time of GO 160836 (Relic Coffer): they were respawning in 10 min, making them easily exploitable
UPDATE `gameobject` SET `spawntimesecs` = @TIME WHERE `id` = 160836;

-- Fixed faction and movement of the Dark Keepers: they are Dark Iron Dwarves and not wolves.
-- Only NPC 9438 (Dark Keeper Bethek) should move (WP movement)
UPDATE `creature_template` SET `FactionAlliance` = 54, `FactionHorde` = 54, `MovementType` = 0 WHERE `Entry` IN (9437, 9445, 9439, 9441, 9442, 9443);
UPDATE `creature_template` SET `FactionAlliance` = 54, `FactionHorde` = 54, `MovementType` = 2 WHERE `Entry` = 9438;
UPDATE `creature_template` SET `EquipmentTemplateId` = 156 WHERE `Entry` = 9445;

-- Waypoints for NPC 9438 (Dark Keeper Bethek)
-- He will now spawn in the back of the player using the Nameplate and kick his/her ass
DELETE FROM `creature_movement_template` WHERE `entry` = 9438;
INSERT INTO `creature_movement_template` VALUES
(9438, 1, 855.505, -309.724, -50.1398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 2, 847.214, -316.912, -50.2843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 3, 842.652, -321.334, -50.2848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 4, 839.316, -324.232, -50.6638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 5, 833.983, -329.089, -50.6638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 6, 822.84, -339.999, -50.1851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 7, 810.483, -350.225, -50.5781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 8, 806.646, -353.272, -50.1957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(9438, 9, 806.646, -353.272, -50.1957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.715585, 0, 0);

-- Linked Dark Guards with Dark Keeper Bethek: aggro and follow
DELETE FROM `creature_linking_template` WHERE `entry` = 9445;
INSERT INTO `creature_linking_template` VALUES
(9445, 230, 9438, 515, 20);
