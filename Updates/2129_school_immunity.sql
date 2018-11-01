-- ============================================================================================================================================================
-- creature_template which need adjustments to their DamageSchool, SchoolImmuneMask or Resistance-(Holy/Fire/Nature/Frost/Shadow/Arcane)
-- ============================================================================================================================================================
--		DamageSchool			SchoolImmuneMask
-- 0 	SPELL_SCHOOL_NORMAL		SPELL_SCHOOL_NORMAL		1
-- 1 	SPELL_SCHOOL_HOLY		SPELL_SCHOOL_HOLY		2
-- 2 	SPELL_SCHOOL_FIRE		SPELL_SCHOOL_FIRE		4
-- 3 	SPELL_SCHOOL_NATURE		SPELL_SCHOOL_NATURE		8
-- 4 	SPELL_SCHOOL_FROST		SPELL_SCHOOL_FROST		16
-- 5 	SPELL_SCHOOL_SHADOW		SPELL_SCHOOL_SHADOW		32
-- 6 	SPELL_SCHOOL_ARCANE		SPELL_SCHOOL_ARCANE		64
-- =====================================================================================================
-- Map: 0 Eastern Kingdoms / 1 Kalimdor / Classic
-- =====================================================================================================

UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=92; -- Rock Elemental
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=329; -- Earth Elemental
UPDATE creature_template SET DamageSchool=4, SchoolImmuneMask=16 WHERE entry=691; -- Lesser Water Elemental
UPDATE creature_template SET DamageSchool=3, SchoolImmuneMask=8 WHERE entry=832; -- Dust Devil
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2359; -- Elemental Slave
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2592; -- Rumbling Exile
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2735; -- Lesser Rock Elemental
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2736; -- Greater Rock Elemental
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2752; -- Rumbler
UPDATE creature_template SET DamageSchool=2 WHERE entry=2760; -- Burning Exile
UPDATE creature_template SET DamageSchool=4 WHERE entry=2761; -- Cresting Exile
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=2762; -- Thundering Exile
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry=9461; -- Frenzied Black Drake
UPDATE creature_template SET SchoolImmuneMask=8, ResistanceNature=0 WHERE entry=11321; -- Molten Elemental
UPDATE creature_template SET SchoolImmuneMask=8 WHERE entry=14435; -- Prince Thunderaan <The Wind Seeker>
