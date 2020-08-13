-- needs to be done custom due to HOT procs work
UPDATE spell_proc_event SET procFlags=procFlags&~0x00040000 WHERE entry IN(28744);

