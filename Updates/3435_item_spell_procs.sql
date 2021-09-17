-- Correct ppm for Mongoose, Executioner and other Weapon Enchants
-- We used wrong "spell" the dbc entry in some cases, should be spell_template procced spell instead. (kw)
-- https://web.archive.org/web/20081109052506/http://elitistjerks.com/f31/t19282-proc_rate_determination/

-- Demonslaying
-- http://www.wowhead.com/spell=13915/demonslaying#comments:id=20607:reply=50260
DELETE FROM spell_proc_item_enchant WHERE entry=13907; -- 912 dbc
INSERT INTO spell_proc_item_enchant (entry, ppmRate) VALUES
(13907, 6);

-- Unholy Weapon
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Unholy_Weapon?oldid=1612930
DELETE FROM spell_proc_item_enchant WHERE entry=20006; -- 1899 dbc
INSERT INTO spell_proc_item_enchant (entry, ppmRate) VALUES
(20006, 1);

-- Crusader
-- http://wowwiki.wikia.com/wiki/Enchant_Weapon_-_Crusader?oldid=1465701
DELETE FROM spell_proc_item_enchant WHERE entry=20007; -- 1900 dbc
INSERT INTO spell_proc_item_enchant (entry, ppmRate) VALUES
(20007, 1);
