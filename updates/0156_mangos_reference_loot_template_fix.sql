-- Removed item 2203 (Brashclaw's Chopper) and item 2204 (Brashclaw's Skewer) from reference_loot_template
-- because they can only drop from creature 506 (Sergeant Brashclaw)
-- Thanks to Neotmiren for pointing
-- Source: http://www.wowhead.com/item=2203
-- Source: http://www.wowhead.com/item=2204
DELETE FROM `reference_loot_template` WHERE `item` IN (2203, 2204);
