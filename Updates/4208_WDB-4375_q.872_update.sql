-- q.872 The Disruption Ends'
-- Fix issue with 2 requirements placed in same shared place
UPDATE quest_template SET ReqItemId1 = 0, ReqItemId3 = 5063, ReqItemCount1 = 0, ReqItemCount3 = 1 WHERE entry = 872;
