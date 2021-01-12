-- Drop linking for removed creatures
DELETE FROM creature_linking WHERE guid IN (88921, 88922);
