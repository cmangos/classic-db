-- Fixed radius of GO 176094, 176095, 176096 & 176097 (First to Fourth Andorhal Tower) to match the spell range
-- This closes #135
UPDATE gameobject_template SET data1=5 WHERE entry IN (176094, 176095, 176096, 176097);
