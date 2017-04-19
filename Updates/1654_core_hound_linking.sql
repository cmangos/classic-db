-- Added missing linking from one of the packs of Core Hound in Molten Core
DELETE FROM creature_linking WHERE guid IN (56644, 56646, 56647, 56649);
INSERT INTO creature_linking VALUES
(56644, 56648, 1027),
(56646, 56648, 1027),
(56647, 56648, 1027),
(56649, 56648, 1027);
