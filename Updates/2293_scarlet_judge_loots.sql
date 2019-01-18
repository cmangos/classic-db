-- Add name to reference_loot_template 34003 used by world bosses
DELETE FROM reference_loot_template_names WHERE entry=34003;
INSERT INTO reference_loot_template_names (entry, name) VALUES
(34003, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons');
-- Populate comments for related loot tables
UPDATE creature_loot_template SET comments='NPC LOOT (Green NPC Loot) - Classic World bosses and dragons' WHERE item=34003;

-- Add reference_loot_template for NPC 1837 (Scarlet Judge)
-- It is probably used by other high level NPCs
DELETE FROM reference_loot_template WHERE entry=34010;
INSERT INTO reference_loot_template (entry, item, comments) VALUES
(34010, 10136, 'High Councillor\'s Bracers'),
(34010, 10137, 'High Councillor\'s Boots'),
(34010, 10141, 'High Councillor\'s Pants'),
(34010, 10144, 'High Councillor\'s Sash'),
(34010, 10145, 'Mighty Girdle'),
(34010, 10147, 'Mighty Armsplints'),
(34010, 10154, 'Mercurial Girdle'),
(34010, 10155, 'Mercurial Greaves'),
(34010, 10156, 'Mercurial Bracers'),
(34010, 10159, 'Mercurial Cloak'),
(34010, 10161, 'Mercurial Gauntlets'),
(34010, 10163, 'Mercurial Pauldrons'),
(34010, 10222, 'Nightshade Boots'),
(34010, 10225, 'Nightshade Gloves'),
(34010, 10226, 'Nightshade Helmet'),
(34010, 10228, 'Nightshade Spaulders'),
(34010, 10230, 'Engraved Breastplate'),
(34010, 10247, 'Master\'s Boots'),
(34010, 10249, 'Master\'s Cloak'),
(34010, 10253, 'Master\'s Mantle'),
(34010, 10255, 'Master\'s Belt'),
(34010, 10256, 'Adventurer\'s Bracers'),
(34010, 10258, 'Adventurer\'s Cape'),
(34010, 10267, 'Masterwork Cape'),
(34010, 10270, 'Masterwork Boots'),
(34010, 10275, 'Emerald Breastplate'),
(34010, 10373, 'Imbued Plate Leggings'),
(34010, 10376, 'Commander\'s Boots'),
(34010, 10377, 'Commander\'s Vambraces'),
(34010, 10380, 'Commander\'s Gauntlets'),
(34010, 10381, 'Commander\'s Girdle'),
(34010, 10382, 'Commander\'s Leggings'),
(34010, 10391, 'Hyperion Vambraces');

-- https://www.wowhead.com/npc=1837/scarlet-judge#comments:id=709160 "Master's Boots 10247"
-- https://web.archive.org/web/20050208010928/http://wow.allakhazam.com:80/db/mob.html?wmob=1837 - classic
UPDATE creature_loot_template SET ChanceOrQuestChance=100, item=34010, mincountOrRef=-34010 WHERE entry=1837 AND item=60294;
