-- Removed a few gameobject spawns that were added in patch 2.0.1 or later
DELETE FROM gameobject WHERE id IN (182068, 182071, 182072, 181629);