-- Fixed quest giver gameobject that were displaying default gossip message even to players not on the quest
-- Thanks to all people researching this @Grz3s, @Gerhood, @lduguid, @Phatcat, @Tobschinski
-- This closes https://github.com/classicdb/database/issues/142 and contributes to https://github.com/classicdb/database/issues/860
UPDATE gameobject_template SET flags = flags | 4 WHERE type = 2 AND Data3 = 0;
