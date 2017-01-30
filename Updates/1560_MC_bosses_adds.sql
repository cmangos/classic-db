-- Prevented adds of bosses in Molten Core to respawn if the related boss is dead (Lucifron, Gehennas, Golemagg, Garr, Sulfuron Harbinger)
UPDATE creature_linking_template SET flag = flag + 1024 WHERE entry IN (11661, 12119, 12099, 11672, 11662);
-- Prevented Core Hounds packs to respawn if Magmadar is defeated
DELETE FROM creature_linking_template WHERE entry = 11671;
INSERT INTO creature_linking_template VALUES
(11671, 409, 11982, 1024, 0);
-- Garr's Firesworn are supposed to follow him
UPDATE creature_linking_template SET flag = flag + 512 WHERE entry = 12099;
