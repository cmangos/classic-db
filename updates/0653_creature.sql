
SET @SEC := 21600;

-- --------------

UPDATE `creature` SET `spawntimesecs`=@SEC WHERE `id` IN ('15461' ,'15462', '15335', '15338');
