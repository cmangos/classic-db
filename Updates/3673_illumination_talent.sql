-- vanilla only
UPDATE spell_proc_event SET SpellFamilyMask0=SpellFamilyMask0|0x6000,SpellFamilyMask1=SpellFamilyMask1|0x6000,SpellFamilyMask2=SpellFamilyMask2|0x6000 WHERE entry IN(20210);

