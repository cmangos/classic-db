-- correct spell targeting data for animations
DELETE FROM spell_script_target WHERE entry IN(24390, 24391);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(24390,0,180102,0),
(24390,0,180101,0),
(24390,0,180100,0),

(24390,0,180087,0),
(24390,0,180088,0),
(24390,0,180089,0),
(24390,0,180090,0),
(24390,0,180091,0),

(24391,0,180102,0),
(24391,0,180101,0),
(24391,0,180100,0)

(24391,0,180087,0),
(24391,0,180088,0),
(24391,0,180089,0),
(24391,0,180090,0),
(24391,0,180091,0);
