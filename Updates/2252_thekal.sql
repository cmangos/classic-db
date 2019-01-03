-- Link NPC 14509 (Hight Priest Thekal) with his adds in Zul'Gurub
DELETE FROM creature_linking WHERE guid IN (49313, 49314, 49311, 49312);
INSERT INTO creature_linking VALUES
(49311, 49310, 7),
(49312, 49310, 7),
(49313, 49310, 7),
(49314, 49310, 7);
