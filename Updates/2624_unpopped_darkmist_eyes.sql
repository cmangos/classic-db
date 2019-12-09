-- Fix drop rate of item 5884 (Unpopped Darkmist Eye) used in quest 1206 (Jarl Needs Eyes): they should drop every time
-- Thanks @Tobschinski for pointing out. This closes https://github.com/cmangos/issues/issues/2039
-- Source: https://classic.wowhead.com/quest=1206/jarl-needs-eyes#comments:id=12842
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=5884;
