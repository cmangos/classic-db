-- Update movement of NPC 9441 (Dark Keeper Zimmel): should not roam
UPDATE creature_template SET MovementType=0 WHERE entry=9441;
