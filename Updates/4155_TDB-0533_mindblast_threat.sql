-- Prior to Patch 2.0, it caused 100% extra threat, reducing its PvE viability.
-- https://wowwiki.fandom.com/wiki/Mind_Blast?oldid=1588360
-- DELETE FROM `spell_threat` WHERE `entry` = 8092; -- Mind Blast	8092	0	2	0
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`) VALUES (8092, 0, 2, 0);

