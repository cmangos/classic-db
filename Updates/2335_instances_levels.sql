-- Correct required level for almost all instances

-- set level 0 for portal leading outside an instance
UPDATE `areatrigger_teleport` SET `required_level`=0 WHERE `id`=3728;
-- Level 8 Ragefire Chasm
UPDATE `areatrigger_teleport` SET `required_level`=8 WHERE `id`=2230;
-- level 10 Shadowfang keep, Wailing Caverns
UPDATE `areatrigger_teleport` SET `required_level`=10 WHERE `id` IN (145,228);
-- level 15 Stockades,  Gnomeregan (both entrances)
UPDATE `areatrigger_teleport` SET `required_level`=15 WHERE `id` IN (101,324,523);
-- level 19 Blackfathom Deeps
UPDATE `areatrigger_teleport` SET `required_level`=19 WHERE `id`=257;
-- level 20 Scarlet Monestary, all of them
UPDATE `areatrigger_teleport` SET `required_level`=20 WHERE `id` IN (45,610,612,614);
-- level 25 Razorfen Downs
UPDATE `areatrigger_teleport` SET `required_level`=25 WHERE `id`=442;
-- level 30 Uldaman (both entrances), Maraudon (both entrances)
UPDATE `areatrigger_teleport` SET `required_level`=30 WHERE `id` IN (286,902,3133,3134);
-- level 35 Zul'Farrak, Sunken Temple
UPDATE `areatrigger_teleport` SET `required_level`=35 WHERE `id` IN (924,446);
-- level 40 Blackrock Depths (both entrances)
UPDATE `areatrigger_teleport` SET `required_level`=40 WHERE `id` IN (1466,2890);
-- level 45 Dire Maul all (6) entrances, Scholo, Strath (all 3 entrances), Blackrock Spire
UPDATE `areatrigger_teleport` SET `required_level`=45 WHERE `id` IN (3183,3184,3185,3186,3187,3189,2567,2214,2216,2217,1468);
-- level 50 Zul'Gurub, Molten Core (all 3 entrances), Onyxia's Lair, Ahn'Qiraj (both of them) even says so in the status_failed_text field for several of them but is just not set so
UPDATE `areatrigger_teleport` SET `required_level`=50 WHERE `id` IN (3928,2886,3528,3529,2848,4008,4010);
-- level 51 Naxxramas - It even says so in the status_failed_text field but is just not set it
UPDATE `areatrigger_teleport` SET `required_level`=51 WHERE `id` IN (4055,4156);
