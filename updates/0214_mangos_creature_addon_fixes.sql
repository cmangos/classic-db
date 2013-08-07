-- Fixed stealth aura missing for creatures 947 (Rohh the Silent), 3457 (Razormane Stalker), 684 (Shadowmaw Panther)
-- Thanks scotty0100 for pointing
-- Rohh the Silent
-- Source: http://www.wowhead.com/npc=947/rohh-the-silent#comments:id=117974
UPDATE `creature_template_addon` SET `b2_0_sheath` = 1, `auras` = 6408 WHERE `entry` = 947;
DELETE FROM `creature_addon` WHERE `guid` IN (28480, 134148, 134149, 134150, 134151, 134152, 134153, 134154, 134155, 134156, 134157, 134158, 134159);
INSERT INTO `creature_addon` VALUES
(28480, 0, 33554432, 1, 16, 0, 0, '6408'),
(134148, 0, 33554432, 1, 16, 0, 0, '6408'),
(134149, 0, 33554432, 1, 16, 0, 0, '6408'),
(134150, 0, 33554432, 1, 16, 0, 0, '6408'),
(134151, 0, 33554432, 1, 16, 0, 0, '6408'),
(134152, 0, 33554432, 1, 16, 0, 0, '6408'),
(134153, 0, 33554432, 1, 16, 0, 0, '6408'),
(134154, 0, 33554432, 1, 16, 0, 0, '6408'),
(134155, 0, 33554432, 1, 16, 0, 0, '6408'),
(134156, 0, 33554432, 1, 16, 0, 0, '6408'),
(134157, 0, 33554432, 1, 16, 0, 0, '6408'),
(134158, 0, 33554432, 1, 16, 0, 0, '6408'),
(134159, 0, 33554432, 1, 16, 0, 0, '6408');

-- Shadowmaw Panthers
-- Source: http://www.wowhead.com/npc=684/shadowmaw-panther#comments:id=71387
UPDATE `creature_addon` SET `bytes1` = 33554432, `auras` = '6408' WHERE `guid` IN (1109, 1224, 1231, 1260, 1297, 1328, 1343, 1347, 1350, 1352, 1354, 1424, 1666, 1864, 1865, 1866, 1899, 1900, 1930, 2058, 2062, 2558, 2578, 2583, 2585);
-- Razormane Stalkers
-- Source: http://www.wowhead.com/npc=3457#comments:id=328513
UPDATE `creature_addon` SET `auras` = '6408' WHERE `guid` IN (14447, 14448, 14449, 14450, 14451, 14452, 14453, 14454, 14455, 14456, 14457, 14458, 14459, 14460, 14461, 14462, 14463);
