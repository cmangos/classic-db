--
--  EASTERN KINGDOMS
--

-- Alliance:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (425, 427, 438);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(425, 0, 2, 'Morgan\'s Vigil - Stormwind | Landing extracted from verified'),
(427, 4, 0, 'Stormwind - Morgan\'s Vigil | Takeoff extracted and fixed from verified'),
(438, 11, 0, 'Ironforge - Light\'s Hope Chapel | Takeoff is approximate'); -- Update takeoff length

-- Horde:
DELETE FROM `taxi_shortcuts` WHERE `pathid` IN (36, 37, 319, 320, 473, 474, 484, 485);
INSERT INTO `taxi_shortcuts` (`pathid`, `takeoff`, `landing`, `comments`) VALUES
(36, 0, 1, 'Booty Bay - Kargath | Landing extracted from verified'),
(37, 1, 0, 'Kargath - Booty Bay | Takeoff verified: videos'),
(319, 1, 1, 'Kargath - Hammerfall | Takeoff and landing extracted from verified'),
(320, 2, 1, 'Hammerfall - Kargath | Takeoff and landing verified: videos'),
(473, 1, 1, 'Revantusk Village - Light\'s Hope Chapel | Takeoff and landing vextracted from verified'),
(474, 3, 1, 'Light\'s Hope Chapel - Revantusk Village | Takeoff and landing verified: videos'),
(484, 1, 1, 'Hammerfall - Revantusk Village | Takeoff and landing vextracted from verified'),
(485, 1, 1, 'Revantusk Village - Hammerfall | Takeoff and landing verified: videos');
