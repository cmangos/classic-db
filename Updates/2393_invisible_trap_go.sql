-- Make some linked trap GOs invisible to normal players
UPDATE gameobject_template SET data9=1 WHERE entry IN (103575, 181214, 178248, 178124, 177529, 177493, 176750, 176592, 128972);
