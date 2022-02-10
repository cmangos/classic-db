DROP TABLE IF EXISTS gameobject_template_addon;
CREATE TABLE gameobject_template_addon(
`Entry` INT UNSIGNED NOT NULL COMMENT 'gameobject_template',
`Artkit0` INT NOT NULL DEFAULT 0,
`Artkit1` INT NOT NULL DEFAULT 0,
`Artkit2` INT NOT NULL DEFAULT 0,
`Artkit3` INT NOT NULL DEFAULT 0,
PRIMARY KEY(entry)
);

REPLACE INTO gameobject_template_addon(Entry,Artkit0,Artkit1)
SELECT entry, 121, 122 FROM gameobject_template WHERE entry IN (
	181567, -- Flame of the Wetlands
	181566, -- Flame of Hillsbrad
	181565, -- Flame of Westfall
	181564, -- Flame of Silverpine
	181563, -- Flame of Darkshore
	181562, -- Flame of Stonetalon
	181561, -- Flame of Ashenvale
	181560, -- Flame of the Barrens
	181349, -- Flame of the Scholomance
	181348, -- Flame of Stratholme
	181347, -- Flame of Blackrock Spire
	181346, -- Flame of Dire Maul
	181345, -- Flame of the Hinterlands
	181344, -- Flame of the Blasted Lands
	181343, -- Flame of Un'Goro
	181342, -- Flame of Azshara
	181341, -- Flame of Searing Gorge
	181340, -- Flame of Winterspring
	181339, -- Flame of Silithus
	181338, -- Flame of the Plaguelands
	181337, -- Flame of Thunder Bluff
	181336, -- Flame of Orgrimmar
	181335, -- Flame of the Undercity
	181334, -- Flame of Darnassus
	181333, -- Flame of Ironforge
	181332  -- Flame of Stormwind
);

REPLACE INTO gameobject_template_addon(Entry,Artkit0,Artkit1)
SELECT entry, 121, 122 FROM gameobject_template WHERE entry
IN(187946,187945,187944,187943,187942,187941,187940,187939,187938,187937,187936,187935,187934,187933,187932,187931,187930,187929,187928,
187927,187926,187925,187924,187923,187922,187921,187920,187919,187917,187916,187914,187564,187971,187973,187952,187963,187950,187961,187959,
187957,187968,187948,187953,187970,187966,187975,187969,187951,187956,187954,187947,187972,187964,187559,187965,187949,187955,187967,187958,
187974,187960,187962,181332,181333,181334,181335,181336,181337,188128,188129);
