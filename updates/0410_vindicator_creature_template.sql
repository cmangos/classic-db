-- Fixed speed of creatures 16451 (Deathknight Vindicator) and 16452 (Necro Knight Guardian) in Naxxramas Outer Ring
-- because they were patrolling far too quickly
UPDATE creature_template SET `speed_walk` = 1.5 WHERE `entry` IN (16451, 16452);
