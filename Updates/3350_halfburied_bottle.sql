-- Half-Buried Bottle 2560
-- loot redone
DELETE FROM gameobject_loot_template WHERE entry=2032;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(2032, 4098, 31, 0, 1, 1, 0, 'Carefully Folded Note'),
(2032, 4100, 18, 0, 1, 1, 0, 'Crumpled Note'),
(2032, 4101, 18, 0, 1, 1, 0, 'Ripped Note'),
(2032, 4102, 18, 0, 1, 1, 0, 'Torn Note'),
(2032, 50601, 5, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (Scrolls II)) - (NPC Levels ?-?)'),
(2032, 10312, 2, 0, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(2032, 8029, 2, 0, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(2032, 7992, 2, 0, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(2032, 10604, 2, 0, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(2032, 21944, 2, 0, 1, 1, 0, 'Design: Truesilver Boar');
