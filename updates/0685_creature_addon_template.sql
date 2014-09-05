
-- -------------------------

DELETE FROM `creature_template_addon` WHERE `entry` IN ('8924', '9026', '12101');
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
('12101', '0', '0', '1', '16', '0', '0', ''),
('9026', '0', '0', '1', '16', '0', '0', ''),
('8924', '0', '0', '1', '16', '0', '0', '');
