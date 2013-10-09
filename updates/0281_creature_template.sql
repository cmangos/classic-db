-- Fixed level of creature 4421 (Charlga Razorflank) in Razorfen Kraul
-- as level was too high (37 instead of 33)
-- source: http://www.wowwiki.com/Charlga_Razorflank?oldid=362313
UPDATE `creature_template` SET `minlevel` = 33, `maxlevel` = 33 WHERE `entry` = 4421;
