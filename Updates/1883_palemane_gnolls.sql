-- Fixed speed of NPCs 2949, 2950 & 2951 (Palemane Tanner, Skinner & Poacher) they were walking faster than running
UPDATE creature_template SET SpeedWalk=0.95, SpeedRun=1.14286 WHERE Entry IN (2949, 2950, 2951);
