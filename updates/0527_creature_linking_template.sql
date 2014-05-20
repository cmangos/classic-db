
-- ------------------

SET @HUHU := 15509;
SET @STIN := 15235;
SET @WASP := 15236;
SET @LASH := 15249;

DELETE FROM `creature_linking_template` WHERE `entry`= @STIN; -- Vekniss Stinger
DELETE FROM `creature_linking_template` WHERE `entry`= @WASP; -- Vekniss Wasp
DELETE FROM `creature_linking_template` WHERE `entry`= @LASH; -- Qiraji Lasher

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(@STIN, 531, @HUHU, 1024, 0.0),
(@WASP, 531, @STIN, 1667, 7.5),
(@LASH, 531, @STIN, 1667, 7.5);
