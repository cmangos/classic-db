-- Add missing pool template entry
DELETE FROM pool_template WHERE entry=1251;
INSERT INTO pool_template (entry,max_limit,description) VALUES
(1251, 1, 'Snagglespear (5786)');
