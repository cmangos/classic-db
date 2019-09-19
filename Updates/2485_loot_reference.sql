-- Remove reference loot template table 24024 as it is a duplicate of table 60008
-- Based on https://github.com/cmangos/tbc-db/commit/ff089687267eb76e261883fdf535b3bedd7236ec

-- Remove deprecated table
DELETE FROM reference_loot_template WHERE entry=24024; -- Substituted by 60008
DELETE FROM reference_loot_template_names WHERE entry=24024;

-- Clean-up
-- Local fixes
-- Remove duplicate reference table in creature loot
DELETE FROM creature_loot_template WHERE mincountorref=-24024 AND entry IN (1756, 2852);

UPDATE creature_loot_template SET item=60007, mincountorref=-60007, comments='NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)' WHERE mincountorref=-24024 AND entry IN (6000, 6001, 6002); -- Nethergarde Cleric, Riftwatcher, Analyst

-- Update current creature template tables
-- Global fix
UPDATE creature_loot_template SET item=60008, mincountorref=-60008, comments='NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-60)' WHERE mincountorref=-24024;
