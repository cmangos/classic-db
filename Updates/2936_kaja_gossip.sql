-- Remove wrong gossip flag for NPC 3322 (Kaja) in Orgrimmar
-- This closes https://github.com/cmangos/issues/issues/2115
UPDATE creature_template SET NpcFlags=16388 WHERE Entry=3322;
