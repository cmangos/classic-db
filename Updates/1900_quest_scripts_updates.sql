-- Removed unused start script for quest 7041 (Vyletongue Corruption) and quest 986 (A Lost Master)
DELETE FROM dbscripts_on_quest_start WHERE id IN (986, 7041);

-- Added missing complete script for quests 986 (A Lost Master) and 1284 (Suspicious Hoofprints)
UPDATE quest_template SET CompleteScript=1284 WHERE Entry=1284;

UPDATE dbscripts_on_quest_end SET id=985 WHERE id=986;
UPDATE quest_template SET CompleteScript=985 WHERE Entry=985;
UPDATE quest_template SET CompleteScript=986 WHERE Entry=986;

-- Source: WotLK-DB
SET @ID := 2000005354;
DELETE FROM dbscripts_on_quest_end WHERE id=986;
INSERT INTO dbscripts_on_quest_end VALUES
(986, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 1, 0, 0, 0, 0, 0, 0, 0, @ID, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 4, 0, 0, 0, 0, 0, 0, 0, @ID + 1, 0, 0, 0, 0, 0, 0, 0, '');

-- DELETE FROM dbscript_string WHERE entry IN (@ID, @ID + 1);
INSERT INTO `dbscript_string` VALUES
(@ID, 'I shall get started right away, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ID + 1, 'Now... where was my thread and needle. Ah! There it is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

