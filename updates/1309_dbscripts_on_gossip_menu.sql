-- Added missing script for quest 3821 (Dreadmaul Rock)
-- The quest is now completable. Thanks @cooler-SAI for reporting.
-- Added missing equipment to NPC 9136 (Sha'ni Proudtusk) in Burning Steppes
-- This closes #817

-- Script when using Sha'ni remains
UPDATE `gossip_menu` SET `script_id` = 2211 WHERE `entry` = 2211;
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2211;
INSERT INTO `dbscripts_on_gossip` VALUES
(2211, 1, 10, 9136, 60000, 0, 0, 0, 0, 0, 0, 0, -7917.38, -2610.53, 221.123, 5.04026, ''),
(2211, 0, 27, 4, 0, 160445, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2211, 61, 27, 8, 0, 160445, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added missing equipment to NPC 9136 (Sha'ni Proudtusk)
UPDATE `creature_template` SET `EquipmentTemplateId` = 614 WHERE `Entry` = 9136;
