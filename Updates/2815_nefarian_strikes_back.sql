-- nefarian shouldnt have random movegen
UPDATE creature_template SET MovementType=0 WHERE entry IN(11583);

