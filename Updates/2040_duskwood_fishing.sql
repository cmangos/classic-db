-- Added missing fishing template for Duskwood
-- Source: WotLK DB
DELETE FROM fishing_loot_template WHERE entry=10;
INSERT INTO fishing_loot_template VALUES
(10, 11004, 100, 1, -11004, 1, 0, '');
