
REPLACE INTO `script_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('-1409025', '%s forces one of his Firesworn minions to erupt!', '0', '2', '0', '0', 'Garr - EMOTE_MASSIVE_ERUPTION');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('19515', '1', '12057', '0');
('20482', '1', '12099', '0');

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
('12099', '0', '0', '1', '16', '0', '0', '8876 15733');
