-- Removed Fire Effigy (186720) from gameobject tables
-- This object was not used in Classic version of the Hallow's End event
DELETE FROM `gameobject` WHERE `id`= 186720;
DELETE FROM `game_event_gameobject` WHERE `guid` IN (43049, 43056, 43057, 43061, 43062, 43073, 43080, 43081);
