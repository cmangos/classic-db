-- Add gameobject_spawn_entry for Magenta Cap Clusters 126049,128293 and fix loot

-- Correct maxcount for Magenta Fungus Cap from go.126049,128293 "Clusters" lol
-- https://classic.wowhead.com/quest=2202/uldaman-reagent-run#comments:id=3156500
UPDATE gameobject_loot_template SET maxcount=6 WHERE entry=5212 AND item=8047; -- 1 befor

-- Apply gameobject_spawn_entry for spawns outside the dungeon too, instance gets overwritten anyways
-- https://classic.wowhead.com/quest=17/uldaman-reagent-run#comments:id=2748314 - respawn around 15, move time towards that marker
UPDATE gameobject SET id=126049, spawntimesecsmin=300, spawntimesecsmax=600 WHERE id=128293;
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid, 126049 FROM gameobject WHERE id=126049; -- Magenta Cap Clusters
REPLACE INTO gameobject_spawn_entry (guid, entry) SELECT guid, 128293 FROM gameobject WHERE id=126049; -- Magenta Cap Clusters
UPDATE gameobject SET id=0 WHERE id=126049;
