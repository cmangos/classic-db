--
--  EASTERN KINGDOMS
--

-- Alliance:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (8, 9, 15, 17, 18, 22, 23, 30, 31, 229, 230, 249, 250, 252, 254, 257,
258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 349, 352, 381,
382, 402, 404, 410, 411, 425, 427, 469, 470, 475, 476);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(8, 2, 2, 'Lakeshire - Stormwind | Takeoff extracted from verified, landing verified: videos'),     -- Fill in takeoff
(9, 5, 2, 'Stormwind - Lakeshire | Takeoff and landing extracted from verified'),                   -- Fill in landing
(15, 0, 16, 'Thelsamar - Ironforge | Landing is approximate'),                                      -- Adjust landing
(17, 1, 16, 'Menethil Harbor - Ironforge | Takeoff is approximate, landing verified: videos'),      -- Fill in takeoff
(18, 16, 1, 'Ironforge - Menethil Harbor | Takeoff extracted from verified, landing is approximate'),-- Fill in landing
(22, 4, 2, 'Darkshire - Stormwind | Takeoff and landing extracted from verified'),                  -- Fill in takeoff
(23, 5, 4, 'Stormwind - Darkshire | Takeoff and landing extracted from verified'),                  -- Fill in landing
(30, 3, 16, 'Refuge Pointe - Ironforge | Takeoff and landing extracted from verified'),             -- Fill in takeoff
(31, 15, 2, 'Ironforge - Refuge Pointe | Takeoff is approximate, landing extracted from verified'), -- Fill in landing
(229, 3, 0, 'Aerie Peak - Southshore | Takeoff extracted from verified'),
(230, 0, 1, 'Southshore - Aerie Peak | Landing extracted from verified'),
(249, 0, 2, 'Sentinel Hill - Lakeshire | Landing extracted from verified'),
(250, 0, 4, 'Sentinel Hill - Darkshire | Landing extracted from verified'),
(252, 4, 0, 'Darkshire - Sentinel Hill | Takeoff extracted from verified'),
(254, 2, 0, 'Lakeshire - Sentinel Hill | Takeoff extracted from verified'),
(257, 2, 4, 'Lakeshire - Darkshire | Takeoff and landing verified: videos'),
(258, 4, 2, 'Darkshire - Lakeshire | Takeoff and landing verified: videos'),
(259, 4, 0, 'Darkshire - Booty Bay | Takeoff extracted from verified'),
(260, 0, 2, 'Booty Bay - Darkshire | Landing extracted from verified'),
(261, 4, 0, 'Darkshire - Nethergarde Keep | Takeoff extracted from verified'),
(262, 0, 2, 'Nethergarde Keep - Darkshire | Landing extracted from verified'),
(263, 15, 1, 'Ironforge - Aerie Peak | Takeoff is approximate, landing extracted form verified'),   -- Fill in landing, adjust takeoff
(264, 3, 14, 'Aerie Peak - Ironforge | Takeoff extracted from verified, landing is approximate'),   -- Fill in takeoff
(265, 0, 1, 'Thelsamar - Menethil Harbor | Landing is approximate'),
(266, 1, 0, 'Menethil Harbor - Thelsamar | Takeoff is approximate'),
(267, 0, 1, 'Thelsamar - Refuge Pointe | Landing extracted from verified'),
(268, 3, 0, 'Refuge Pointe - Thelsamar | Takeoff extracted from verified'),
(269, 1, 2, 'Menethil Harbor - Refuge Pointe | Takeoff is approximate, landing verified: videos'),
(270, 3, 1, 'Refuge Pointe - Menethil Harbor | Takeoff extracted from verified, landing is approximate'),
(271, 1, 0, 'Menethil Harbor - Southshore | Takeoff is approximate'),
(272, 0, 1, 'Southshore - Menethil Harbor | Landing is approximate'),
(273, 3, 0, 'Refuge Pointe - Southshore | Takeoff extracted from verified'),
(274, 0, 2, 'Southshore - Refuge Pointe | Landing extracted from verified'),
(275, 3, 1, 'Refuge Pointe - Aerie Peak | Takeoff and landing verified: videos'),
(276, 3, 2, 'Aerie Peak - Refuge Pointe | Takeoff and landing extracted from verified'),
(349, 3, 0, 'Aerie Peak - Light\'s Hope Chapel | Takeoff extracted from verified'),
(352, 0, 1, 'Light\'s Hope Chapel - Aerie Peak | Landing verified: videos'),
(381, 2, 0, 'Morgan\'s Vigil - Nethergarde Keep | Takeoff extracted from verified'),
(382, 0, 3, 'Nethergarde Keep - Morgan\'s Vigil | Landing extracted from verified'),
(402, 1, 12, 'Thorium Point - Ironforge | Takeoff verified: videos, landing is approximate'),       -- Fill in takeoff
(404, 10, 1, 'Ironforge - Thorium Point | Takeoff is approximate, landing verified: videos'),       -- Fill in landing
(410, 2, 1, 'Morgan\'s Vigil - Thorium Point | Takeoff and landing extracted from verified'),
(411, 1, 3, 'Thorium Point - Morgan\'s Vigil | Takeoff and landing verified: videos'),
(425, 2, 2, 'Morgan\'s Vigil - Stormwind | Takeoff and landing extracted from verified'),           -- Fill in takeoff
(427, 4, 3, 'Stormwind - Morgan\'s Vigil | Takeoff and landing extracted and fixed from verified'), -- Fill in landing
(469, 2, 3, 'Lakeshire - Morgan\'s Vigil | Takeoff and landing verified: videos'),
(470, 2, 2, 'Morgan\'s Vigil - Lakeshire | Takeoff and landing verified: videos'),
(475, 3, 0, 'Aerie Peak - Chillwind Camp | Takeoff verified: videos'),
(476, 0, 1, 'Chillwind Camp - Aerie Peak | Landing extracted from verified');
