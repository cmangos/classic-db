-- Linked together wolves and worgs from Wolf Master Nandos' pack
DELETE FROM creature_linking WHERE master_guid=16239;
INSERT INTO creature_linking VALUES
(16240, 16239, 3),
(16238, 16239, 3),
(16241, 16239, 3);
