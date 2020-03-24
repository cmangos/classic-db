-- need to reward mail
UPDATE quest_template SET RewMailTemplateId=120 WHERE entry=7733;

DELETE FROM mail_loot_template WHERE entry=120;
INSERT INTO `mail_loot_template` VALUES (120, 15564, 100, 0, 1, 1, 0, 'Rugged Armor Kit');
