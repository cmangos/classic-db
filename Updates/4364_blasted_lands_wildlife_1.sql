
DELETE FROM `creature` WHERE (`guid` IN (2878, 3921, 3922, 3923, 3924, 3927, 3933, 3935)); -- Redstone Crystalhide (2878 & 3935 do not exist, rest are different templates)
DELETE FROM `creature` WHERE (`guid` IN (3932, 3936)); --  Ashmane Boar & Redstone Basilisk (different template, only TBC+)
DELETE FROM `creature` WHERE (`guid` IN (3925, 3926)); -- Helboar (different template, only TBC+)

SET @CGUID := 140290;
SET @SGUID := 249;

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(@CGUID + 000, 0, 0, 1, -11515.7744140625, -3214.702392578125, 8.199786186218261718, 0.942323446273803710, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 000
(@CGUID + 001, 0, 0, 1, -11547.8173828125, -3249.014404296875, 6.965761661529541015, 3.893105506896972656, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 001
(@CGUID + 002, 0, 0, 1, -11582.7783203125, -3281.576416015625, 10.39273834228515625, 3.953731775283813476, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 002
(@CGUID + 003, 0, 0, 1, -11549.3437500000, -3184.436767578125, 5.096073627471923828, 2.410356760025024414, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 003
(@CGUID + 004, 0, 0, 1, -11483.1005859375, -3249.328613281250, 16.41819190979003906, 0.558159232139587402, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 004
(@CGUID + 005, 0, 0, 1, -11415.8564453125, -3248.860351562500, 9.892518043518066406, 0.862841129302978515, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 005
(@CGUID + 006, 0, 0, 1, -11384.6787109375, -3285.565185546875, 1.739705324172973632, 0.815740704536437988, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 006
(@CGUID + 007, 0, 0, 1, -11351.5019531250, -3251.598144531250, 9.210183143615722656, 3.532057762145996093, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 007
(@CGUID + 008, 0, 0, 1, -11382.6630859375, -3216.719726562500, 11.77551269531250000, 5.179092407226562500, 300, 300, 45, 1), -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 008
(@CGUID + 009, 0, 0, 1, -11581.5908203125, -3216.217529296875, 6.155599594116210937, 3.890923261642456054, 300, 300, 45, 1); -- Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast(1) Wandering 009

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(@SGUID + 000, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 000', 0, 0, 0, 0, 0),
(@SGUID + 001, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 001', 0, 0, 0, 0, 0),
(@SGUID + 002, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 002', 0, 0, 0, 0, 0),
(@SGUID + 003, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 003', 0, 0, 0, 0, 0),
(@SGUID + 004, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 004', 0, 0, 0, 0, 0),
(@SGUID + 005, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 005', 0, 0, 0, 0, 0),
(@SGUID + 006, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 006', 0, 0, 0, 0, 0),
(@SGUID + 007, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 007', 0, 0, 0, 0, 0),
(@SGUID + 008, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 008', 0, 0, 0, 0, 0),
(@SGUID + 009, 'Blasted Lands - Snickerfang Hyena | Scorpok Stinger | Felbeast (1) Wandering 009', 0, 0, 0, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(@SGUID + 000, @CGUID + 000, 0, 0),
(@SGUID + 001, @CGUID + 001, 0, 0),
(@SGUID + 002, @CGUID + 002, 0, 0),
(@SGUID + 003, @CGUID + 003, 0, 0),
(@SGUID + 004, @CGUID + 004, 0, 0),
(@SGUID + 005, @CGUID + 005, 0, 0),
(@SGUID + 006, @CGUID + 006, 0, 0),
(@SGUID + 007, @CGUID + 007, 0, 0),
(@SGUID + 008, @CGUID + 008, 0, 0),
(@SGUID + 009, @CGUID + 009, 0, 0);

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(@SGUID + 000, 5985, 0, 0, 0), (@SGUID + 000, 5988, 0, 0, 0), (@SGUID + 000, 8675, 0, 0, 0),
(@SGUID + 001, 5985, 0, 0, 0), (@SGUID + 001, 5988, 0, 0, 0), (@SGUID + 001, 8675, 0, 0, 0),
(@SGUID + 002, 5985, 0, 0, 0), (@SGUID + 002, 5988, 0, 0, 0), (@SGUID + 002, 8675, 0, 0, 0),
(@SGUID + 003, 5985, 0, 0, 0), (@SGUID + 003, 5988, 0, 0, 0), (@SGUID + 003, 8675, 0, 0, 0),
(@SGUID + 004, 5985, 0, 0, 0), (@SGUID + 004, 5988, 0, 0, 0), (@SGUID + 004, 8675, 0, 0, 0),
(@SGUID + 005, 5985, 0, 0, 0), (@SGUID + 005, 5988, 0, 0, 0), (@SGUID + 005, 8675, 0, 0, 0),
(@SGUID + 006, 5985, 0, 0, 0), (@SGUID + 006, 5988, 0, 0, 0), (@SGUID + 006, 8675, 0, 0, 0),
(@SGUID + 007, 5985, 0, 0, 0), (@SGUID + 007, 5988, 0, 0, 0), (@SGUID + 007, 8675, 0, 0, 0),
(@SGUID + 008, 5985, 0, 0, 0), (@SGUID + 008, 5988, 0, 0, 0), (@SGUID + 008, 8675, 0, 0, 0),
(@SGUID + 009, 5985, 0, 0, 0), (@SGUID + 009, 5988, 0, 0, 0), (@SGUID + 009, 8675, 0, 0, 0);
