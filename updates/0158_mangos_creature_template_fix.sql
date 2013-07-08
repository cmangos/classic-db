-- Changes rank to normal (0) for creature 910 (Defias Enchanter) that was wrongly set to elite (1)
-- Source: http://old.wowhead.com/npc=910
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` = 910;
