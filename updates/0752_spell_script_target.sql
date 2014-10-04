-- Added missing targets for spell 5628 (Gnarlpine Vengeance) that was previously targeting players instead of 
-- nearby NPCs friendly to the spell caster
-- Thanks Zingzah for pointing and testing. This closes #589 
DELETE FROM `spell_script_target` WHERE `entry` = 5628 AND `targetEntry` IN (2006, 2007, 2008, 2009, 2012, 2013, 2014);
INSERT INTO `spell_script_target` VALUES
(5628, 1, 2006, 0),
(5628, 1, 2007, 0),
(5628, 1, 2008, 0),
(5628, 1, 2009, 0),
(5628, 1, 2012, 0),
(5628, 1, 2013, 0),
(5628, 1, 2014, 0);
