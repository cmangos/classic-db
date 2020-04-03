-- Remove Black Lotus from creature_loot_template except Mushgog 11447
DELETE FROM creature_loot_template WHERE item=13468 AND entry != 11447; -- Mushgog
DELETE FROM creature_loot_template WHERE item IN (13465,13464,13468,13463,10286) AND entry=11447;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(11447, 13465, 5, 0, 1, 1, 0, 'Mountain Silversage'),
(11447, 13464, 2, 0, 1, 1, 0, 'Golden Sansam'),
(11447, 13468, 1.2, 0, 1, 1, 0, 'Black Lotus'),
(11447, 13463, 1.2, 0, 1, 1, 0, 'Dreamfoil'),
(11447, 10286, 8, 0, 1, 1, 0, 'Heart of the Wild');
