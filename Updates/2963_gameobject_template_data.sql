-- Temporary fix data6 for GO 178559 (Larva Spewer) in prevision of coming core update
UPDATE gameobject_template SET data6=0 WHERE entry=178559;
