-- Corred drop rate of 'Salty Scorpid Venom'
-- https://www.wowhead.com/classic/item=5794/salty-scorpid-venom#dropped-by
-- http://web.archive.org/web/20100224080253/http://thottbot.com/i5794
-- Had a 15% drop chance before, should be much higher (classic was 10%)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-27' WHERE entry = '4139' AND item = '5794';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-29' WHERE entry = '4140' AND item = '5794';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-16' WHERE entry = '5937' AND item = '5794';
