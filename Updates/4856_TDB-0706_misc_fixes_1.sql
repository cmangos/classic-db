-- Correct VendorSlot List for Maria Lumere
-- https://www.wowhead.com/tbc/npc=1313/maria-lumere
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 1313; -- 14 items in wotlk
DELETE FROM `npc_vendor` WHERE `entry` = 1313;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(1313, 3371, 0, 0, 1, 0, 'Empty Vial'),
(1313, 3372, 0, 0, 2, 0, 'Leaded Vial'),
(1313, 8925, 0, 0, 3, 0, 'Crystal Vial'),
(1313, 18256, 0, 0, 4, 0, 'Imbued Vial'),
-- https://www.wowhead.com/wotlk/item=40411/enchanted-vial - 5 wotlk+
(1313, 9301, 1, 2700, 6, 0, 'Recipe: Elixir of Shadow Power'),
(1313, 765, 3, 7200, 7, 0, 'Silverleaf'),
(1313, 785, 4, 7200, 8, 0, 'Mageroyal'),
(1313, 2447, 3, 7200, 9, 0, 'Peacebloom'),
(1313, 2449, 6, 7200, 10, 0, 'Earthroot'),
(1313, 2453, 4, 7200, 11, 0, 'Bruiseweed'),
(1313, 3355, 1, 7200, 12, 0, 'Wild Steelbloom'),
(1313, 3356, 1, 7200, 13, 0, 'Kingsblood'),
(1313, 3357, 1, 7200, 14, 0, 'Liferoot');

