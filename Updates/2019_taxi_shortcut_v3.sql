--
--  KALIMDOR
--

-- Alliance:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (50, 51, 56, 57, 58, 59, 101, 102, 141,
163, 181, 182, 201, 222, 225, 226, 289, 329, 330, 368, 369, 386, 445, 446, 460, 464);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(50, 0, 1, 'Astranaar - Auberdine | Landing extracted from verified'),
(51, 2, 0, 'Auberdine - Astranaar | Takeoff extracted from verified'),
(56, 2, 0, 'Theramore - Thalanaar | Takeoff extracted from verified'),
(57, 0, 1, 'Thalanaar - Theramore | Landing extracted from verified'),
(58, 0, 1, 'Stonetalon Peak - Auberdine | Landing extracted from verified'),
(59, 2, 0, 'Auberdine - Stonetalon Peak | Takeoff extracted from verified'),
(101, 2, 0, 'Auberdine - Rut\'theran Village | Takeoff extracted from verified'),
(102, 0, 1, 'Rut\'theran Village - Auberdine | Landing verified: videos'),
(141, 0, 1, 'Nijel\'s Point - Theramore | Landing extracted from verified'),
(163, 3, 0, 'Theramore - Nijel\'s Point | Takeoff extracted from verified'),
(181, 2, 2, 'Auberdine - Theramore | Takeoff and landing verified: videos'),
(182, 3, 1, 'Theramore - Auberdine | Takeoff and landing extracted from verified'),
(201, 0, 3, 'Gadgetzan - Theramore | Landing extracted from verified'),
(222, 3, 0, 'Theramore - Gadgetzan | Takeoff verified: videos'),
(225, 0, 1, 'Feathermoon Stronghold - Auberdine | Landing extracted from verified'),
(226, 2, 0, 'Auberdine - Feathermoon Stronghold | Takeoff extracted from verified'),
(289, 2, 0, 'Auberdine - Moonglade | Takeoff extracted from verified'),
(329, 0, 1, 'Talrendis Post - Auberdine | Landing extracted from verified'),
(330, 2, 0, 'Auberdine - Talrendis Post | Takeoff extracted from verified'),
(368, 0, 1, 'Moonglade - Auberdine | Landing extracted from verified'),
(369, 0, 1, 'Talonbranch Glade - Auberdine | Landing extracted from verified'),
(386, 2, 0, 'Auberdine - Talonbranch Glade | Takeoff extracted from verified'),
(445, 2, 0, 'Theramore - Talrendis Post | Takeoff extracted from verified'),
(446, 0, 1, 'Talrendis Post - Theramore | Landing extracted from verified'),
(460, 0, 1, 'Ratchet - Theramore | Landing extracted from verified'),
(464, 2, 0, 'Theramore - Ratchet | Takeoff extracted from verified');
