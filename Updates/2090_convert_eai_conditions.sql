-- Port ACID Event 22 EVENT_T_RECEIVE_EMOTE Conditions to `conditions` and adjust ACID
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 544 AND 551;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES
-- (XXX + 1, 6, 469), -- condition 4
-- (XXX + 1, 6, 67), -- condition 3
(544, 9, 8353),
(545, 9, 8354),
(546, 9, 8357),
(547, 9, 8360),
(548, 9, 8356),
(549, 9, 8359),
(550, 9, 8355),
(551, 9, 8358);

-- UPDATE `creature_ai_scripts` SET `event_param2` = 10040, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (8) AND `event_param3` IN (11000); -- condition 10040
-- UPDATE `creature_ai_scripts` SET `event_param2` = 4, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (6) AND `event_param3` IN (469); -- condition 4
-- UPDATE `creature_ai_scripts` SET `event_param2` = 3, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (6) AND `event_param3` IN (67); -- condition 3
-- UPDATE `creature_ai_scripts` SET `event_param2` = 544, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8353);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 545, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8354);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 546, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8357);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 547, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8360);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 548, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8356);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 549, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8359);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 550, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8355);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 551, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8358);

