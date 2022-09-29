-- q.4971 'A Matter of Time'
-- Fix issue with 1/10 kill counter on quest START
UPDATE quest_template SET ReqItemId1 = 0, ReqItemId2 = 12627, ReqItemCount1 = 0, ReqItemCount2 = 1 WHERE entry = 4971;

