-- Removed wrong special flag in rogue quest 2358 (Horns of Nez'ra)
-- Thanks to Neotmiren for pointing and fixing
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 2358;
