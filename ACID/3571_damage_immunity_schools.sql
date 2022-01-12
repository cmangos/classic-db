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

-- Classic
UPDATE creature_template SET DamageSchool=3 WHERE entry=2762; -- Thundering Exile
UPDATE creature_template SET ResistanceFire=0 WHERE entry=2745; -- Ambassador Infernus
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|4 WHERE entry=6521; -- Living Blaze
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|4, ResistanceFire=0 WHERE entry=7135; -- Infernal Bodyguard
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|4, ResistanceFire=0 WHERE entry=7136; -- Infernal Sentry
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|4, ResistanceFire=0 WHERE entry=8608; -- Angered Infernal (Hits Physical)
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|4, ResistanceFire=0 WHERE entry=8911; -- Fireguard Destroyer - https://classic.wowhead.com/npc=8911/fireguard-destroyer#comments:id=2810401
UPDATE creature_template SET DamageSchool=2 WHERE entry=10757; -- Boiling Elemental
UPDATE creature_template SET DamageSchool=5 WHERE entry=11284; -- Dark Shade
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|8 WHERE entry=12201; -- Princess Theradras (e.g Thorns, Poisons)
UPDATE creature_template SET DamageSchool=3 WHERE entry=13696; -- Noxxious Scion
-- UPDATE creature_template SET DamageSchool=3 WHERE entry=13736; -- Noxxious Essence (couldnt confirm this one)
UPDATE creature_template SET DamageSchool=5 WHERE entry=14389; -- Netherwalker
