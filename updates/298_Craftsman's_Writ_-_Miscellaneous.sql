-- File:	SQL
-- Name:	298_Craftsman's_Writ_-_Miscellaneous
-- Desc:	Corrections to Craftsman's_Writs Quests (rep, repeatable, minlvl)
-- Auth:	Tobschinski
-- Date:	2014/03/06

-- -------------------------------------------------------------------------

UPDATE `mangos`.`quest_template` SET `MinLevel`='55', `SpecialFlags`='1', `RewRepValue1`='25', `RewRepFaction1`='529'  WHERE `entry` IN ('9178', '9179', '9181', '9182', '9183', '9184', '9185', '9186', '9187', '9188', '9190', '9191', '9194', '9195', '9196', '9197', '9198', '9200', '9201', '9202', '9203', '9204', '9205', '9206'); 