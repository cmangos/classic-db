-- Removes spawns of NPC's that are spawned during the event Elemental Invasion, thank you Tobschinski for reporting!
DELETE from creature where id IN (14457,14460,14461,14462,14464,14458,14457,14455,14454);
