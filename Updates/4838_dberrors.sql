-- Creature (Entry: 3530) has VendorTemplateId = 201 that has same item in both npc_vendor and npc_vendor_template.
-- included in VendorTemplateId 201 assigned to 3530
DELETE FROM `npc_vendor` WHERE `entry` = 3530;

-- Creature (Entry: 3532) has VendorTemplateId = 218 that has same item in both npc_vendor and npc_vendor_template.
-- included in VendorTemplateId 218 assigned to 3532
DELETE FROM `npc_vendor` WHERE `entry` = 3532;

-- Creature (Entry: 3536) has VendorTemplateId = 220 that has same item in both npc_vendor and npc_vendor_template.
-- included in VendorTemplateId 220 assigned to 3536
DELETE FROM `npc_vendor` WHERE `entry` = 3536 AND `item` IN (236,237,238,239,1849,1850);

-- Creature (Entry: 6928) has VendorTemplateId = 1202 that has same item in both npc_vendor and npc_vendor_template.
-- use unique npc_vendor instead
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 6928; -- 1202

