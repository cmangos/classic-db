-- Revert data from patch 1.13 that were using non-(yet)-existing content. Use patch 1.12 and later expansion values
UPDATE gameobject_template SET data0=4, data2=2061 WHERE entry IN (126337, 126338, 126339, 126340, 126341, 126342, 126345, 151951);
