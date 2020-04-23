-- Fix reward cast spells for quest 3503 (Meet with the Master) and 3421 (Return Trip)
-- Thanks @stan84 for reporting. Closes https://github.com/cmangos/issues/issues/2122
UPDATE quest_template SET RewSpell=0, RewSpellCast=12510 WHERE entry=3503;
UPDATE quest_template SET RewSpell=0, RewSpellCast=12521 WHERE entry=3421;
