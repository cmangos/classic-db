-- Stones of Binding: aligned spawntime with Servants and set default flags to 4 to make it usable by players
UPDATE gameobject SET spawntimesecs = 450 WHERE id IN (141812,141857,141858,141859);
UPDATE gameobject_template SET flags = 4 WHERE entry IN (141812,141857,141858,141859);
