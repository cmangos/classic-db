-- Quest 905 - The Angry Scytheclaws
-- You should be able to loot more then 1 Sunscale Feather
-- Old quest_template version was
-- ReqSourceId1, ReqSourceId2, ReqSourceId3 = 5165
-- ReqSourceCount1, ReqSourceCount2, ReqSourceCount3 = 1
-- This made only 1 Sunscale Feather drop for Players
-- We now have the same version as vMangos
-- 'Setting this value to 0 means the item stack size'
-- ReqSourceId1 = 5165, ReqSourceCount1 = 0 
-- ReqSourceId2, ReqSourceId3 = 0
-- ReqSourceCount2, ReqSourceCount3 = 0
UPDATE quest_template SET ReqSourceId2 = 0, ReqSourceId3 = 0, ReqSourceCount1 = 0, ReqSourceCount2 = 0, ReqSourceCount3 = 0 WHERE entry = 905;

