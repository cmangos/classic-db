-- Update loot template after loot ID update from sniffs
UPDATE gameobject_loot_template SET entry=2032 WHERE entry=2560;

-- Remove untargetable flags for GO 20352 (Circle of Imprisonment) in Ashenvale
UPDATE gameobject_template SET flags=0 WHERE entry=20352;