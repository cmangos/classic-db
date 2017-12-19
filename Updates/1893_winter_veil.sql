-- http://wowwiki.wikia.com/wiki/Quest:Treats_for_Greatfather_Winter
-- http://wowwiki.wikia.com/wiki/Quest:Metzen_the_Reindeer
-- http://wowwiki.wikia.com/wiki/Winter_Veil_Disguise_Kit
-- This closes #161
DELETE FROM mail_loot_template WHERE entry IN (102, 118, 122, 161, 108, 117);
INSERT INTO	mail_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount) VALUES
(102, 17685, 100, 1, 1),
(118, 17685, 100, 1, 1),
(122, 21216, 100, 1, 1),
(161, 21216, 100, 1, 1),
(108, 17712, 100, 1, 1),
(117, 17712, 100, 1, 1);
