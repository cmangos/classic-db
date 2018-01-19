-- Fixed flags of NPC 14371 (Shen'dralar Provisioner)
-- This closes #163
UPDATE creature_template SET NpcFlags=16388 WHERE Entry=14371;
