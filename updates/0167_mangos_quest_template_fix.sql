-- Changed min level for quest 256 (Wanted: Chok'Sul) to lvl 15
-- Source: http://www.wowwiki.com/Quest:WANTED:_Chok%27sul?direction=next&oldid=815824
-- Thanks to Neotmiren for pointing and researching
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 256;
