
SET @PYRON := '4593';
SET @BEHEMOTH := '4593';

-- -------------------------

-- GUIDs in ClassicDB
DELETE FROM `creature_addon` WHERE `guid`=@PYRON + 00;
DELETE FROM `creature_addon` WHERE `guid`=@BEHEMOTH + 00;
