-- Fixed movement of NPC 10917 (Aurius) in Stratholme
UPDATE creature_template SET MovementType = 0 WHERE Entry = 10917;
