-- Fix size of a few Tauren NPCs so they match other Tauren size
UPDATE creature_template SET scale=1.35 WHERE Entry IN (7725, 7726, 7727, 10758, 10759, 11911, 11912, 11913);
