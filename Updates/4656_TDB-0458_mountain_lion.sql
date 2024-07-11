-- Starving Mountain Lion
-- Reduce Detection to default value (confirmed on classic ptr), was 30 before
UPDATE creature_template SET Detection = '20' WHERE entry = '2384';