-- add a third Obsidian Eradicator for later use
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('590012', '15262', '531', '0', '0', '-8271.91', '2107.50', '118.176', '0.261538', '3600', '0', '0', '170805', '24340', '0', '0');
-- fix positioning of NPC after Prophet Skeram
UPDATE `creature` SET `position_x`='-8496.217773', `position_y`='1932.542114', `position_z`='135.656693', `orientation`='1.191309' WHERE `guid`='87527';
UPDATE `creature` SET `position_x`='-8499.437500', `position_y`='1933.481079', `position_z`='135.622940', `orientation`='1.034229' WHERE `guid`='87528';
UPDATE `creature` SET `position_x`='-8500.196289', `position_y`='1937.245483', `position_z`='135.669495', `orientation`='0.437326' WHERE `guid`='87529';
