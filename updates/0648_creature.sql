-- Fixed respawn time of three bosses in Ruins of Ahn'Qiraj
-- Moam (Currently 8 hours)
UPDATE `creature` SET `spawntimesecs` = '259200' WHERE `id` = 15340; 

-- General Rajaxx (Currently 8 hours)
UPDATE `creature` SET `spawntimesecs` = '259200' WHERE `id` = 15341;

-- Ossirian the Unscarred (Currently 8 hours)
UPDATE `creature` SET `spawntimesecs` = '259200' WHERE `id` = 15339;