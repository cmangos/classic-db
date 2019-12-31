-- additional fire nova totem self cast auras - core commit associated
-- applicable to vanilla and tbc
UPDATE creature_template_spells SET spell2=8350 WHERE entry IN(5879);
UPDATE creature_template_spells SET spell2=8508 WHERE entry IN(6110);
UPDATE creature_template_spells SET spell2=8509 WHERE entry IN(6111);
UPDATE creature_template_spells SET spell2=11312 WHERE entry IN(7844);
UPDATE creature_template_spells SET spell2=11313 WHERE entry IN(7845);
-- UPDATE creature_template_spells SET spell2=25540 WHERE entry IN(15482); -- Fire Nova Totem VI
-- UPDATE creature_template_spells SET spell2=25544 WHERE entry IN(15483); -- Fire Nova Totem VII

