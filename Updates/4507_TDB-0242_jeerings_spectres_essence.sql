DELETE FROM creature_loot_template WHERE item IN(22224);
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('14690', '22224', '-10', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11474', '22224', '-10', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11473', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11472', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11475', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11471', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11470', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence'),
('11469', '22224', '-1', '0', '1', '1', '0', 'Jeering Spectre''s Essence');

-- Table 'creature_loot_template' entry 11474 isn't creature entry and not referenced from loot, and then useless.
UPDATE `creature_template` SET `LootId` = 11474 WHERE `entry` = 11474;

