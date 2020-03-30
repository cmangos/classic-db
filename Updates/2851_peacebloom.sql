-- peacebloom should drop 1-3
UPDATE gameobject_loot_template SET mincountOrRef=1,maxcount=3 WHERE entry IN(1415,2512) AND item IN(2447);
