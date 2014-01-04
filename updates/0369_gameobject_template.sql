-- Fixed size of gameobjects 178667, 178668 & 178805 (Christmas trees medium size)
-- used in Winter Veil event as they were too big
-- Correct size ratio from UDB
UPDATE gameobject_template SET size = 0.5 WHERE entry = 178667;
UPDATE gameobject_template SET size = 0.35 WHERE entry = 178668;
UPDATE gameobject_template SET size = 0.85 WHERE entry = 178805;
