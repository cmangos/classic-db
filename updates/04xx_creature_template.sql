-- Fixed creaturetype of a few totems which where wrongly set as 'unspecified'
-- they should now behave like totems instead of mindless and harmless melee creatures
-- this close #13 
UPDATE `creature_template` SET `CreatureType` = 11 WHERE `Entry` IN (13916, 6017, 6016, 8510, 9637, 10183, 10217, 12141, 6066, 15363, 15304, 15112, 14667);
