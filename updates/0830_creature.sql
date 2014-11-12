-- Removed duplicate Midsummer bonefires in Ironforge. Also fixed the model used
-- Thanks 249CAAFE40 for pointing. This closes #659
DELETE FROM `creature` WHERE `guid` = 1882;
UPDATE `creature` SET `modelid` = 0 WHERE `guid` = 94910;
