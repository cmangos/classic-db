-- q.4441 'Felbound Ancients'
DELETE FROM dbscripts_on_quest_end WHERE id = 4441;
INSERT INTO dbscripts_on_quest_end VALUES 
(4441, 0, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest flag removed'),
(4441, 1, 0, 0, 0, 0, 0, 0, 0, 2000001039, 0, 0, 0, 0, 0, 0, 0, ''),
(4441, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59669, ''),
(4441, 3, 15, 28892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4441, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72271, ''),
(4441, 9, 0, 0, 0, 0, 0, 0, 0, 2000001040, 0, 0, 0, 0, 0, 0, 0, ''),
(4441, 9, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest flag added');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001039 AND 2000001040;
INSERT INTO dbscript_string (entry,content_default) VALUES
(2000001039,'May this evil aura be banished from this artifact!'),
(2000001040,'I can feel the presence of evil leaving...');
UPDATE quest_template SET CompleteScript = 4441 WHERE entry = 4441;
