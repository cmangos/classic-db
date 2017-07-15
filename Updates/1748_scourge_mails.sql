-- Add Scourge Invasion mails
-- Add mail_loot_template records
DELETE FROM mail_loot_template WHERE entry IN (171, 172, 173, 174, 175, 176, 177 );
INSERT INTO mail_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount) VALUES
(171, 22723, 100, 1, 1),
(172, 23008, 100, 1, 1),
(173, 23010, 100, 1, 1),
(174, 23011, 100, 1, 1),
(175, 23012, 100, 1, 1), 
(176, 23013, 100, 1, 1),
(177, 23016, 100, 1, 1);

-- Add mail at start of event
DELETE FROM game_event_mail WHERE event=17 AND mailTemplateId=171;
INSERT INTO game_event_mail (event, raceMask, quest, mailTemplateId, senderEntry) VALUES
(17, 255, 0, 171, 16285);

-- Update quests to reward mail
UPDATE quest_template SET RewMailDelaySecs=518400 WHERE entry IN (9295, 9299, 9300, 9301, 9302, 9304);
UPDATE quest_template SET RewMailTemplateId=172 WHERE entry=9299;
UPDATE quest_template SET RewMailTemplateId=173 WHERE entry=9295;
UPDATE quest_template SET RewMailTemplateId=174 WHERE entry=9300;
UPDATE quest_template SET RewMailTemplateId=175 WHERE entry=9302;
UPDATE quest_template SET RewMailTemplateId=176 WHERE entry=9301;
UPDATE quest_template SET RewMailTemplateId=177 WHERE entry=9304;
