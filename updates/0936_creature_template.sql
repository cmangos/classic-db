-- Fixed speed of NPC 12222 (Creeping Sludge) in Maraudon
-- because this NPC should be very slow in order to allow kitting
-- Source: http://www.wowwiki.com/Maraudon#Orange_side
-- http://www.wowhead.com/npc=12222
UPDATE `creature_template` SET `SpeedWalk` = 0.3, `SpeedRun` = 0.4 WHERE `Entry` = 12222;
