-- Fallen Hero 10996
-- https://www.youtube.com/watch?v=aJlf0K_VZ-0
-- https://www.youtube.com/watch?v=MxQFj_dQX6o
-- https://www.youtube.com/watch?v=z27DkTlbN9A
-- https://www.youtube.com/watch?v=rSFys_pr0Do
-- Currently suffers from doing first "detect pulse 5secs after spawn" like normal spawned npcs, should be more like 1sec after spawn for non natural spawned mobs
UPDATE creature_template SET UnitFlags=32832, SpeedWalk=(2.5 / 2.5), SpeedRun=(8 / 7), MinMeleeDmg=100, MaxMeleeDmg=135, MinRangedDmg=70, MaxRangedDmg=103, MeleeAttackPower=248, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=10996;

DELETE FROM creature_template_addon WHERE entry=10996;
INSERT INTO creature_template_addon (entry, b2_0_sheath, b2_1_flags) VALUES (10996, 1, 16);
