-- Glyx Brewright 2848
-- Vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2848;
DELETE FROM `npc_vendor` WHERE `entry` = 2848 AND `item` IN (3371,3372,8925,18256);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(2848, 3371, 0, 0, 1, 0, 'Empty Vial'),
(2848, 3372, 0, 0, 2, 0, 'Leaded Vial'),
(2848, 8925, 0, 0, 3, 0, 'Crystal Vial'),
(2848, 18256, 0, 0, 4, 0, 'Imbued Vial');

UPDATE npc_vendor SET Slot = 6 WHERE entry = 2848 AND item = 1710; -- Greater Healing Potion
UPDATE npc_vendor SET Slot = 7, `maxcount`=3 WHERE entry = 2848 AND item = 3827; -- Mana Potion
UPDATE npc_vendor SET Slot = 8 WHERE entry = 2848 AND item = 6057; -- Recipe: Nature Protection Potion
UPDATE npc_vendor SET Slot = 9 WHERE entry = 2848 AND item = 6056; -- Recipe: Frost Protection Potion

