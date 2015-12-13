-- Removed NPC 12246 (Super-Seller 680) & 12245 (Vendor-Tron 1000) in Desolace
-- because they should be spawned by script
DELETE FROM `creature` WHERE `id` IN (12246, 12245);
