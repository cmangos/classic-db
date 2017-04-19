-- Added missing spell target for two spells used in Garr encounter 19515 (Enrage Trigger) and 20482 (Firesworn Eruption Trigger)
DELETE FROM `spell_script_target` WHERE `entry` IN (19515, 20482);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('19515', '1', '12057', '0'),
('20482', '1', '12099', '0');

-- Updated addon for NPC 12099 (Firesworn)
DELETE FROM `creature_template_addon` WHERE `entry` = 12099;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
('12099', '0', '0', '1', '16', '0', '0', '8876 15733');
