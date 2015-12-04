-- Fixed end script emote having wrong type (whisper instead of yell) for quest 3321
UPDATE `db_script_string` SET `type` = 1, `emote` = 22 WHERE `entry` = 2000000076;
