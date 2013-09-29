-- Added quest completion script for quest 407 (Fields of Grief part 2)
-- Source: UDB

-- Setting db_script_strings as variables because these value differs with UDB or TBC-DB
SET @STR1 := 2000000024;
SET @STR2 := 2000000025;

-- Added completion script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 407;
INSERT INTO `dbscripts_on_quest_end` VALUES
(407, 0, 0, 0, 0, 0, 0, 0, @STR1, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2287.97, 236.253, 27.0892, 2.6613, ''),
(407, 3, 15, 3287, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2292, 239.481, 27.0892, 0.693878, ''),
(407, 9, 0, 0, 0, 0, 0, 0, @STR2, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 13, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2292.52, 235.226, 27.0892, 4.8345, ''),
(407, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2288.96, 237.96, 27.0892, 2.48773, ''),
(407, 19, 15, 5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added missing strings for script
DELETE FROM `db_script_string` WHERE `entry` IN (@STR1, @STR2);
INSERT INTO `db_script_string` VALUES
(@STR1, 'I. . .I. . .don\'t. . .feel. . .right. . .', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STR2, 'My mind. . .my flesh. . .I\'m. . .rotting. . . .!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
