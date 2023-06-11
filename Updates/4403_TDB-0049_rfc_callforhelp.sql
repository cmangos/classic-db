-- Reduce default CallForHelp for RFC npcs
UPDATE `creature_template` SET `CallForHelp` = 5 WHERE `entry` IN (11318,11319,11320,11321,11322,11323,11324);

-- 2023-06-11 13:13:20 Table `dbscripts_on_creature_movement` contain unused script, id 1043. only used in wotlk now, classic already has it deleted.
-- DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1043; -- GENERIC EMOTE - ONESHOT_PARRYSHIELD, seemingly unused now.

