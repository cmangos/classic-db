-- Updated Darnall Vendor List: in classic he sold runecloth patterns
-- Source: http://wowd.org/creatures/7940.html
DELETE FROM `npc_vendor` WHERE `entry` = 7940 AND `item` IN (14472, 14469, 14488);
INSERT INTO `npc_vendor` VALUES 
(7940, 14472, 1, 1200, 0), -- adds Pattern: Runecloth Cloak to Darnalls item list
(7940, 14469, 1, 1200, 0), -- Pattern: Runecloth Robe
(7940, 14488, 1, 1200, 0); -- Pattern: Runecloth Boots
