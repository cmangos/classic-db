-- Qiraji Mindslayer / Qiraji Slayer

DELETE FROM `creature_linking_template` WHERE `map` = 531 AND `entry` IN (15250, 15246);
INSERT INTO `creature_linking_template` VALUES
(15250, 531, 15252, 1679, 7),
(15246, 531, 15252, 1679, 7);
