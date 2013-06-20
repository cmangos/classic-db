-- Readds conditions about waypoint movement and skill levels wrongly removed in rev 0145

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 360 AND 390;
INSERT INTO `conditions` VALUES (360, -1, 358, 359);
INSERT INTO `conditions` VALUES (361, 7, 171, 50);
INSERT INTO `conditions` VALUES (362, 7, 171, 125);
INSERT INTO `conditions` VALUES (363, 7, 171, 200);
INSERT INTO `conditions` VALUES (364, -1, 362, 3);
INSERT INTO `conditions` VALUES (365, -1, 362, 4);
INSERT INTO `conditions` VALUES (366, 7, 164, 50);
INSERT INTO `conditions` VALUES (367, 7, 164, 125);
INSERT INTO `conditions` VALUES (368, 7, 164, 200);
INSERT INTO `conditions` VALUES (372, 7, 197, 50);
INSERT INTO `conditions` VALUES (373, 7, 197, 125);
INSERT INTO `conditions` VALUES (374, 7, 197, 200);
INSERT INTO `conditions` VALUES (375, -1, 373, 3);
INSERT INTO `conditions` VALUES (376, -1, 373, 4);
INSERT INTO `conditions` VALUES (377, 7, 165, 50);
INSERT INTO `conditions` VALUES (378, 7, 165, 125);
INSERT INTO `conditions` VALUES (379, 7, 165, 200);
INSERT INTO `conditions` VALUES (380, 7, 333, 50);
INSERT INTO `conditions` VALUES (381, 7, 333, 125);
INSERT INTO `conditions` VALUES (382, 7, 333, 200);
INSERT INTO `conditions` VALUES (383, 33, 2, 1);
INSERT INTO `conditions` VALUES (384, 33, 8, 0);
INSERT INTO `conditions` VALUES (385, 33, 8, 2);
INSERT INTO `conditions` VALUES (386, 33, 10, 2);
INSERT INTO `conditions` VALUES (387, -1, 383, 386);
INSERT INTO `conditions` VALUES (388, -1, 383, 385);
INSERT INTO `conditions` VALUES (389, 33, 1, 0);
INSERT INTO `conditions` VALUES (390, 33, 10, 0);

