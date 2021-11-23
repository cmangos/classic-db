-- Remove duplicate pool_template "Mulgore (Paleman Rock)" 31308 -> "Mulgore (Palemane Rock)" 31167
-- Noticed here: https://github.com/cmangos/classic-db/commit/ed46e363f2ab74d0b1f6c3c7573136794f0149c5#r60450745
-- SELECT * FROM pool_pool where mother_pool between 39900 and 39999 order by description;
UPDATE pool_template SET max_limit=7 WHERE entry=39903; -- Mulgore - Master Chest Pool
UPDATE pool_gameobject SET pool_entry=31167 WHERE pool_entry=31308;
DELETE FROM pool_pool WHERE pool_id=31308; -- d.31167
DELETE FROM pool_template WHERE entry=31308; -- d.31167

-- Delete now unused pool_template 39801 to 39803
DELETE FROM pool_template WHERE entry BETWEEN 39801 AND 39803; -- Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1 (only one can be spawned at the same time so no need anymore for pool_pool)
