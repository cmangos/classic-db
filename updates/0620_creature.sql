
SET @ID   := 4851; -- Stonevault Rockchewer
SET @RESP := 7200; -- 2 hours
SET @MAP  := 70;   -- Uldaman

-- --------------

UPDATE `creature` SET `spawntimesecs`=@RESP WHERE `id`=@ID AND `map`=@MAP;
