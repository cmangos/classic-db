-- https://github.com/vmangos/core/commit/7954585493fe5d9e45deeef27f10a664884bd458

-- Add missing patterns for "NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)" - 50502
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(50502, 2406, 0, 1, 1, 1, 0, 'Pattern: Fine Leather Boots'); -- https://tbc.wowhead.com/item=2406/pattern-fine-leather-boots

-- 50505 isnt really used much anywhere, so its save to do this for the time being.
DELETE FROM reference_loot_template WHERE entry = 50505 AND item = 2407; -- already in 50502 which seems good enough.
UPDATE reference_loot_template_names SET name = 'LOOT (World Drop) - (Item Levels: 16-64 (Profession Recipes)) - (NPC Levels: 10-63) (Split me up)' WHERE entry = 50505;
REPLACE INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id)
SELECT 50505, entry,  0, 1, 1, 1, 0
FROM item_template WHERE entry IN (
6344, -- Formula: Enchant Bracer - Minor Spirit 10-26
2881, -- Plans: Runed Copper Breastplate 10-28
6663, -- Recipe: Elixir of Giant Growth 10-26
4292, -- Pattern: Green Woolen Bag 10-27
4345, -- Pattern: Red Woolen Boots 10-26
6347, -- Formula: Enchant Bracer - Minor Strength 10-26
2409, -- Pattern: Dark Leather Tunic 10-26
4293, -- Pattern: Hillman's Leather Vest 10-26
4346, -- Pattern: Heavy Woolen Cloak 10-29
4409, -- Schematic: Small Seaforium Charge 10-28
6348, -- Formula: Enchant Weapon - Minor Beastslayer 11-28
6716, -- Schematic: EZ-Thro Dynamite 11-30

2601, -- Pattern: Gray Woolen Robe 15-31
5972, -- Pattern: Fine Leather Pants 15-33
3393, -- Recipe: Minor Magic Resistance Potion 15-32
11038, -- Formula: Enchant 2H Weapon - Lesser Spirit 15-32
11039, -- Formula: Enchant Cloak - Minor Agility 15-31
11081, -- Formula: Enchant Shield - Lesser Protection - 15-32
3394, -- Recipe: Potion of Curing - 15-31
4294, -- Pattern: Hillman's Belt - 15-31
4347, -- Pattern: Reinforced Woolen Shoulders 15-31
4410, -- Schematic: Shadow Goggles 15-31
6375, -- Formula: Enchant Bracer - Lesser Spirit 15-31
6390, -- Pattern: Stylish Blue Shirt 14-31
6391, -- Pattern: Stylish Green Shirt 15-31
10316, -- Pattern: Colorful Kilt 15-31
2882, -- Plans: Silvered Bronze Shoulders 15-31
2883, -- Plans: Deadly Bronze Poniard 15-31
4348, -- Pattern: Phoenix Gloves 15-31
4349, -- Pattern: Phoenix Pants 15-31
7360, -- Pattern: Dark Leather Gloves 18-37
5578, -- Plans: Silvered Bronze Breastplate 15-31

6454, -- Manual: Strong Anti-Venom 18-37
11098, -- Formula: Enchant Cloak - Lesser Shadow Resistance 18-36
3396, -- Recipe: Elixir of Lesser Agility 18-37
4296, -- Pattern: Dark Leather Shoulders 18-40
4350, -- Pattern: Spider Silk Slippers 18-36
5543, -- Plans: Iridescent Hammer 18-38
7363, -- Pattern: Pilferer's Gloves 19-38
3608, -- Plans: Mighty Iron Hammer 18-37
3611, -- Plans: Green Iron Boots 18-37
4412, -- Schematic: Moonsight Rifle 18-37
7092, -- Pattern: Hands of Darkness 18-37
7364, -- Pattern: Heavy Earthen Gloves 18-38
3612, -- Plans: Green Iron Gauntlets 18-40
4297, -- Pattern: Barbaric Gloves 18-43
6044, -- Plans: Iron Shield Spike 18-44
6211, -- Recipe: Elixir of Ogre's Strength 20-37
7091, -- Pattern: Truefaith Gloves 18-38 (57/60)
10424, -- Plans: Silvered Bronze Leggings 18-37

3870, -- Plans: Green Iron Shoulders 23-41
4414, -- Schematic: Portable Bronze Mortar 23-44
6045, -- Plans: Iron Counterweight 23-45
7090, -- Pattern: Green Silk Armor 23-44
7449, -- Pattern: Dusky Leather Leggings 23-44
3867, -- Plans: Golden Iron Destroyer 24-43
3872, -- Plans: Golden Scale Leggings 23-44
4298, -- Pattern: Guardian Belt  25-40
4351, -- Pattern: Shadow Hood 26-39
3830, -- Recipe: Elixir of Fortitude 23-44
3866, -- Plans: Jade Serpentblade 23-44
3871, -- Plans: Golden Scale Shoulders 25-40
4299, -- Pattern: Guardian Armor 23-44
4352, -- Pattern: Boots of the Enchanter 23-44
5774, -- Pattern: Green Silk Pack 24-47
7450, -- Pattern: Green Whelp Armor 23-41
10601, -- Schematic: Bright-Eye Goggles 23-45
11164, -- Formula: Enchant Weapon - Lesser Beastslayer 24-43
11165, -- Formula: Enchant Weapon - Lesser Elemental Slayer 23-45

3831, -- Recipe: Mighty Troll's Blood Potion 30-46
4353, -- Pattern: Spider Belt 26-47
3874, -- Plans: Polished Steel Boots 26-47
4354, -- Pattern: Rich Purple Silk Shirt 26-46
4415, -- Schematic: Craftsman's Monocle 28-45
5974, -- Pattern: Guardian Cloak 27-49
6046, -- Plans: Steel Weapon Chain 34-46 ???
7084, -- Pattern: Crimson Silk Shoulders 26-47
7085, -- Pattern: Azure Shoulders 26-46
11167, -- Formula: Enchant Boots - Lesser Spirit 26-47
12261, -- Plans: Searing Golden Blade 32-43 ???
3832, -- Recipe: Elixir of Detect Lesser Invisibility 27-47
3873, -- Plans: Golden Scale Cuirass 27-47
4300, -- Pattern: Guardian Leather Bracers 26-47
4416, -- Schematic: Goblin Land Mine 27-46
7086, -- Pattern: Earthen Silk Belt 27-47
11168, -- Formula: Enchant Shield - Lesser Block 30-44 ???
3868, -- Plans: Frost Tiger Blade 26-47 (60)
3869, -- Plans: Shadow Crescent Axe 26-47 (60)
3875, -- Plans: Golden Scale Boots 33-45
4301, -- Pattern: Barbaric Belt 35-46 ???
4356, -- Pattern: Star Belt 31-46 ???
4417, -- Schematic: Large Seaforium Charge 26-46
7452, -- Pattern: Dusky Boots 33-45 ???
7453, -- Pattern: Swift Boots 26-47
8384, -- Pattern: Comfortable Leather Hat 35-45 ???
8385, -- Pattern: Turtle Scale Gloves 34-52
7975, -- Plans: Heavy Mithril Pants 34-51
9293, -- Recipe: Magic Resistance Potion 34-51
11202, -- Formula: Enchant Shield - Stamina 34-52
7976, -- Plans: Mithril Shield Spike 34-???
8386, -- Pattern: Big Voodoo Robe 34-52
10300, -- Pattern: Red Mageweave Vest 35-53
10301, -- Pattern: White Bandit Mask 35-52
10302, -- Pattern: Red Mageweave Pants 34-52
7992, -- Plans: Blue Glittering Axe 34-52
8387, -- Pattern: Big Voodoo Mask 34-52
10603, -- Schematic: Catseye Ultra Goggles 34-53
10604, -- Schematic: Mithril Heavy-bore Rifle 34-52
11204, -- Formula: Enchant Bracer - Greater Spirit 34-52
8029, -- Plans: Wicked Mithril Blade 34-51
10312, -- Pattern: Red Mageweave Gloves 34-52
10605, -- Schematic: Spellpower Goggles Xtreme 34-???
10606, -- Schematic: Parachute Cloak 34-53

11208, -- Formula: Enchant Weapon - Demonslaying 38-56
7989, -- Plans: Mithril Spurs 37-56
7991, -- Plans: Mithril Scale Shoulders 43-??
9295, -- Recipe: Invisibility Potion 38-56
10315, -- Pattern: Red Mageweave Shoulders 37-57
11224, -- Formula: Enchant Shield - Frost Resistance 41-???
7993, -- Plans: Dazzling Mithril Rapier 38-56
8389, -- Pattern: Big Voodoo Pants 38-58
8390, -- Pattern: Big Voodoo Cloak 38-57
9297, -- Recipe: Elixir of Dream Vision 43-???
10320, -- Pattern: Red Mageweave Headband 38-56
10608, -- Schematic: Sniper Scope 41-???
7990, -- Plans: Heavy Mithril Helm 37-57
8028, -- Plans: Runed Mithril Hammer 44-???
9298, -- Recipe: Elixir of Giants 38-58
11225, -- Formula: Enchant Bracer - Greater Stamina 37-57
3395, -- Recipe: Limited Invulnerability Potion 37-56

11226, -- Formula: Enchant Gloves - Riding Skill 43-???
12682, -- Plans: Thorium Armor 41-???
12683, -- Plans: Thorium Belt 42-???
12684, -- Plans: Thorium Bracers 42-???
14466, -- Pattern: Frostweave Tunic 46-???
14467, -- Pattern: Frostweave Robe 44- ???
12685, -- Plans: Radiant Belt 43-???
14470, -- Pattern: Runecloth Tunic 45-???
16043, -- Schematic: Thorium Rifle 43-???
16215, -- Formula: Enchant Boots - Greater Stamina 43-???
14474, -- Pattern: Frostweave Gloves 43-???
16044, -- Schematic: Lifelike Mechanical Toad 44-???
12689, -- Plans: Radiant Breastplate 44-???
12691, -- Plans: Wildthorn Mail 43-???
14478, -- Pattern: Brightcloth Robe 41-???
14479, -- Pattern: Brightcloth Gloves 42-???
15731, -- Pattern: Runic Leather Gauntlets 42-???
16218, -- Formula: Enchant Bracer - Superior Spirit 45-???
12692, -- Plans: Thorium Shield Spike 44-???
13486, -- Recipe: Transmute Undeath to Water 43-???
13487, -- Recipe: Transmute Water to Undeath 44-???
13488, -- Recipe: Transmute Life to Earth 44-???
13489, -- Recipe: Transmute Earth to Life 47-???
14484, -- Pattern: Brightcloth Cloak 42-???
15737, -- Pattern: Chimeric Boots 41-???
15742, -- Pattern: Warbear Harness 45-??? & highlevelchest
16220, -- Formula: Enchant Boots - Spirit 43-???

12693, -- Plans: Thorium Boots 49-???
12694, -- Plans: Thorium Helm 49-???
13490, -- Recipe: Greater Stoneshield Potion 48-???
14489, -- Pattern: Frostweave Pants 49-???
15743, -- Pattern: Heavy Scorpid Belt 48-???
15745, -- Pattern: Runic Leather Belt 49-???
15746, -- Pattern: Chimeric Leggings 49-???
12695, -- Plans: Radiant Gloves 48-???
13492, -- Recipe: Purification Potion 49-???
13493, -- Recipe: Greater Arcane Elixir 50-???
14491, -- Pattern: Runecloth Pants 49-???
14492, -- Pattern: Felcloth Boots 48-???
16051, -- Schematic: Thorium Shells 49-???
12697, -- Plans: Radiant Boots 49-???
14494, -- Pattern: Brightcloth Pants 50-???
14496, -- Pattern: Felcloth Hood 51-???
14497, -- Pattern: Mooncloth Leggings 50-???
15755, -- Pattern: Chimeric Vest 48-???
15757, -- Pattern: Wicked Leather Pants 48-???
12702, -- Plans: Radiant Circlet 49-???
12703, -- Plans: Storm Gauntlets 53-???
14498, -- Pattern: Runecloth Headband 48-???
16245, -- Formula: Enchant Boots - Greater Agility 49-???
12704, -- Plans: Thorium Leggings 51-???
12711, -- Plans: Whitesoul Helm 50-???
13518, -- Recipe: Flask of Petrification 50-???
14499, -- Pattern: Mooncloth Bag 48-???
14501, -- Pattern: Mooncloth Vest 50-???
15765, -- Pattern: Runic Leather Pants 51-???
16055, -- Schematic: Arcane Bomb 52-???
16251, -- Formula: Enchant Bracer - Superior Stamina 52-???
12713, -- Plans: Radiant Leggings 51-???
12716, -- Plans: Helm of the Great Chief 60-???
12717, -- Plans: Lionheart Helm 56-???
14504, -- Pattern: Runecloth Shoulders 51-???
14506, -- Pattern: Felcloth Robe 51-???
14507, -- Pattern: Mooncloth Shoulders 50-???
22388, -- Plans: Titanic Leggings 56-???
12720, -- Plans: Stronghold Gauntlets 58-???
14508, -- Pattern: Felcloth Shoulders 51-???
14509, -- Pattern: Mooncloth Circlet 58-???
14510, -- Pattern: Bottomless Bag 58-???
14511, -- Pattern: Gloves of Spell Mastery 56-???
16253, -- Formula: Enchant Chest - Greater Stats 56-???
12728, -- Plans: Invulnerable Mail 58-???
22390, -- Plans: Persuader 60-???
22389, -- Plans: Sageblade 60-???
12698 -- Plans: Dawnbringer Shoulders 53-??? added in tbc seemingly
);

UPDATE creature_loot_template SET ChanceOrQuestChance = 40 WHERE entry = 9024 AND item = 11207; -- https://tbc.wowhead.com/item=11207/formula-enchant-weapon-fiery-weapon#dropped-by;0+2-10-9+1
UPDATE creature_loot_template SET ChanceOrQuestChance = 25 WHERE entry = 9026 AND item = 14486; -- https://tbc.wowhead.com/item=14486/pattern-cloak-of-fire#comments

UPDATE creature_loot_template SET ChanceOrQuestChance = 0.5 WHERE groupid = 2 AND entry = 7800; -- Mekgineer Thermaplugg - Schematics ~8%
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(7800, 4409, 0.5, 2, 1, 1, 0, 'Schematic: Small Seaforium Charge'),
(7800, 4417, 0.5, 2, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(7800, 4412, 0.5, 2, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(7800, 4416, 0.5, 2, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(7800, 4408, 0.5, 2, 1, 1, 0, 'Schematic: Mechanical Squirrel'),
(7800, 4414, 0.5, 2, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(7800, 4410, 0.5, 2, 1, 1, 0, 'Schematic: Shadow Goggles'),
(7800, 6716, 0.5, 2, 1, 1, 0, 'Schematic: EZ-Thro Dynamite'),
(7800, 6672, 0.5, 2, 1, 1, 0, 'Schematic: Flash Bomb'),
(7800, 7560, 0.5, 2, 1, 1, 0, 'Schematic: Gnomish Universal Remote'),
(7800, 7192, 0.5, 2, 1, 1, 0, 'Schematic: Goblin Rocket Boots'),
(7800, 7561, 0.5, 2, 1, 1, 0, 'Schematic: Goblin Jumper Cables'),
(10760, 5773, 0.3, 9, 1, 1, 0, 'Pattern: Robes of Arcana'), -- https://tbc.wowhead.com/npc=10760/grimtotem-geomancer#drops
(1160, 5788, 1, 9, 1, 1, 0, 'Pattern: Thick Murloc Armor'), -- https://tbc.wowhead.com/npc=1160/captain-halyndor#drops
(2605, 11166, 2, 9, 1, 1, 0, 'Formula: Enchant Gloves - Skinning'), -- https://tbc.wowhead.com/item=11166/formula-enchant-gloves-skinning#dropped-by;0-2-10-9+1
(2605, 9294, 2, 9, 1, 1, 0, 'Recipe: Wildvine Potion'), -- https://tbc.wowhead.com/item=11166/formula-enchant-gloves-skinning#dropped-by;0-2-10-9+1
(6005, 15727, 1, 9, 1, 1, 0, 'Pattern: Heavy Scorpid Vest'), -- https://tbc.wowhead.com/npc=6005/shadowsworn-thug#drops
(1885, 12719, 100, 9, 1, 1, 0, 'Plans: Runic Plate Leggings'); -- https://tbc.wowhead.com/item=12719/plans-runic-plate-leggings#comments

-- Convert Creature Loot i.2406,2407,2408,2553,2555,2598,3609,3610,4408,6271,6342,7288 to RefLoot 50502
DELETE FROM creature_loot_template WHERE item IN (2406,2407,2408,2553,2555,2598,3609,3610,4408,6271,6342,7288);
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments)
SELECT entry, 50502,  0.3, 0, -50502, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes) - (NPC Levels: 6-20)'
FROM creature_template WHERE entry IN (
-- npcs that had 2406,2407,2408,2553,2555,2598,3609,3610,4408,6271,6342,7288 separate, but not 50502
30, -- https://classic.wowhead.com/npc=30/forest-spider
94, -- https://tbc.wowhead.com/npc=94/defias-cutpurse
113, -- https://tbc.wowhead.com/npc=113/stonetusk-boar
118, -- https://tbc.wowhead.com/npc=118/prowler
119, -- https://tbc.wowhead.com/npc=119/longsnout
330, -- https://classic.wowhead.com/npc=330/princess
441, -- https://tbc.wowhead.com/npc=441/black-dragon-whelp
454, -- https://tbc.wowhead.com/npc=454/young-goretusk
475, -- https://tbc.wowhead.com/npc=475/kobold-tunneler
485, -- https://tbc.wowhead.com/npc=485/blackrock-outrunner
525, -- https://tbc.wowhead.com/npc=525/mangy-wolf
565, -- https://tbc.wowhead.com/npc=565/rabid-dire-wolf
580, -- https://tbc.wowhead.com/npc=580/redridge-drudger
830, -- https://tbc.wowhead.com/npc=830/sand-crawler
831, -- https://classic.wowhead.com/npc=831/sea-crawler
832, -- https://tbc.wowhead.com/npc=832/dust-devil
1007, -- https://tbc.wowhead.com/npc=1007/mosshide-gnoll
1024, -- https://tbc.wowhead.com/npc=1024/bluegill-murloc
1125, -- https://tbc.wowhead.com/npc=1125/crag-boar
1126, -- https://tbc.wowhead.com/npc=1126/large-crag-boar
1127, -- https://tbc.wowhead.com/npc=1127/elder-crag-boar
1128, -- https://tbc.wowhead.com/npc=1128/young-black-bear
1131, -- https://tbc.wowhead.com/npc=1131/winter-wolf
1133, -- https://classic.wowhead.com/npc=1133/starving-winter-wolf - prolly oke
1134, -- https://tbc.wowhead.com/npc=1134/young-wendigo
1138, -- https://tbc.wowhead.com/npc=1138/snow-tracker-wolf
1184, -- https://tbc.wowhead.com/npc=1184/cliff-lurker
1185, -- https://tbc.wowhead.com/npc=1185/wood-lurker
1186, -- https://tbc.wowhead.com/npc=1186/elder-black-bear
1188, -- https://tbc.wowhead.com/npc=1188/grizzled-black-bear
1189, -- https://tbc.wowhead.com/npc=1189/black-bear-patriarch
1190, -- https://tbc.wowhead.com/npc=1190/mountain-boar
1191, -- https://tbc.wowhead.com/npc=1191/mangy-mountain-boar
1192, -- https://tbc.wowhead.com/npc=1192/elder-mountain-boar
1193, -- https://tbc.wowhead.com/npc=1193/loch-frenzy
1194, -- https://tbc.wowhead.com/npc=1194/mountain-buzzard
1195, -- https://tbc.wowhead.com/npc=1195/forest-lurker
1199, -- https://tbc.wowhead.com/npc=1199/juvenile-snow-leopard
1201, -- https://tbc.wowhead.com/npc=1201/snow-leopard
1211, -- https://tbc.wowhead.com/npc=1211/leper-gnome
1216, -- https://tbc.wowhead.com/npc=1216/shore-crawler
1225, -- https://classic.wowhead.com/npc=1225/ol-sooty
1525, -- https://tbc.wowhead.com/npc=1525/rotting-dead
1547, -- https://tbc.wowhead.com/npc=1547/decrepit-darkhound
1548, -- https://tbc.wowhead.com/npc=1548/cursed-darkhound
1549, -- https://tbc.wowhead.com/npc=1549/ravenous-darkhound
1553, -- https://tbc.wowhead.com/npc=1553/greater-duskbat
1554, -- https://tbc.wowhead.com/npc=1554/vampiric-duskbat
1555, -- https://tbc.wowhead.com/npc=1555/vicious-night-web-spider
1693, -- https://tbc.wowhead.com/npc=1693/loch-crocolisk
1765, -- https://tbc.wowhead.com/npc=1765/worg
1766, -- https://tbc.wowhead.com/npc=1766/mottled-worg
1780, -- https://tbc.wowhead.com/npc=1780/moss-stalker
1781, -- https://tbc.wowhead.com/npc=1781/mist-creeper
1797, -- https://tbc.wowhead.com/npc=1797/giant-grizzled-bear
1922, -- https://tbc.wowhead.com/npc=1922/gray-forest-wolf
1923, -- https://tbc.wowhead.com/npc=1923/bloodsnout-worg
1935, -- https://tbc.wowhead.com/npc=1935/tirisfal-farmhand
1961, -- https://tbc.wowhead.com/npc=1961/mangeclaw
1973, -- https://tbc.wowhead.com/npc=1973/ravenclaw-guardian
1995, -- https://tbc.wowhead.com/npc=1995/strigid-owl
1996, -- https://tbc.wowhead.com/npc=1996/strigid-screecher
1997, -- https://tbc.wowhead.com/npc=1997/strigid-hunter
1998, -- https://tbc.wowhead.com/npc=1998/webwood-lurker
1999, -- https://tbc.wowhead.com/npc=1999/webwood-venomfang
2000, -- https://tbc.wowhead.com/npc=2000/webwood-silkspinner
2001, -- https://tbc.wowhead.com/npc=2001/giant-webwood-spider
2002, -- https://classic.wowhead.com/npc=2002/rascal-sprite
2003, -- https://classic.wowhead.com/npc=2003/shadow-sprite
2006, -- https://classic.wowhead.com/npc=2006/gnarlpine-ursa
2007, -- https://classic.wowhead.com/npc=2007/gnarlpine-gardener
2022, -- https://classic.wowhead.com/npc=2022/timberling
2033, -- https://classic.wowhead.com/npc=2033/elder-nightsaber
2034, -- https://classic.wowhead.com/npc=2034/feral-nightsaber
2042, -- https://classic.wowhead.com/npc=2042/nightsaber-stalker
2043, -- https://classic.wowhead.com/npc=2043/nightsaber-stalker
2070, -- https://classic.wowhead.com/npc=2070/moonstalker-runt
2071, -- https://classic.wowhead.com/npc=2071/moonstalker-matriarch
2102, -- https://classic.wowhead.com/npc=2102/dragonmaw-grunt
2163, -- https://classic.wowhead.com/npc=2163/thistle-bear
2165, -- https://classic.wowhead.com/npc=2165/grizzled-thistle-bear
2173, -- https://classic.wowhead.com/npc=2173/reef-frenzy - prolly oke
2174, -- https://classic.wowhead.com/npc=2174/coastal-frenzy - prolly oke
2183, -- https://classic.wowhead.com/npc=2183/stormscale-warrior
2185, -- https://classic.wowhead.com/npc=2185/darkshore-thresher
2186, -- https://classic.wowhead.com/npc=2186/carnivous-the-breaker - prolly oke
2187, -- https://classic.wowhead.com/npc=2187/elder-darkshore-thresher
2231, -- https://classic.wowhead.com/npc=2231/pygmy-tide-crawler
2232, -- https://classic.wowhead.com/npc=2232/tide-crawler
2233, -- https://classic.wowhead.com/npc=2233/encrusted-tide-crawler
2234, -- https://classic.wowhead.com/npc=2234/young-reef-crawler
2235, -- https://classic.wowhead.com/npc=2235/reef-crawler
2236, -- https://classic.wowhead.com/npc=2236/raging-reef-crawler
2237, -- https://classic.wowhead.com/npc=2237/moonstalker-sire
2261, -- https://classic.wowhead.com/npc=2261/syndicate-watchman
2321, -- https://classic.wowhead.com/npc=2321/foreststrider-fledgling
2322, -- https://classic.wowhead.com/npc=2322/foreststrider
2323, -- https://classic.wowhead.com/npc=2323/giant-foreststrider
2350, -- https://classic.wowhead.com/npc=2350/forest-moss-creeper
2476, -- https://classic.wowhead.com/npc=2476/large-loch-crocolisk
2477, -- https://classic.wowhead.com/npc=2477/gradok
2478, -- https://classic.wowhead.com/npc=2478/haren-swifthoof
2949, -- https://classic.wowhead.com/npc=2949/palemane-tanner
2956, -- https://classic.wowhead.com/npc=2956/adult-plainstrider
2957, -- https://classic.wowhead.com/npc=2957/elder-plainstrider
2958, -- https://classic.wowhead.com/npc=2958/prairie-wolf
2969, -- https://classic.wowhead.com/npc=2969/wiry-swoop
2970, -- https://classic.wowhead.com/npc=2970/swoop
2971, -- https://classic.wowhead.com/npc=2971/taloned-swoop
2972, -- https://classic.wowhead.com/npc=2972/kodo-calf - prolly oke
2973, -- https://classic.wowhead.com/npc=2973/kodo-bull - prolly oke
2974, -- https://classic.wowhead.com/npc=2974/kodo-matriarch
2975, -- https://classic.wowhead.com/npc=2975/venture-co-hireling
3035, -- https://classic.wowhead.com/npc=3035/flatland-cougar
3056, -- https://classic.wowhead.com/npc=3056/ghost-howl
3058, -- https://classic.wowhead.com/npc=3058/arrachea
3068, -- https://classic.wowhead.com/npc=3068/mazzranache
3099, -- https://classic.wowhead.com/npc=3099/dire-mottled-boar
3100, -- https://classic.wowhead.com/npc=3100/elder-mottled-boar
3106, -- https://classic.wowhead.com/npc=3106/pygmy-surf-crawler
3107, -- https://classic.wowhead.com/npc=3107/surf-crawler
3108, -- https://classic.wowhead.com/npc=3108/encrusted-surf-crawler - prolly oke
3110, -- https://classic.wowhead.com/npc=3110/dreadmaw-crocolisk
3122, -- https://classic.wowhead.com/npc=3122/bloodtalon-taillasher
3123, -- https://classic.wowhead.com/npc=3123/bloodtalon-scythemaw
3125, -- https://classic.wowhead.com/npc=3125/clattering-scorpid
3126, -- https://classic.wowhead.com/npc=3126/armored-scorpid
3127, -- https://classic.wowhead.com/npc=3127/venomtail-scorpid
3225, -- https://classic.wowhead.com/npc=3225/corrupted-mottled-boar
3226, -- https://classic.wowhead.com/npc=3226/corrupted-scorpid
3227, -- https://classic.wowhead.com/npc=3227/corrupted-bloodtalon-scythemaw
3228, -- https://classic.wowhead.com/npc=3228/corrupted-surf-crawler - prolly oke
3231, -- https://classic.wowhead.com/npc=3231/corrupted-dreadmaw-crocolisk
3234, -- https://classic.wowhead.com/npc=3234/lost-barrens-kodo
3236, -- https://classic.wowhead.com/npc=3236/barrens-kodo
3239, -- https://classic.wowhead.com/npc=3239/thunderhead
3240, -- https://classic.wowhead.com/npc=3240/stormsnout
3241, -- https://classic.wowhead.com/npc=3241/savannah-patriarch
3242, -- https://classic.wowhead.com/npc=3242/zhevra-runner
3243, -- https://classic.wowhead.com/npc=3243/savannah-highmane
3244, -- https://classic.wowhead.com/npc=3244/greater-plainstrider
3245, -- https://classic.wowhead.com/npc=3245/ornery-plainstrider
3246, -- https://classic.wowhead.com/npc=3246/fleeting-plainstrider
3247, -- https://classic.wowhead.com/npc=3247/thunderhawk-hatchling
3248, -- https://classic.wowhead.com/npc=3248/barrens-giraffe
3250, -- https://classic.wowhead.com/npc=3250/silithid-creeper
3251, -- https://classic.wowhead.com/npc=3251/silithid-grub
3254, -- https://classic.wowhead.com/npc=3254/sunscale-lashtail
3255, -- https://classic.wowhead.com/npc=3255/sunscale-screecher
3256, -- https://classic.wowhead.com/npc=3256/sunscale-scytheclaw
3257, -- https://classic.wowhead.com/npc=3257/ishamuhale
3398, -- https://classic.wowhead.com/npc=3398/gesharahan - prolly oke
3415, -- https://classic.wowhead.com/npc=3415/savannah-huntress
3416, -- https://classic.wowhead.com/npc=3416/savannah-matriarch
3424, -- https://classic.wowhead.com/npc=3424/thunderhawk-cloudscraper - prolly oke
3425, -- https://classic.wowhead.com/npc=3425/savannah-prowler
3426, -- https://classic.wowhead.com/npc=3426/zhevra-charger
3456, -- https://classic.wowhead.com/npc=3456/razormane-pathfinder
3463, -- https://classic.wowhead.com/npc=3463/wandering-barrens-giraffe
3466, -- https://classic.wowhead.com/npc=3466/zhevra-courser
3475, -- https://classic.wowhead.com/npc=3475/echeyakee
3503, -- https://classic.wowhead.com/npc=3503/silithid-protector
3630, -- https://classic.wowhead.com/npc=3630/deviate-coiler
3631, -- https://classic.wowhead.com/npc=3631/deviate-stinglash
3632, -- https://classic.wowhead.com/npc=3632/deviate-creeper
3633, -- https://classic.wowhead.com/npc=3633/deviate-slayer
3634, -- https://classic.wowhead.com/npc=3634/deviate-stalker
3636, -- https://classic.wowhead.com/npc=3636/deviate-ravager
3637, -- https://classic.wowhead.com/npc=3637/deviate-guardian
3652, -- https://classic.wowhead.com/npc=3652/trigore-the-lasher - prolly oke
3711, -- https://classic.wowhead.com/npc=3711/wrathtail-myrmidon
3727, -- https://classic.wowhead.com/npc=3727/dark-strand-enforcer
3742, -- https://classic.wowhead.com/npc=3742/saltspittle-oracle
3812, -- https://classic.wowhead.com/npc=3812/clattering-crawler
3814, -- https://classic.wowhead.com/npc=3814/spined-crawler
3816, -- https://classic.wowhead.com/npc=3816/wild-buck
3819, -- https://classic.wowhead.com/npc=3819/wildthorn-stalker
3861, -- https://classic.wowhead.com/npc=3861/bleak-worg
3864, -- https://classic.wowhead.com/npc=3864/fel-steed
3865, -- https://classic.wowhead.com/npc=3865/shadow-charger
3928, -- https://classic.wowhead.com/npc=3928/rotting-slime
3944, -- https://classic.wowhead.com/npc=3944/wrathtail-priestess
3992, -- https://classic.wowhead.com/npc=3992/venture-co-engineer
4003, -- https://classic.wowhead.com/npc=4003/windshear-geomancer
4005, -- https://classic.wowhead.com/npc=4005/deepmoss-creeper
4006, -- https://classic.wowhead.com/npc=4006/deepmoss-webspinner
4007, -- https://classic.wowhead.com/npc=4007/deepmoss-venomspitter
4008, -- https://classic.wowhead.com/npc=4008/cliff-stormer
4009, -- https://classic.wowhead.com/npc=4009/raging-cliff-stormer
4011, -- https://classic.wowhead.com/npc=4011/young-pridewing
4064, -- https://classic.wowhead.com/npc=4064/blackrock-scout
4070, -- https://classic.wowhead.com/npc=4070/venture-co-builder
4096, -- https://classic.wowhead.com/npc=4096/galak-windchaser
4127, -- https://classic.wowhead.com/npc=4127/hecklefang-hyena
4263, -- https://classic.wowhead.com/npc=4263/deepmoss-hatchling
4788, -- https://classic.wowhead.com/npc=4788/fallenroot-satyr
4802, -- https://tbc.wowhead.com/npc=4802/blackfathom-tide-priestess
5053, -- https://tbc.wowhead.com/npc=5053/deviate-crocolisk
5426, -- https://classic.wowhead.com/npc=5426/blisterpaw-hyena - should use other "level" of patterns but oke for start to get rid of them, convert to own level patterns npc level 44-45 later when the group is found
5429, -- https://classic.wowhead.com/npc=5429/fire-roc - wotlk-db - should use other "level" of patterns but oke for start to get rid of them, convert to own level patterns npc level 44-45 later when the group is found
5762, -- https://tbc.wowhead.com/npc=5762/deviate-moccasin
5807, -- https://classic.wowhead.com/npc=5807/the-rake
5823, -- https://classic.wowhead.com/npc=5823/death-flayer - prolly oke
6033, -- https://tbc.wowhead.com/npc=6033/lake-frenzy - prolly oke
6789, -- https://tbc.wowhead.com/npc=6789/thistle-cub
6911, -- https://classic.wowhead.com/npc=6911/minion-of-sethir - prolly oke
7170, -- https://classic.wowhead.com/npc=7170/thragomm - prolly oke
7319, -- https://classic.wowhead.com/npc=7319/lady-sathrah
-- 7800 nope only Engineering which already got added here
8236, -- https://tbc.wowhead.com/npc=8236/muck-frenzy - prolly oke
8886, -- https://tbc.wowhead.com/npc=8886/deviate-python
10160, -- https://tbc.wowhead.com/npc=10160/raging-moonkin
11318, -- https://tbc.wowhead.com/npc=11318/ragefire-trogg
11319, -- https://tbc.wowhead.com/npc=11319/ragefire-shaman
11320, -- https://tbc.wowhead.com/npc=11320/earthborer
11321, -- https://tbc.wowhead.com/npc=11321/molten-elemental
11322, -- https://tbc.wowhead.com/npc=11322/searing-blade-cultist
11323, -- https://tbc.wowhead.com/npc=11323/searing-blade-enforcer
11324, -- https://tbc.wowhead.com/npc=11324/searing-blade-warlock
14272, -- https://classic.wowhead.com/npc=14272/snarlflare - prolly oke
14430 -- https://tbc.wowhead.com/npc=14430/duskstalker - prolly oke
);

-- Remove wrong Sungrass Dropchance (npc levels far too low)
DELETE FROM creature_loot_template WHERE entry IN (1135,6466,2235,1909,6232,4844) AND item = 8838;

-- Remove wrong loot from Wendigo 1135
-- https://tbc.wowhead.com/npc=1135/wendigo
DELETE FROM creature_loot_template WHERE entry = 1135 AND item IN (
2770, -- Copper Ore
2835, -- Rough Stone
765, -- Silverleaf
2449, -- Earthroot
2447 -- Peacebloom
);

-- deviate lurkers shouldn't drop crisp spider meat
DELETE FROM creature_loot_template WHERE  entry=3641 && item=1081 && groupid=0;

-- deviate lurkers should drop Threshadon Fang
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(3641, 5516, 19, 0, 1, 1, 0, 'Threshadon Fang');

-- defias cutpurse drop stacks of 3 inen instead of 2
UPDATE creature_loot_template SET maxcount=2 WHERE entry=94 && item=2589;

-- defias bandit drops 4 linen instead of 2
UPDATE creature_loot_template SET maxcount=2 WHERE entry=116 && item=2589;

-- riverpaw gnoll shouldn't drop wool
DELETE FROM creature_loot_template WHERE entry=117 && item=2592 && groupid=0;

-- slightly increased drop rate of linen for riverpaw gnoll
UPDATE creature_loot_template SET ChanceOrQuestChance=55 WHERE entry=117 && item=2589;