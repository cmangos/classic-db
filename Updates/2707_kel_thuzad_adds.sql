-- Add missing template addons for NPC 16427 (Soldier of the Frozen Wastes) and 16429 (Soul Weaver) from Kel'Thuzad encounter in Naxxramas
DELETE FROM creature_template_addon WHERE entry IN (16427, 16429);
INSERT INTO `creature_template_addon` VALUES
(16427, 0, 0, 1, 16, 0, 0, '28458'),
(16429, 0, 0, 1, 16, 0, 0, '28460');
