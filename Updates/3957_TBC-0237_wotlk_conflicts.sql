-- https://github.com/cmangos/tbc-db/commit/818ae983212955991450babdeeb04026e96b8469#r73500518
UPDATE `gameobject` SET `guid` = 50 WHERE `guid` = 6000016; -- move to non instance range
UPDATE `dbscripts_on_quest_end` SET `datalong` = 50 WHERE `id` = 2521 AND `delay` = 139000 AND `datalong` = 6000016; -- To Serve Kum'isha: Respawn GameObject Nether Rift

