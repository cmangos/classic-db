-- With the update to npc_taskmaster_fizzule SD2 NPCFlags should be 0 by default
UPDATE creature_template SET NPCFlags=0 WHERE entry=7233; -- Taskmaster Fizzule
