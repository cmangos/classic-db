-- Fix melee and speed for NPC 2675 (Explosive Sheep)
UPDATE creature_template SET ExtraFlags=0, SpeedWalk=1, SpeedRun=1 WHERE Entry=2675;
