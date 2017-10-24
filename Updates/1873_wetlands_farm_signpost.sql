-- Added missing signposts in Wetlands Farm. Thanks @Phatcat for pointing.
-- Data from WotLK DB. This closes #132

DELETE FROM gameobject WHERE guid IN (81802, 81803, 81804);
INSERT INTO gameobject VALUES
(81802, 123215, 0, -4020.33, -1407.01, 155.454, 1.57952, 0, 0, 0.710184, 0.704016, 180, 180, 255, 1),
(81803, 123216, 0, -4020.05, -1407.16, 155.463, 3.14159, 0, 0, 1, 0.00000126759, 180, 180, 255, 1),
(81804, 123217, 0, -4020.05, -1407.01, 155.437, 0.008724, 0, 0, 0.00436199, 0.99999, 180, 180, 255, 1);
