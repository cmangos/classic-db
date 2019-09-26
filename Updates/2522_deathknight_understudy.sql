-- Fix NPC 16803 (Deathknight Understudy) in Naxxramas
-- Use correct spell for Taunt
UPDATE creature_template_spells SET spell1=29060 WHERE entry=16803;

-- Add aura increasing damage versus UD boss
UPDATE creature_template_addon SET auras='18950 29068' WHERE entry=16803;
