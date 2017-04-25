-- Molten Core runes
UPDATE gameobject_template SET ExtraFlags=1 WHERE entry BETWEEN 176951 AND 176957;
UPDATE gameobject SET animprogress=100 WHERE id BETWEEN 176951 AND 176957;
-- Flames Circles around each rune
UPDATE gameobject SET animprogress=255, spawntimesecs=604800 WHERE id BETWEEN 178187 AND 178193;
