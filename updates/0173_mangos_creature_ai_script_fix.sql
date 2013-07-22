-- Fixed Rot Hide Gnolls (creature 1674) casting Curse of Thule (spell 3237) onto themselves instead of casting it on players.
-- Source: http://www.wowhead.com/spell=3237
-- This update was also proposed to ACID team as `creature_ai_scripts` is managed by them and thus will probably be part of
-- the next ACID release
UPDATE `creature_ai_scripts` SET `action1_param2` = 1, `action1_param3` = 0 WHERE `creature_id` = 1674 AND `event_type` = 0;