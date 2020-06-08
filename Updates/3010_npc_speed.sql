-- Fix movement speed of two NPCs that were moving too fast and awkwardly
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=14369; -- Shen'dralar Zealot
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=10996; -- Fallen Hero
