-- Added missing addon for dummy NPC 15902 (Giant Spotlight)
DELETE FROM creature_template_addon WHERE entry=15902;
INSERT INTO creature_template_addon VALUES
(15902, 0, 0, 1, 16, 0, 0, '25824');
