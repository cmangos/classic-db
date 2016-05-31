-- Fix Defias Messenger being a dishonourable kill
UPDATE creature_template SET Civilian= 0 WHERE Entry= 550;
