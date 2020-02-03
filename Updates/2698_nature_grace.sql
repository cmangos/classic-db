-- Remove Physical School for Natures Grace 16880
-- Might need to be more specific
-- https://github.com/cmangos/issues/issues/2113
UPDATE `spell_proc_event` SET `SchoolMask` = 2+4+8+16+32+64 WHERE `entry` = 16880;
