-- Fix final quests of the Symbol of Life quest chain for Paladins
-- Closes https://github.com/cmangos/issues/issues/2572

-- Update NPC 6177 (Narm Faulk) stats based on sniff
UPDATE creature_template SET Faction=122, UnitFlags=768 WHERE Entry=6177;

-- Remove hack to prevent spell target from failing
UPDATE creature SET DeathState=0 WHERE id IN (6172, 6177);

-- Fix target for spell 8593 (Symbol of Life) as the expected targets are not really dead (i.e. not corpse)
UPDATE spell_script_target SET type=1 WHERE entry=8593;
