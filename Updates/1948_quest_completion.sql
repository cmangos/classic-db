-- 
UPDATE quest_template SET ReqItemId2=ReqItemId1,ReqItemCount2=ReqItemCount1,ReqItemId1=0,ReqItemCount1=0 WHERE entry IN(974,1795);