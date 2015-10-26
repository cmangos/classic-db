-- Added missing items to NPC vendor Nathaniel Steenwick
-- They were removed during TBC
-- This contributes to #809  
DELETE FROM `npc_vendor` WHERE `entry` = 4592 AND `item` IN (2946, 3107, 3111, 3137, 15326);
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`,`condition_id`) VALUES
(4592,2946,0,0,0),
(4592,3111,0,0,0),
(4592,3137,0,0,0),
(4592,15326,0,0,0),
(4592,3107,0,0,0);
