-- Delete any linked gameobject trap. They are now properly spawned by their master gameobjects so no DB spawns are needed

DELETE FROM game_event_gameobject WHERE guid IN(SELECT guid FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
19543, -- Deepmoss Eggs trap
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181913 -- Chalice of Elune
));

DELETE FROM gameobject_battleground WHERE guid IN(SELECT guid FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181913 -- Chalice of Elune
));

DELETE FROM gameobject WHERE id IN(
2061, -- Campfire
2066, -- Bonfire Damage
12653, -- Cat Figurine Trap
19535, -- Serpentbloom
31442, -- Basic Campfire
31510, -- Bright Campfire
94039, -- Shrine of Gelihast
94040, -- Altar of the Deeps
123334, -- The Punisher (DND)
123355, -- Rat Bomb Trap
124072, -- Duskwood Chest
128196, -- Magenta Cap Clusters Trap
130126, -- Gallywix\'s Lockbox
142172, -- Transpolyporter BB
142176, -- Transpolyporter
148976, -- Fire
153204, -- Rune of the Defiler
153360, -- Rune of Return
175534, -- Supply Crate
175535, -- Supply Crate
175536, -- Supply Crate
175537, -- Supply Crate
175589, -- Challenge to Urok Trap
176117, -- Pamela\'s Doll\'s Trap
176152, -- Musty Tome Trap
176214, -- Blood of Heroes
176591, -- Horgus\' Skull Trap
176865, -- Sword of Marduk Trap
177045, -- Haunted Trap
177606, -- Father Flame Aura
177793, -- Strange Lockbox Agility Trap
178187, -- Molten Core Circle SULFURON
178188, -- Molten Core Circle BARON
178189, -- Molten Core Circle SHAZZRAH
178190, -- Molten Core Circle GOLEMAGG
178191, -- Molten Core Circle GARR
178192, -- Molten Core Circle MAGMADAR
178193, -- Molten Core Circle GEHENNAS
178324, -- DANGER! Do Not Open! Move Along!
178984, -- Bauble Aura
179900, -- Big Bonfire Damage
180100, -- Alliance Banner Aura
180101, -- Horde Banner Aura
180102, -- Neutral Banner Aura
180217, -- Whipweed Entangle Trap
180244, -- Jinxed Hoodoo Pile
180247, -- Jinxed Hoodoo Pile
180421, -- Alliance Banner Aura, Large
180422, -- Horde Banner Aura, Large
180423, -- Neutral Banner Aura, Large
180583, -- Twilight Tablet Fragment
181029, -- Burning Coals
181376, -- Midsummer Bonfire Campfire Damage Trap
181583, -- Tainted Soil Trap
181913 -- Chalice of Elune
);

-- Remove now unneeded dbscript in Zul'farrak : Spell is now cast correctly by the trap gameobject g.128972 (master g.128403)
DELETE FROM dbscripts_on_go_template_use WHERE id=128403;

