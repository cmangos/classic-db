-- Fix duplicate entry in pool_template
-- Closes #233
UPDATE pool_creature_template SET pool_entry=1059 WHERE id=10817;
DELETE FROM pool_template WHERE entry=1216;
