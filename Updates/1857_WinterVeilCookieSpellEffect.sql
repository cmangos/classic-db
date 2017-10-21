-- Add the missing matching Well Fed spell effect to the Winter Veil Cookie spell.
UPDATE
	spell_template
SET
	Effect2 = 6, -- was 0
	EffectDieSides2 = 1, -- was 0
	EffectBaseDice2 = 1, -- was 0
	EffectImplicitTargetA2 = 1, -- was 0
	EffectApplyAuraName2 = 23, -- was 0
	EffectAmplitude2 = 10000, -- was 0
	EffectTriggerSpell2 = 24870 -- was 0
WHERE
	Id = 24869;
