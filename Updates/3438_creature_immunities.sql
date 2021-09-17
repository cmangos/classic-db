-- Replace deprecated ExtraFlags for immunities by creature_immunities entries 

-- taunt effect and aura
INSERT INTO creature_immunities SELECT entry, 0, 0, 114 FROM creature_template WHERE ExtraFlags&0x00000100;
INSERT INTO creature_immunities SELECT entry, 0, 1, 11 FROM creature_template WHERE ExtraFlags&0x00000100;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000100 WHERE ExtraFlags&0x00000100;

-- poison auras
INSERT INTO creature_immunities SELECT entry, 0, 4, 4 FROM creature_template WHERE ExtraFlags&0x01000000;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x01000000 WHERE ExtraFlags&0x01000000;
