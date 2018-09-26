-- Fix requirements of quest 4734 (Egg Freezing). It should require quest 4810 (Return to Tinkee)
-- instead of quest 4907 (Tinkee Steamboil) that is an optional one
-- See http://www.wowhead.com/quest=4907/tinkee-steamboil#comments:id=287972:reply=53635
UPDATE quest_template SET PrevQuestId=4810 WHERE entry=4734;

-- Fix requirements of quest 5522 (Leonid Barthalomew). It should require quest 4735 (Egg Collection)
-- instead of quest 4734 (Egg Freezing)
UPDATE quest_template SET PrevQuestId=4735 WHERE entry=5522;
