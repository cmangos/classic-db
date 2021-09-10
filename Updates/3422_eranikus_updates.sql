-- Replace movement for Moonglade Warden by movement for Nighthaven Defender
UPDATE creature_movement_template SET entry=15495 WHERE entry=11822;
-- Fix faction for creature 15495 (Nighthaven Defender)
UPDATE creature_template SET Faction=495 WHERE Entry=15495;
