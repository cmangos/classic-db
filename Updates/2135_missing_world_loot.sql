-- Add missing world loot to NPCs 7432 (Frostsaber Stalker) & 7434 (Frostsaber Pride Watcher) in Winterspring 
DELETE FROM creature_loot_template WHERE entry IN (7432, 7434) AND mincountOrRef<0;
INSERT INTO creature_loot_template VALUES
(7432, 50603, 0.75, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(7432, 60008, 9, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(7432, 60279, 0.05, 0, -60279, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59-60)'),
(7432, 60293, 2, 0, -60293, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60)'),
(7432, 60339, 0.004, 0, -60339, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 58-61) - (NPC Levels: 59-60)'),
(7432, 60445, 1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(7434, 50603, 0.75, 0, -50603, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 65 (Scrolls IV)) - (NPC Levels 55-62)'),
(7434, 60008, 9, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)'),
(7434, 60279, 0.05, 0, -60279, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 56-60) - (NPC Levels: 59-60)'),
(7434, 60293, 2, 0, -60293, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 58-63) - (NPC Levels: 59-60)'),
(7434, 60339, 0.004, 0, -60339, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 58-61) - (NPC Levels: 59-60)'),
(7434, 60445, 1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');
