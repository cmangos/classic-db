-- Fixed issue with quests showing completed after accepted
UPDATE quest_template SET ReqSourceId1=ReqItemId1, ReqSourceCount1=ReqItemCount1, ReqItemId1=0, ReqItemCount1=0 WHERE entry IN
(1471,1474,1504,1513,1689,1739,8490,9582,9619);
