-- Fix level of NPC 16383 (Flameshocker)
-- https://classic.wowhead.com/npc=16383/flameshocker#comments
UPDATE creature_template SET MinLevel=53, MaxLevel=55 WHERE Entry=16383;
