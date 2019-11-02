-- Add end script for quest 924 (The Demon Seed) in the Barrens
-- Source: https://classic.wowhead.com/quest=924/the-demon-seed#videos:id=168754
UPDATE gameobject SET spawntimesecsmin=120, spawntimesecsmax=120 WHERE id IN (3523, 3524);

UPDATE gameobject_template SET data3=65536, data5=1 WHERE entry=3524;

DELETE FROM dbscripts_on_event WHERE id=510;
INSERT INTO `dbscripts_on_event` VALUES (510, 1, 13, 0, 0, 0, 3524, 30, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Demon Seed'),
(510, 2, 40, 0, 0, 0, 3523, 30, 0x07, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Circle of Flame');
