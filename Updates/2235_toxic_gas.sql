-- Fix aura for NPC 16400 (Toxic Tunnel) in Naxxramas: prevent aura from being removed as soon a player is hit
UPDATE creature_template_addon SET auras='28370' WHERE entry=16400;
