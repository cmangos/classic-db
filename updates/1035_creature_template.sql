-- Fixed quest 590 (A Rogue's Deal)
-- Thanks Scotty0100 and Tobschinski for pointing. This closes #66 
UPDATE `creature_template` SET `UnitFlags` = 33536 WHERE `Entry` = 6784;
UPDATE `creature_template` SET `NpcFlags` = 0, `UnitFlags` = 32768, `ExtraFlags` = 0 WHERE `Entry` = 7980;
