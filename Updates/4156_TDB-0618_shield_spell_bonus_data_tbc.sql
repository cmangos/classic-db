-- https://wowwiki-archive.fandom.com/wiki/Spell_power_coefficient?oldid=1549180
-- https://wowpedia.fandom.com/wiki/Spell_power?oldid=1576621
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(17, 0.1, 0, 0, 0, 'Priest - Power Word: Shield'), -- 0.8068 in wotlk 0.1 classic https://wowwiki-archive.fandom.com/wiki/Power_Word:_Shield?oldid=274179 - Receives a 80.68% bonus from spell power (30% of +healing in Patch 2.3; 20% as of Patch 2.0.10, previously 10%)
-- (543, 0.3, 0, 0, 0, 'Mage - Fire Ward'), -- 0.805338 wotlk 0.1 classic - https://web.archive.org/web/20080304051324/http://elitistjerks.com:80/f31/t16979-mage_tc_after_2_3_a/
(1463, 0.1, 0, 0, 0, 'Mage - Mana Shield'); -- 0.805338 wotlk 0.1 classic https://wowpedia.fandom.com/wiki/Mana_Shield_(original)?direction=prev&oldid=1350187 or even 0, 2.4 pushed to 50%, how should it be >80% befor?
-- (6143, 0.3, 0, 0, 0, 'Mage - Frost Ward'), -- 0.805338 wotlk 0.1 classic
-- (6229, 0.3, 0, 0, 0, 'Warlock - Shadow Ward'), -- 0.805338 wotlk 0.1 classic
-- (11426, 0.3, 0, 0, 0, 'Mage - Ice Barrier'); -- 0.805338 wotlk 0.1 classic - https://wowwiki-archive.fandom.com/wiki/Ice_Barrier?oldid=2215946

-- wotlk+ - https://archive.ph/tahA8 - 0.805338
-- Shields and Wards - same for shadow ward
-- Fire Ward, Frost Ward, Mana Shield and Ice Barrier now scale with 80.7% of your spell power.
-- That's 1.5/3.5 for being an instant multiplied with 0.855/0.455 for being a healing effect.
-- None of these shield seem to be affected by Amplify/Dampen Magic.

-- Current formula for working out Power Word: Shield (Patch 3.2)
-- (base_absorb+(0.8068+0.08*BT)*sp)*(1+0.05*IMP)*(1+ 0.02*FP)*(1+0.01*TD)

