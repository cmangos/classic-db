-- Fixed respawn time of creature 16861 (Death Lord) in Naxxramas
-- Respawn time adjusted to other similar creatures (Deathknights)
-- Thanks Metalica for pointing
UPDATE `creature` SET `spawntimesecs` = 3520 WHERE `id` = 16861;
