-- Add support for Kel'Thuzad phase 1

SET @OGUID := 5330000; -- gameobjects
SET @CGUID := 5330000; -- creatures

-- Spawn trigger GO in center of Kel'Thuzad Chamber
DELETE FROM gameobject WHERE guid = @OGUID+202;
INSERT INTO gameobject VALUES (@OGUID+201, 181444, 533, 3716.38, -5106.47, 134.99, 3.31536, 0, 0, -0.681998, 0.731354, 604800, 604800, 100, 1);

-- Update visual trigger to proper size and flags
UPDATE gameobject_template SET size=1.5, flags=4 WHERE entry=181444;

-- Add missing triggers
DELETE FROM creature WHERE guid BETWEEN @CGUID+1040 AND @CGUID+1046;
INSERT INTO creature VALUES
(@CGUID+1040,15384,533,0,0,3654.74,-5093.97,143.338,6.1081,25,25,0,0,0,0,0,0),
(@CGUID+1041,15384,533,0,0,3682.58,-5054.35,143.19,2.39395,25,25,0,0,0,0,0,0),
(@CGUID+1042,15384,533,0,0,3728.49,-5043.13,143.392,4.54124,25,25,0,0,0,0,0,0),
(@CGUID+1043,15384,533,0,0,3767.32,-5073.84,143.184,0.514501,25,25,0,0,0,0,0,0),
(@CGUID+1044,15384,533,0,0,3749.48,-5158.37,143.183,5.25909,25,25,0,0,0,0,0,0),
(@CGUID+1045,15384,533,0,0,3704.3,-5169.33,143.364,4.48233,25,25,0,0,0,0,0,0),
(@CGUID+1046,15384,533,0,0,3665.75,-5140.24,143.184,3.7527,25,25,0,0,0,0,0,0);

-- Add missing targets for summoning spells in Kel'Thuzad encounters
DELETE FROM spell_script_target WHERE entry IN (28415, 28416, 28417);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(28415, 1, 15384, 0),
(28416, 1, 15384, 0),
(28417, 1, 15384, 0);
