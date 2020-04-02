-- Correct Righteous Orb 12811 Dropchance
-- https://classic.wowhead.com/item=12811/righteous-orb
UPDATE creature_loot_template SET ChanceOrQuestChance=9 WHERE item=12811 AND entry=10418; -- Crimson Guardsman (2.9374)
UPDATE creature_loot_template SET ChanceOrQuestChance=7 WHERE item=12811 AND entry=10419; -- Crimson Conjuror (2.6816)
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=12811 AND entry=10420; -- Crimson Initiate (2.8483)
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=12811 AND entry=10421; -- Crimson Defender (3.1037)
UPDATE creature_loot_template SET ChanceOrQuestChance=7 WHERE item=12811 AND entry=10422; -- Crimson Sorcerer (2.6912)
UPDATE creature_loot_template SET ChanceOrQuestChance=7 WHERE item=12811 AND entry=10423; -- Crimson Priest (3.3865)
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=12811 AND entry=10424; -- Crimson Gallant (3.1418)
UPDATE creature_loot_template SET ChanceOrQuestChance=7 WHERE item=12811 AND entry=10425; -- Crimson Battle Mage (2.9855)
UPDATE creature_loot_template SET ChanceOrQuestChance=7 WHERE item=12811 AND entry=10426; -- Crimson Inquisitor (3.0426)
UPDATE creature_loot_template SET ChanceOrQuestChance=18 WHERE item=12811 AND entry=10811; -- Archivist Galford (66)
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=12811 AND entry=11043; -- Crimson Monk (3.1293)
UPDATE creature_loot_template SET ChanceOrQuestChance=1.6 WHERE item=12811 AND entry=12128; -- Crimson Elite (4.18)
-- UPDATE creature_loot_template SET ChanceOrQuestChance= WHERE item=12811 AND entry=12337; -- Crimson Courier (1.3333)
UPDATE creature_loot_template SET ChanceOrQuestChance=1.8 WHERE item=12811 AND entry=12339; -- Demetria (4.3478)
DELETE FROM creature_loot_template WHERE item=12811 AND entry=11120; -- Crimson Hammersmith
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(11120, 12811, 4, 0, 1, 1, 0, 'Righteous Orb');
