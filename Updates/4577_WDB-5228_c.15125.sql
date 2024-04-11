-- Kosco Copperpinch 15125
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE `entry` = 15125;
UPDATE `creature_template` SET `VendorTemplateId` = 451 WHERE `entry` = 15125;

