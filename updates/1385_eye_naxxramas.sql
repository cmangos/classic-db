-- Added missing target for spell 16381
-- Requires https://github.com/cmangos/mangos-classic/commit/379728f100cda84c5e67debe20712dabd4c29b5e
-- This closes #191
DELETE FROM `spell_script_target` WHERE `entry` = 16381;
INSERT INTO `spell_script_target` VALUES (16381, 1, 10411, 0);
