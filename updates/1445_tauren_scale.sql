-- Fixed model size of NPC 4046 (Magatha Grimtotem) and 11117 (Awenasa)
-- This closes #892
UPDATE creature_template SET Scale = 1.35 WHERE Entry IN (4046, 11117);
