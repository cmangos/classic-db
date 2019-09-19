-- Add & Correct Immunities and Resistances and related auras

-- Classic
-- https://wowwiki.fandom.com/wiki/Azuregos?oldid=1630542
UPDATE creature_template SET SchoolImmuneMask = 64, ResistanceFrost = 295 WHERE entry = 6109; -- Azuregos

-- Resistance Value Bestiary
UPDATE creature_template SET SchoolImmuneMask = 64, ResistanceFrost = 295 WHERE entry = 10202; -- Azurous
UPDATE creature_template_addon SET auras = NULL WHERE entry = 10202; -- Azurous

UPDATE creature_template SET SchoolImmuneMask = 64 WHERE entry = 10662; -- Spellmaw
UPDATE creature_template_addon SET auras = NULL WHERE entry = 10662; -- Spellmaw Sniff!

UPDATE creature_template SET SchoolImmuneMask = 64 WHERE entry = 10663; -- Manaclaw
UPDATE creature_template_addon SET auras = '17010' WHERE entry = 10663; -- Manaclaw Sniff!

UPDATE creature_template SET SchoolImmuneMask = 64 WHERE entry = 10664; -- Scryer
UPDATE creature_template_addon SET auras = '8279 18943' WHERE entry = 10664; -- Scryer Sniff!
