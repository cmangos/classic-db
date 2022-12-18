-- Using parentspell causes wired visual bugs in classic and tbcmangos
UPDATE `npc_trainer` SET `spell` = 3908 WHERE `spell` = 3911; -- 21
UPDATE `npc_trainer` SET `spell` = 3909 WHERE `spell` = 3912; -- 13
UPDATE `npc_trainer` SET `spell` = 3910 WHERE `spell` = 3913; -- 5
UPDATE `npc_trainer` SET `spell` = 12180 WHERE `spell` = 12181; -- 3
UPDATE `npc_trainer` SET `spell` = 26790 WHERE `spell` = 26791; -- 0

