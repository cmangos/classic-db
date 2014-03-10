-- File:	SQL
-- Name:	292_Quest_Counting_out_Time
-- Desc:	Corrections Quests Counting out Time (making repeatable)
-- Auth:	Tobschinski
-- Date:	2014/03/06

-- -------------------------------------------------------------------------

UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 4973;