-- Correct Stats for Duggan Wildhammer 10817
UPDATE creature_template SET Faction=1055, SpeedWalk=(2.5 / 2.5), SpeedRun=(8 / 7), UnitFlags=32768 WHERE entry=10817;
UPDATE creature_equip_template SET equipentry1=12951 WHERE entry=10817;
UPDATE creature_model_info SET bounding_radius=0.347, combat_reach=1.5 WHERE modelid=10374;
