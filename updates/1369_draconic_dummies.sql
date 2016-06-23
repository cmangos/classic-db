-- Removed duplicate GO 180666 (Draconic for Dummies) and added missing GO 180665 (Draconic for Dummies)
-- Thanks @Vanillafanatic for pointing. This closes #833 and closes #864
DELETE FROM gameobject WHERE guid IN (500001, 120618);
INSERT INTO gameobject VALUES ( 120618, 180665, 0, -8340.24, 413.397, 124.49, 2.89435, 0, 0, 0.992368, 0.123309, 0, 100, 1);
