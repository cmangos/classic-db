-- Remove gossip flag from NPC 7957 (Jer'kai Moonweaver) in Feralas
UPDATE creature_template SET NpcFlags=2 WHERE Entry=7957;
