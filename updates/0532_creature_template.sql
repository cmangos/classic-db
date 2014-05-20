-- Set rank of a few bosses to "world bosses": Ossirian the Unscarred (15339), Moam (15340), General Rajaxx (15341), Doctor Weavil (15552)
-- Thanks Tobschinski for pointing
UPDATE `creature_template` SET `Rank` = 3 WHERE `Entry` IN (15339, 15340, 15341, 15552);
