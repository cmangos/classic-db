-- Add support for Sapphiron encounter

-- Add addon and Chill aura (spell 28534) to NPC 16474 (Blizzard)
DELETE FROM creature_template_addon WHERE entry=16474;
INSERT INTO creature_template_addon VALUES (16474, 0, 0, 1, 16, 0, 0, '28534');

-- Update template of NPC 28534 (Blizzard), not selectable, visible, hostile, move slowly (data to be confirmed when Naxxramas is indeed released)
UPDATE creature_template SET UnitFlags=33554432, Faction=14, SpeedWalk=0.5, SpeedRun=0.5, MovementType=0 WHERE Entry=16474;

-- Add target 181247 (Ice Block) to spell 28523 (Despawn Ice Block)
DELETE FROM spell_script_target WHERE entry=28523;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28523, 0, 181247, 0);
