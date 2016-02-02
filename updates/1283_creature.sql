-- Fixed NPC 45477 (Lumberjack) in Westfall not using his wood chop emote
-- due to wrong model forced at spawn
UPDATE `creature` SET `modelid` = 0 WHERE `guid` = 45477;
