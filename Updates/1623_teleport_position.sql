-- Fixed position for spell 20618 (Teleport) used in Majordomo Executus encounter
DELETE FROM `spell_target_position` WHERE `id` = 20618;
INSERT INTO `spell_target_position` VALUES (20618, 409, 737.16, -1176.70, -118.93, 3.131);
