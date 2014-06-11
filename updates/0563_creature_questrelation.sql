-- Captain Smotts (Booty Bay) has duplicate obsolete quest entry
-- Thanks Neotmiren for pointing and fixing. This closes #472 
-- Source: http://www.wowhead.com/quest=615/the-captains-cutlass
-- http://www.wowhead.com/quest=8553/the-captains-cutlass
DELETE FROM `creature_questrelation` WHERE `quest` = 615;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 615;
