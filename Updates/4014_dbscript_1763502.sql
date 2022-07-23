-- Table `dbscripts_on_creature_movement` SCRIPT_COMMAND_MOVEMENT has invalid forced movement type 8 for script id 1763502
-- https://github.com/cmangos/issues/wiki/dbscripts
UPDATE `dbscripts_on_creature_movement` SET `data_flags` = 8, `dataint` = 0 WHERE `id` = 1763502 AND `command` = 20; -- Lordaeron Commander/Veteran - Set movement to random

