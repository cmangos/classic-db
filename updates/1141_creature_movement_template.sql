-- Added missing script from update [1139]

SET @GUID := 154622;

UPDATE `creature_movement` SET `script_id` = 4729401 WHERE `point` = 9 AND `id` IN (@GUID + 45, @GUID + 46);
