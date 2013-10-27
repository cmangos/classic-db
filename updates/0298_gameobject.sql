-- Thanks Ela for fixing
-- Added various missing gameobjects in Blackrock Spire
-- Chests
INSERT INTO `gameobject` VALUES
(87906, 153464, 229, -36.1176, -583.828, -18.8201, 1.97222, 0, 0, 0, 0, 120, 0, 1),
(87909, 153469, 229, 86.8551, -587.501, 30.6085, 2.63544, 0, 0, 0, 0, 120, 0, 1),
(87908, 153469, 229, -84.2677, -350.104, 70.9524, 1.91986, 0, 0, 0, 0, 120, 0, 1),
(87907, 153469, 229, -73.9985, -453.335, -18.935, -3.08918, 0, 0, 0, 0, 120, 0, 1),

-- Doodad_BOSSGATE02 drakes second gate ubrs uses sd2 id (for Solarkaar event)
(87855, 175947, 229, 45.1933, -312.52, 106.533, 3.14159, 0, 0, 0, 0, 180, 100, 1);

-- Adjusted Iron Dwarves runes in Blackrock Spire (Pyroguard Emberseer room) and removed duplicate runes
Update `gameobject` set `position_x` = 126.4257, `position_y` = -240.77, `position_z` = 91.4701 where `guid` = 82601;
Update `gameobject` set `position_x` = 162.310, `position_y` = -240.765, `position_z` = 91.4688 where `guid` = 82602;
Update `gameobject` set `position_x` = 162.395, `position_y` = -258.904, `position_z` = 91.4701 where `guid` = 82604;
Update `gameobject` set `position_x` = 126.337, `position_y` = -258.731, `position_z` = 91.4701 where `guid` = 82603;
Update `gameobject` set `position_x` = 126.314, `position_y` = -276.79, `position_z` = 91.4701 where `guid` = 82605;
delete from `gameobject` where `guid` = 232791;

-- Updated position of fifth mosharu tablet
-- http://www.lurkerlounge.com/forums/thread-6826.html
update `gameobject` set `position_x` = -128.234, `position_y` = -482.381, `position_z` = 25.7435, `orientation` = 6.27245, `rotation2` = 0.00536574, `rotation3` = -0.999986 where `guid` = 30277;

-- Updated position of sixth mosharu tablet
-- http://www.lurkerlounge.com/forums/thread-6826.html
update `gameobject` set `position_x` = -11.1345, `position_y` = -465.705, `position_z` = -16.8553, `orientation` = 1.5577, `rotation2` = 0.69938, `rotation3` = 0.71475  where `guid` = 30278;

-- Dragonspire Hall: last rune alit like the others
UPDATE `gameobject` SET `spawntimesecs` = 180, `animprogress` = 255, `state` = 0 WHERE `guid` = 35790;

-- Hall of Blackhand Unforged Runic Breastplate align to stand (was lying on floor)
UPDATE `gameobject` set `position_x` = 147.228, `position_y` = -240.436, `position_z` = 112.205, `orientation` = 4.66492, `rotation2` = 0.72369, `rotation3` = -0.690125 where `guid` = 35792;
