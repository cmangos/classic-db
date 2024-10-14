-- Add your query below.
-- https://github.com/vmangos/core/commit/2f9dc70a3e369c0496e4d400bdf2144e4977ff60
-- https://github.com/vmangos/core/commit/75474d2d33bccfabc2a2f05986132529f3b79cbb
-- Remove wrong creature immunities. - to fix what went wrong above and more
-- https://github.com/vmangos/core/commit/8f93351f5ea7bd989312420512b4b7e7279c9ddb

-- Error while converting OLD "CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY" to creature_immunities in classic due to SpellAura Difference
-- https://github.com/cmangos/classic-db/commit/0167a3de9ab20d1cc027b8e30319e1f5fc87f993#diff-0c1e1d4b967a755e69ae2049e4d8fb015c19187cf0d92b7ce3705cde369652c5R18
UPDATE `creature_immunities` SET `Value` = 65 WHERE `Type` = 1 AND `Value` = 216; -- 216 (SPELL_AURA_HASTE_SPELLS) does not exist in classic, highest id is 191

-- gist: Devouring Plague shows elementals and mechanical immune to DISPEL_DISEASE too

-- Rock Elemental
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=92;

-- Harvest Watcher
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=114; -- MECHANIC_KNOCKOUT
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (114, 0, 4, 4); -- DISPEL_POISON

-- Fire Elemental
-- Poison: Instant Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (575, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Chilled, Chilled, Curse of Exhaustion
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=575;
-- Mechanic Stun: Revenge Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=575;

-- Lesser Water Elemental
-- Poison: Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (691, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Root: Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=691;
-- Mechanic Snare: Concussive Shot, Curse of Exhaustion
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=691;
-- Mechanic Stun: Charge Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=691;

-- Tangled Horror
-- Mechanic Bleed: Rupture, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=766;

-- Cursed Sailor
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=1157;

-- Skeletal Acolyte
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=1789;

-- Hungering Wraith
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=1802;

-- Wailing Death
-- Mechanic Disoriented: Blind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=1804;

-- Araj the Summoner
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=1852;

-- Rot Hide Brute
-- Mechanic Sleep: Sleep
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 512) WHERE `entry`=1939; -- MECHANIC_SLEEP
-- 1674,1675,1772,1773,1939,1940,1941,1942,1943,1944 considered undead? no fear horror or sleep

-- Lake Skulker
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=1953;

-- Elder Lake Skulker
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=1954;

-- Timberling Bark Ripper
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=2025;

-- Cracked Golem
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2156, 0, 4, 4); -- DISPEL_POISON

-- Stone Behemoth
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2157, 0, 4, 4); -- DISPEL_POISON

-- Cursed Highborne
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=2176;

-- High Executor Darthalia
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=2215;

-- Elemental Slave
-- School Nature: Deadly Poison, Instant Poison, Instant Poison II, Lightning Bolt, Serpent Sting, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=2359;
-- Poison: Deadly Poison, Instant Poison, Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2359, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=2359;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=2359;
-- Mechanic Snare: Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=2359;
-- Mechanic Stun: Charge Stun, Impact
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=2359;

-- Stone Golem
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2723, 0, 4, 4); -- DISPEL_POISON

-- Lesser Rock Elemental
-- Disease: Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2735, 0, 4, 3); -- DISPEL_DISEASE
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=2735;
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=2735;
-- Mechanic Fear: Intimidating Shout, Fear, Psychic Scream, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=2735;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=2735;
-- Mechanic Snare: Concussive Shot, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=2735;
-- Mechanic Stun: Kidney Shot, Cheap Shot, Hammer of Justice, Hammer of Justice, Charge Stun, Blackout, Intercept Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=2735;

-- Greater Rock Elemental
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=2736;
-- Mechanic Stun: Kidney Shot, Charge Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=2736;

-- Ambassador Infernus
-- Poison: Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2745, 0, 4, 4); -- DISPEL_POISON

-- Archaedas
-- Mechanic Stun: Hammer of Justice, Bash, Pounce, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=2748; -- MECHANIC_STUN
-- Mechanic Bleed: Rend, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=2748; -- MECHANIC_BLEED
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2748, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Myzrael
-- Mechanic Root: Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=2755; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=2755; -- MECHANIC_SNARE
-- Mechanic Bleed: Rupture
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=2755;

-- Blacklash
-- Mechanic Stun: Kidney Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=2757; -- MECHANIC_STUN

-- Hematus
-- School Fire: Fireball
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=2759;
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=2759;
-- Mechanic Stun: Cheap Shot, Kidney Shot, Concussion Blow, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=2759; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=2759; -- MECHANIC_KNOCKOUT

-- Burning Exile
-- Poison: Crippling Poison, Instant Poison III, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2760, 0, 4, 4); -- DISPEL_POISON

-- Cresting Exile
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2761, 0, 4, 4); -- DISPEL_POISON

-- Vengeful Surge
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (2776, 0, 4, 4); -- DISPEL_POISON

-- Enraged Rock Elemental
-- Mechanic Fear: Intimidating Shout, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=2791;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=2791;
-- Mechanic Stun: Charge Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=2791;

-- Urda
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=2851;

-- Fam'retor Guardian
-- School Nature: Earth Shock, Lightning Bolt
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=2919;

-- Grisha
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=3305;

-- Mutanus the Devourer
-- School Shadow: Shadow Bolt, Curse of Agony, Corruption
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 32) WHERE `entry`=3654;
-- Mutanus the Devourer
-- Mechanic Fear: Intimidating Shout, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=3654;

-- Skum
-- School Nature: Earth Shock, Serpent Sting
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=3674;

-- Dark Strand Enforcer
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=3727;

-- Shadethicket Wood Shaper
-- Mechanic Bleed: Rip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3781;

-- Shadethicket Raincaller
-- Mechanic Bleed: Rip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3783;

-- Shadethicket Bark Ripper
-- Mechanic Bleed: Rip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3784;

-- Shadowfang Darksoul
-- School Shadow: Curse of Agony, Corruption, Mind Control, Mind Blast, Shadow Bolt
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 32) WHERE `entry`=3855;

-- Bleak Worg
-- School Frost: Cone of Cold, Frost Nova, Chilled, Chilled, Frostbolt, Cone of Cold, Chilled, Frostbite, Winter's Chill
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~16) WHERE `entry`=3861;

-- Tormented Officer
-- Mechanic Bleed: Rend, Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3873;

-- Haunted Servitor
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3875;

-- Wailing Guardsman
-- Mechanic Bleed: Rend, Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=3877;

-- Razorclaw the Butcher
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=3886;
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=3886;

-- Befouled Water Elemental
-- Poison: Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (3917, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=3917;
-- Mechanic Root: Improved Wing Clip, Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=3917;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=3917;
-- Mechanic Stun: Charge Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=3917;

-- Wolf Master Nandos
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=3927;

-- Taneel Darkwood
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=3940;

-- Houndmaster Loksey
-- Mechanic Snare: Crippling Poison, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=3974;
-- Mechanic Stun: Charge Stun, Impact
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=3974;

-- High Inquisitor Whitemane
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=3977;

-- Monika Sengutz
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=3982;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=3982;

-- Interrogator Vishas
-- Mechanic Fear: Intimidating Shout, Fear, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=3983;

-- Charred Ancient
-- Mechanic Bleed: Garrote
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=4028;

-- XT:9
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4074, 0, 4, 4); -- DISPEL_POISON

-- Thundering Boulderkin
-- Poison: Deadly Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4120, 0, 4, 4); -- DISPEL_POISON

-- Archmage Arugal
-- Mechanic Stun: Hammer of Justice, Charge Stun, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=4275; -- MECHANIC_STUN

-- Eye of Kilrogg
-- Mechanic Shield: Power Word: Shield, Power Word: Shield, Power Word: Shield, Power Word: Shield
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~262144) WHERE `entry`=4277;

-- Odo the Blindwatcher
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=4279;

-- Unfettered Spirit
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=4308; -- MECHANIC_BLEED

-- Agathelos the Raging
-- Mechanic Stun: Kidney Shot, Cheap Shot, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=4422; -- MECHANIC_STUN

-- Aggem Thorncurse
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=4424;

-- Death Speaker Jargba
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=4428;
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=4428;

-- Parqual Fintallas
-- Mechanic Fear: Aura of Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=4488;

-- Wind Howler
-- Disease: Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4526, 0, 4, 3); -- DISPEL_DISEASE

-- Stone Rumbler
-- School Nature: Earthbind, Earth Shock, Instant Poison II, Lightning Bolt, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=4528;
-- Poison: Instant Poison II
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4528, 0, 4, 4); -- DISPEL_POISON

-- High Inquisitor Fairbanks
-- Mechanic Snare: Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=4542;
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=4542;

-- Bloodmage Thalnos
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=4543; -- MECHANIC_BLEED
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=4543;

-- Gelkis Rumbler
-- School Nature: Crippling Poison, Earth Shock, Instant Poison II, Earth Shock, Serpent Sting, Serpent Sting, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=4661;
-- Poison: Crippling Poison, Instant Poison II, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4661, 0, 4, 4); -- DISPEL_POISON

-- Burning Blade Augur
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=4663;

-- Lesser Infernal
-- Mechanic Bleed: Rend, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=4676; -- MECHANIC_BLEED
-- Poison: Instant Poison III, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4676, 0, 4, 4); -- DISPEL_POISON

-- Twilight Elementalist
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=4814;
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=4814;
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=4814;
-- Mechanic Stun: Cheap Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=4814;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=4814;

-- Earthcaller Halmgar
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=4842;

-- Stone Keeper
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4857, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4857, 0, 4, 4); -- DISPEL_POISON

-- Stone Steward
-- Mechanic Fear: Howl of Terror
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=4860;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4860, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Obsidian Golem
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4872, 0, 4, 4); -- DISPEL_POISON

-- Aku'mai Servant
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (4978, 0, 4, 4); -- DISPEL_POISON

-- Deviate Lasher
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5055;

-- Phantim
-- School Nature: Faerie Fire, Earth Shock, Crippling Poison, Instant Poison VI, Mind-numbing Poison III, Serpent Sting, Faerie Fire (Feral), Wrath, Lightning, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=5314;
-- Mechanic Snare: Frost Shock
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=5314; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun, Impact, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=5314; -- MECHANIC_STUN
-- Mechanic Interrupt: Earth Shock, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=5314;

-- Sea Spray
-- Poison: Instant Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5462, 0, 4, 4); -- DISPEL_POISON

-- Sea Elemental
-- Mechanic Fear: Intimidating Shout, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=5461;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=5461;
-- Mechanic Stun: Charge Stun, Improved Concussive Shot, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=5461;

-- Land Rager
-- School Nature: Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=5465;

-- Thistleshrub Dew Collector
-- Mechanic Bleed: Rend, Pounce Bleed, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5481;

-- Thistleshrub Rootshaper
-- Mechanic Bleed: Pounce Bleed, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5485;

-- Gnarled Thistleshrub
-- Mechanic Bleed: Pounce Bleed, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5490;

-- Shade of Eranikus (HAS AURAS: Deep Slumber)
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5709;

-- Jammal'an the Prophet
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5710;

-- Rothos
-- School Nature: Instant Poison VI
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=5718;
-- Mechanic Stun: Cheap Shot, Charge Stun, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=5718; -- MECHANIC_STUN

-- Morphaz
-- Poison: Instant Poison IV, Instant Poison V, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5719, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5719;

-- Dreamscythe
-- Poison: Instant Poison V, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5721, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5721;

-- Hazzas
-- Poison: Instant Poison V, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5722, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5722;

-- Deviate Shambler
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5761;

-- Nightmare Ectoplasm
-- Mechanic Root: Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=5763; -- MECHANIC_ROOT

-- Verdan the Everliving
-- Mechanic Root: Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=5775; -- MECHANIC_ROOT
-- Mechanic Stun: Charge Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=5775; -- MECHANIC_STUN
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=5775;

-- Blazing Elemental
-- Poison: Instant Poison IV, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5850, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=5850;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=5850;
-- Mechanic Stun: Hammer of Justice, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=5850;

-- Inferno Elemental
-- Poison: Instant Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5852, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=5852;
-- Mechanic Stun: Hammer of Justice, Charge Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=5852;

-- Tempered War Golem
-- Poison: Instant Poison III, Deadly Poison III, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5853, 0, 4, 4); -- DISPEL_POISON

-- Heavy War Golem
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8) WHERE `entry`=5854;
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=5854; -- MECHANIC_SNARE
-- Poison: Instant Poison III, Crippling Poison, Instant Poison IV, Instant Poison V, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (5854, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Concussive Shot, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=5854;

-- Magma Elemental
-- Mechanic Root: Frostbite, Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=5855;
-- Mechanic Snare: Concussive Shot, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=5855;
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Revenge Stun, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=5855;

-- Aqua Guardian
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6047, 0, 4, 4); -- DISPEL_POISON

-- Irradiated Horror
-- Poison: Scorpid Sting, Crippling Poison, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6220, 0, 4, 4); -- DISPEL_POISON

-- Mechano-Tank
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6225, 0, 4, 4); -- DISPEL_POISON

-- Mechano-Flamewalker
-- Poison: Crippling Poison, Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6226, 0, 4, 4); -- DISPEL_POISON

-- Mechano-Frostwalker
-- Disease: Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6227, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Crippling Poison, Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6227, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=6227;

-- Crowd Pummeler 9-60
-- Poison: Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6229, 0, 4, 4); -- DISPEL_POISON

-- Peacekeeper Security Suit
-- Poison: Crippling Poison, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6230, 0, 4, 4); -- DISPEL_POISON

-- Techbot
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6231, 0, 4, 4); -- DISPEL_POISON

-- Arcane Nullifier X-21
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8) WHERE `entry`=6232;
-- Poison: Crippling Poison, Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6232, 0, 4, 4); -- DISPEL_POISON

-- Mechanized Sentry
-- Poison: Crippling Poison, Instant Poison II, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6233, 0, 4, 4); -- DISPEL_POISON

-- Mechanized Guardian
-- Disease: Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6234, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Crippling Poison, Instant Poison II
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6234, 0, 4, 4); -- DISPEL_POISON

-- Cyclonian
-- Mechanic Stun: Hammer of Justice, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=6239; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6239, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Gelihast
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=6243;

-- Haunting Phantasm
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6427;

-- Azshir the Sleepless
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=6490;
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6490;

-- Rift Spawn
-- School Arcane: Arcane Explosion
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~64) WHERE `entry`=6492;

-- Venomhide Ravasaur
-- Poison: Venomhide Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6508, 0, 4, 4); -- DISPEL_POISON

-- Bloodpetal Lasher
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6509;

-- Bloodpetal Flayer
-- Mechanic Bleed: Rend, Pounce Bleed, Deep Wounds, Deep Wound
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6510;

-- Bloodpetal Thresher
-- Mechanic Bleed: Rend, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6511;

-- Tar Beast
-- Mechanic Bleed: Rupture, Garrote, Deep Wounds, Deep Wound
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6517;

-- Tar Lurker
-- Mechanic Bleed: Rend, Rend, Deep Wounds, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6518;

-- Tar Lord
-- Mechanic Bleed: Deep Wounds, Deep Wound, Deep Wounds, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6519;

-- Scorching Elemental
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=6520;
-- Mechanic Stun: Hammer of Justice, Charge Stun, Hammer of Justice, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=6520;

-- Living Blaze
-- Poison: Crippling Poison, Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (6521, 0, 4, 4); -- DISPEL_POISON

-- Tar Creeper
-- Mechanic Bleed: Rend, Rupture, Garrote, Rend, Deep Wounds, Deep Wound
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=6527;

-- Baelog
-- Mechanic Polymorph: Polymorph
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 65536) WHERE `entry`=6906;

-- Eric "The Swift"
-- Mechanic Stun: Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=6907; -- MECHANIC_STUN

-- Olaf
-- Mechanic Root: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=6908; -- MECHANIC_ROOT
-- Mechanic Stun: Pounce
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=6908; -- MECHANIC_STUN
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=6908;

-- Revelosh
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=6910; -- MECHANIC_SNARE

-- Earthen Rocksmasher
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=7011;
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7011; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7011, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Earthen Sculptor
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7012; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7012, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Obsidian Sentinel
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7023, 0, 4, 4); -- DISPEL_POISON

-- Obsidian Elemental
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7031;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7031;

-- Greater Obsidian Elemental
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=7032;

-- War Reaver
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7039; -- MECHANIC_KNOCKOUT
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7039, 0, 4, 4); -- DISPEL_POISON

-- Black Drake
-- Mechanic Stun: Hammer of Justice, Kidney Shot, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7044; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7044, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Searscale Drake
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7046; -- MECHANIC_STUN

-- Condemned Monk
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=7069;

-- Earthen Guardian
-- Mechanic Fear: Psychic Scream, Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=7076;

-- Vile Ooze
-- School Nature: Earthbind, Earth Shock, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=7093;

-- Warpwood Moss Flayer
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7100;

-- Warpwood Shredder
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7101;

-- Toxic Horror
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7132, 0, 4, 4); -- DISPEL_POISON
-- School Frost: Chilled, Cone of Cold, Frostbolt, Frost Nova
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~16) WHERE `entry`=7132;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7132;

-- Irontree Wanderer
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7138;

-- Irontree Stomper
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=7139;

-- Ancient Stone Keeper
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7206, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7206, 0, 4, 4); -- DISPEL_POISON

-- Ironaya
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7228, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Stun: Cheap Shot, Mace Stun Effect, Hammer of Justice, Charge Stun, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7228;

-- Chief Ukorz Sandscalp
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7267, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=7267;

-- Witch Doctor Zum'rah
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7271, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=7271;
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~256) WHERE `entry`=7271;
-- Mechanic Stun: Stun, Cheap Shot, Hammer of Justice, Charge Stun, Kidney Shot, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7271;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~33554432) WHERE `entry`=7271;

-- Theka the Martyr (HAS AURAS: Theka Transform)
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=7272;
-- Mechanic Snare: Chilled, Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=7272;
-- Mechanic Stun: Cheap Shot, Big Iron Bomb, Hammer of Justice, Charge Stun, Kidney Shot, Hi-Explosive Bomb, Concussion Blow, Intercept Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7272;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~33554432) WHERE `entry`=7272;

-- Gahz'rilla
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=7273; -- MECHANIC_ROOT
-- Mechanic Stun: Hammer of Justice, Charge Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7273; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=7273;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7273, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Shadowpriest Sezz'ziz
-- Mechanic Stun: Big Iron Bomb, Hammer of Justice, Charge Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7275;
-- Mechanic Knockout: Gouge, Repentance
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=7275;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~33554432) WHERE `entry`=7275;

-- Zul'Farrak Zombie
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=7286;

-- Galgann Firehammer
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7291; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7291, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Earthen Custodian
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7309, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Ragglesnout
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=7354;

-- Tuten'kash
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7355; -- MECHANIC_SNARE

-- Plaguemaw the Rotting
-- Mechanic Root: Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=7356; -- MECHANIC_ROOT
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7356; -- MECHANIC_SNARE

-- Mordresh Fire Eye
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=7357; -- MECHANIC_BLEED

-- Amnennar the Coldbringer
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7358; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Starfire Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7358; -- MECHANIC_STUN
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7358, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Earthen Stonebreaker
-- Mechanic Fear: Howl of Terror, Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=7396;
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7396; -- MECHANIC_SNARE
-- Mechanic Knockout: Repentance
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7396; -- MECHANIC_KNOCKOUT
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7396, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Earthen Stonecarver
-- Mechanic Fear: Howl of Terror, Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=7397;
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=7397; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7397, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Sergeant Bly
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=7604;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=7604;
-- Mechanic Stun: Charge Stun, Kidney Shot, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7604;

-- Grol the Destroyer
-- School Fire: Flame Shock, Fiery Weapon
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=7665;
-- School Frost: Frost Shock
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 16) WHERE `entry`=7665;
-- Mechanic Stun: Kidney Shot, Revenge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7665; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7665; -- MECHANIC_KNOCKOUT
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7665, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Archmage Allistarj
-- School Fire: Flame Shock, Fiery Weapon
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=7666;
-- School Frost: Frost Shock
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 16) WHERE `entry`=7666;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7666; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7666; -- MECHANIC_KNOCKOUT
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7666, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Lady Sevine
-- School Fire: Flame Shock, Fiery Weapon
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=7667;
-- School Frost: Frost Shock
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 16) WHERE `entry`=7667;
-- Mechanic Stun: Charge Stun, Kidney Shot, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7667; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7667; -- MECHANIC_KNOCKOUT
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7667, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Ilifar
-- School Nature: Instant Poison VI
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~8) WHERE `entry`=7734;
-- Mechanic Stun: Kidney Shot, Revenge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7734; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=7734; -- MECHANIC_KNOCKOUT
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`Entry`, `SetId`, `Type`, `Value`) VALUES (7734, 0, 4, 4); -- DISPEL_POISON

-- Felcular
-- School Nature: Instant Poison VI
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=7735;
-- Mechanic Stun: Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=7735; -- MECHANIC_STUN

-- Hydromancer Velratha
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=7795;
-- Mechanic Stun: Cheap Shot, Kidney Shot, Intercept Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7795;
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4096) WHERE `entry`=7795;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~33554432) WHERE `entry`=7795;

-- Nekrum Gutchewer (HAS AURAS: Theka Transform)
-- Mechanic Stun: Cheap Shot, Big Iron Bomb, Hammer of Justice, Charge Stun, Concussion Blow, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=7796;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=7796;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~33554432) WHERE `entry`=7796;

-- Ruuzlu
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7797, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Mekgineer Thermaplugg
-- Poison: Instant Poison II
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7800, 0, 4, 4); -- DISPEL_POISON

-- Teremus the Devourer
-- School Fire: Flame Shock, Fiery Weapon
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=7846;
-- School Frost: Frost Shock
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 16) WHERE `entry`=7846;
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=7846; -- MECHANIC_BLEED
-- Poison: Instant Poison VI, Deadly Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7846, 0, 4, 4); -- DISPEL_POISON

-- Mobile Alert System
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (7849, 0, 4, 4); -- DISPEL_POISON

-- Deathguard Elite
-- Mechanic Fear: Aura of Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=7980;

-- Dark Iron Land Mine
-- Poison: Crippling Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8035, 0, 4, 4); -- DISPEL_POISON

-- Sul'lithuz Sandcrawler
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8095; -- MECHANIC_ROOT
-- Mechanic Snare: Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8095; -- MECHANIC_SNARE
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=8095;
-- Mechanic Knockout: Gouge, Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=8095; -- MECHANIC_KNOCKOUT
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8095, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Sul'lithuz Abomination
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8120; -- MECHANIC_ROOT
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8120; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8120, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Antu'sul
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8127, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Servant of Antu'sul
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8156; -- MECHANIC_ROOT
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8156; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8156, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Occulus
-- School Arcane: Counterspell, Arcane Shot
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=8196;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=8196;
-- Mechanic Snare: Earthbind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8196; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=8196; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=8196;

-- Chronalis
-- School Arcane: Arcane Shot, Hunter's Mark
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=8197;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=8197;
-- Mechanic Snare: Earthbind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8197; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=8197; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=8197;

-- Tick
-- School Arcane: Arcane Shot
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=8198;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=8198;
-- Mechanic Snare: Earthbind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8198; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=8198; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=8198;

-- Scald
-- Poison: Instant Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8281, 0, 4, 4); -- DISPEL_POISON

-- Atal'ai Deathwalker's Spirit
-- School Physical: Auto Shot, Cleave, Whirlwind, Shoot, Thunder Clap, Whirlwind, Demoralizing Roar, Swipe, Claw, Maul, Swipe, Sinister Strike, Demoralizing Shout, Cleave, Sweeping Strikes, Multi-Shot, Multi-Shot, Cleave, Blade Flurry
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 1) WHERE `entry`=8317;

-- Atal'ai Slave
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=8318;
-- Curse: Curse of Agony
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8318, 0, 4, 2); -- DISPEL_CURSE

-- Deep Lurker
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=8384;

-- Avatar of Hakkar
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=8443;

-- Clunk
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=8447;

-- Blighted Surge
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8519, 0, 4, 4); -- DISPEL_POISON

-- Scourge Champion
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=8529;

-- Death Singer
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=8542;

-- Glutton
-- Mechanic Root: Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8567; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8567; -- MECHANIC_SNARE
-- Mechanic Stun: Kidney Shot, Cheap Shot, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=8567; -- MECHANIC_STUN

-- Infernal Servant
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8616, 0, 4, 4); -- DISPEL_POISON

-- Dreadlord
-- Poison: Instant Poison VI, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8716, 0, 4, 4); -- DISPEL_POISON

-- Battle Chicken
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 256) WHERE `entry`=8836;
-- Mechanic Sleep: Sleep
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 512) WHERE `entry`=8836; -- MECHANIC_SLEEP
-- Mechanic Knockout: Blast Wave
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=8836; -- MECHANIC_KNOCKOUT
-- Mechanic Polymorph: Hex
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 65536) WHERE `entry`=8836;
-- Mod Stat: Plague Cloud
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8836, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE see below too
-- Disease: Plague Cloud
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8836, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Poisonous Blood, Toxic Volley, Poison Bolt Volley, Poison Aura
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8836, 0, 4, 4); -- DISPEL_POISON
-- Mod Stat: Cripple
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8836, 0, 1, 29); -- SPELL_AURA_MOD_STAT
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8836, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Muck Splash
-- Poison: Instant Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8837, 0, 4, 4); -- DISPEL_POISON

-- Warbringer Construct
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=8905;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8905; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Concussive Shot, Crippling Poison, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8905; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8905, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Crippling Poison, Instant Poison IV, Instant Poison V, Deadly Poison III, Poison Cloud, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8905, 0, 4, 4); -- DISPEL_POISON

-- Ragereaver Golem
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=8906;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8906; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Crippling Poison, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8906; -- MECHANIC_SNARE
-- Poison: Crippling Poison, Instant Poison IV, Instant Poison V, Instant Poison VI, Deadly Poison III, Poison Cloud
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8906, 0, 4, 4); -- DISPEL_POISON

-- Wrath Hammer Construct
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8907; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Crippling Poison, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8907; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=8907; -- MECHANIC_KNOCKOUT
-- Mechanic Horror: Death Coil
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8388608) WHERE `entry`=8907;
-- Poison: Crippling Poison, Instant Poison IV, Instant Poison V, Instant Poison VI, Deadly Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8907, 0, 4, 4); -- DISPEL_POISON

-- Molten War Golem
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8) WHERE `entry`=8908;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=8908; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=8908; -- MECHANIC_SNARE
-- Poison: Instant Poison IV, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8908, 0, 4, 4); -- DISPEL_POISON

-- Fireguard
-- Poison: Instant Poison IV, Instant Poison V, Instant Poison VI, Deadly Poison III, Poison Cloud, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8909, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Root: Frostbite, Improved Hamstring
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=8909;
-- Mechanic Snare: Chilled, Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=8909;
-- Mechanic Knockout: Gouge, Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=8909;

-- Blazing Fireguard
-- Poison: Crippling Poison, Crippling Poison, Instant Poison IV, Instant Poison V, Deadly Poison III, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8910, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Concussive Shot, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=8910;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=8910;


-- Fireguard Destroyer
-- Poison: Crippling Poison, Crippling Poison, Instant Poison IV, Instant Poison V, Instant Poison VI, Deadly Poison III, Poison Cloud, Serpent Sting, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (8911, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=8911;

-- Bloodhound Mastiff
-- Mechanic Fear: Intimidating Shout, Howl of Terror
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=8922;

-- Panzor the Invincible
-- Mechanic Stun: Cheap Shot, Kidney Shot, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=8923;

-- Golem Lord Argelmach
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=8983;

-- Bael'Gar
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9016; -- MECHANIC_BLEED
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=9016;

-- Lord Incendius
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=9017;
-- Poison: Instant Poison IV, Instant Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9017, 0, 4, 4); -- DISPEL_POISON

-- High Interrogator Gerstahn
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~256) WHERE `entry`=9018;
-- Mechanic Stun: Big Iron Bomb, Charge Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9018;

-- Pyromancer Loregrain
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=9024;
-- Mechanic Snare: Crippling Poison, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9024;
-- Mechanic Stun: Cheap Shot, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9024;

-- Lord Roccor
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=9025;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=9025;
-- Mechanic Snare: Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9025;
-- Mechanic Bleed: Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=9025;

-- Overmaster Pyron
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=9026;
-- Mechanic Snare: Crippling Poison, Earthbind, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=9026; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Hammer of Justice, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=9026; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9026, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Crippling Poison, Instant Poison V, Instant Poison VI, Deadly Poison III, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9026, 0, 4, 4); -- DISPEL_POISON

-- Ok'thor the Breaker
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=9030;

-- Hate'rel
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9034; -- MECHANIC_BLEED
-- Poison: Instant Poison IV, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9034, 0, 4, 4); -- DISPEL_POISON
-- Curse: Curse of Agony
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9034, 0, 4, 2); -- DISPEL_CURSE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9034;

-- Anger'rel
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9035; -- MECHANIC_BLEED
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9035, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison IV, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9035, 0, 4, 4); -- DISPEL_POISON
-- Curse: Curse of Agony
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9035, 0, 4, 2); -- DISPEL_CURSE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9035;

-- Vile'rel
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9036; -- MECHANIC_BLEED
-- Poison: Instant Poison IV, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9036, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9036;

-- Gloom'rel (HAS AURAS: Recklessness)
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9037; -- MECHANIC_BLEED
-- Poison: Instant Poison IV, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9037, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9037;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9037;

-- Seeth'rel
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9038; -- MECHANIC_BLEED
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9038, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison IV, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9038, 0, 4, 4); -- DISPEL_POISON
-- Curse: Curse of Agony
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9038, 0, 4, 2); -- DISPEL_CURSE
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9038;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9038;

-- Doom'rel (HAS AURAS: Banish)
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9039; -- MECHANIC_BLEED
-- Poison: Instant Poison IV
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9039, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Earthbind, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9039;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9039;

-- Dope'rel
-- Mechanic Bleed: Rend, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9040; -- MECHANIC_BLEED
-- Poison: Instant Poison IV, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9040, 0, 4, 4); -- DISPEL_POISON
-- Curse: Curse of Agony
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9040, 0, 4, 2); -- DISPEL_CURSE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9040;

-- Warder Stilgiss
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~256) WHERE `entry`=9041;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9041;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Improved Concussive Shot, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9041;

-- Verek
-- Mechanic Root: Improved Hamstring
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=9042;
-- Mechanic Snare: Crippling Poison, Chilled, Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9042;
-- Mechanic Stun: Cheap Shot, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9042;

-- Fineous Darkvire
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9056, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~256) WHERE `entry`=9056;
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Hammer of Justice, Revenge Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9056;

-- Ambassador Flamelash
-- School Fire: Fire Blast, Immolate
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=9156;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9156; -- MECHANIC_BLEED
-- Poison: Instant Poison V, Instant Poison VI, Serpent Sting, Numbing Pain
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9156, 0, 4, 4); -- DISPEL_POISON

-- Burning Spirit
-- Poison: Crippling Poison, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9178, 0, 4, 4); -- DISPEL_POISON

-- Highlord Omokk
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9196, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=9196;
-- Mechanic Stun: Cheap Shot, Iron Grenade, Charge Stun, Hammer of Justice, Impact, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9196;

-- Spirestone Battle Lord
-- Mechanic Stun: Charge Stun, Hammer of Justice, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9218;

-- Spirestone Butcher
-- Mechanic Stun: Cheap Shot, Charge Stun, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9219;

-- Shadow Hunter Vosh'gajin
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=9236;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Impact, Starfire Stun, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9236;

-- Houndmaster Grebmar
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=9319;
-- Mechanic Snare: Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9319;
-- Mechanic Stun: Charge Stun, Kidney Shot, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9319;

-- Blazerunner
-- Poison: Crippling Poison, Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9376, 0, 4, 4); -- DISPEL_POISON

-- Ground Pounder
-- Poison: Crippling Poison, Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9396, 0, 4, 4); -- DISPEL_POISON

-- Spawn of Bael'Gar
-- School Fire: Fire Blast
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=9436;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9436; -- MECHANIC_BLEED
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9436, 0, 4, 4); -- DISPEL_POISON

-- Aquementas
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=9453;

-- Watchman Doomgrip
-- Mechanic Polymorph: Polymorph
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 65536) WHERE `entry`=9476;

-- Phalanx
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9502, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison IV, Instant Poison VI, Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9502, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Snare: Chilled, Hamstring
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9502;

-- Hurley Blackbreath
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=9537;
-- Mechanic Snare: Chilled, Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9537;
-- Mechanic Stun: Cheap Shot, Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9537;

-- Ribbly Screwspigot
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=9543;
-- Mechanic Snare: Chilled, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=9543;
-- Mechanic Stun: Cheap Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9543;

-- Overlord Wyrmthalak
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9568, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=9568;
-- Mechanic Stun: Charge Stun, Kidney Shot, Hammer of Justice, Revenge Stun, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9568;

-- Quartermaster Zigris
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=9736;
-- Mechanic Fear: Intimidating Shout, Fear, Howl of Terror, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=9736;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Impact, Revenge Stun, Concussion Blow, Starfire Stun, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=9736;

-- Pyroguard Emberseer
-- Poison: Instant Poison V, Instant Poison VI, Serpent Sting, Poison
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (9816, 0, 4, 4); -- DISPEL_POISON

-- Magmus
-- School Fire: Fire Blast
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=9938;
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=9938; -- MECHANIC_BLEED

-- Theodore Mont Claire
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=10057;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=10057;

-- Vault Warder
-- Mechanic Fear: Howl of Terror, Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=10120;
-- Mechanic Root: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=10120; -- MECHANIC_ROOT
-- Mechanic Banish: Banish
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 131072) WHERE `entry`=10120;
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=10120;

-- Onyxia
-- Mod Stat: Curse of Timmy, Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10184, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Halycon
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10220, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Stun: Cheap Shot, Charge Stun, Hammer of Justice, Revenge Stun, Concussion Blow, Starfire Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10220;

-- Solakar Flamewreath
-- Mechanic Stun: Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10264;

-- Gizrul the Slavener
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Revenge Stun, Concussion Blow, Starfire Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10268;

-- Gyth
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10339, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- General Drakkisath
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=10363;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=10363;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10363, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Rage Talon Dragon Guard
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=10366;
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=10366;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=10366; -- MECHANIC_ROOT
-- Mechanic Snare: Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=10366; -- MECHANIC_SNARE
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=10366;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10366, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Rage Talon Captain
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=10371;
-- Mechanic Fear: Intimidating Shout, Howl of Terror
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=10371;
-- Mechanic Snare: Earthbind, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=10371; -- MECHANIC_SNARE
-- Mechanic Freeze: Freezing Trap Effect, Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=10371;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10371, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Rage Talon Fire Tongue
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=10372;
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=10372;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=10372; -- MECHANIC_ROOT
-- Mechanic Sleep: Hibernate
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 512) WHERE `entry`=10372; -- MECHANIC_SLEEP
-- Mechanic Snare: Earthbind, Concussive Shot, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=10372; -- MECHANIC_SNARE
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=10372;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10372, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Skeletal Guardian
-- Mechanic Disoriented: Blind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=10390;

-- Skeletal Berserker
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=10391;

-- Skul
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=10393;

-- Black Guard Sentry
-- Mechanic Polymorph: Discombobulate
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~65536) WHERE `entry`=10394;

-- The Beast
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10430, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Vectus
-- Mechanic Stun: Hammer of Justice, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10432;

-- Magistrate Barthilas
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=10435;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10435;

-- Maleki the Pallid
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10438, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- SPELL_AURA_MOD_CASTING_SPEED in classic!

-- Baron Rivendare
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10440, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Chromatic Whelp
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=10442; -- MECHANIC_ROOT
-- Mechanic Snare: Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=10442; -- MECHANIC_SNARE

-- Chromatic Dragonspawn
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=10447; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=10447; -- MECHANIC_SNARE

-- Risen Construct
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=10488;

-- Risen Guard
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=10489;

-- Lady Illucia Barov
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=10502;
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10502, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Jandice Barov (HAS AURAS: Banish)
-- Mechanic Stun: Charge Stun, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10503;

-- Lord Alexei Barov
-- Mechanic Stun: Charge Stun, Hammer of Justice, Revenge Stun, Starfire Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10504;

-- Instructor Malicia
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=10505;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Starfire Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10505;

-- Kirtonos the Herald
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10506, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- The Ravenian
-- Mechanic Stun: Cheap Shot, Charge Stun, Hammer of Justice, Starfire Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10507;

-- Ras Frostwhisper
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Starfire Stun, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10508;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=10508;

-- Jed Runewatcher
-- Mechanic Stun: Cheap Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10509;

-- The Unforgiven
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10516;

-- Hearthsinger Forresten
-- Mechanic Snare: Chilled, Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=10558;
-- Mechanic Stun: Cheap Shot, Charge Stun, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10558;

-- Urok Doomhowl
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10584;

-- Mother Smolderweb
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=10596;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Pounce, Hammer of Justice, Impact, Revenge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10596;

-- Scalding Elemental
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10756, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=10756;
-- Mechanic Fear: Intimidating Shout, Psychic Scream, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=10756;
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10756;

-- Boiling Elemental
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10757, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=10757;
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10757;

-- Timmy the Cruel
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=10808;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Revenge Stun, Concussion Blow, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10808;

-- Archivist Galford
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=10811;
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10811, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Grand Crusader Dathrohan
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10812, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Balnazzar
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10813, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10813, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Wandering Skeleton
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=10816;

-- Lorekeeper Polkelt
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10901;

-- Darrowshire Defender
-- Mechanic Bleed: Rupture
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=10948;

-- Summoned Water Elemental
-- Poison: Instant Poison V, Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (10955, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=10955;
-- Mechanic Stun: Cheap Shot, Charge Stun, Revenge Stun, War Stomp, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10955;

-- Fallen Hero
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=10996;

-- Cannon Master Willey
-- Mechanic Snare: Crippling Poison, Hallow's End Fright
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=10997;
-- Mechanic Stun: Cheap Shot, Charge Stun, Revenge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=10997;

-- Malor the Zealous
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Intercept Stun, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11032;

-- Crimson Rifleman
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=11054; -- MECHANIC_SNARE
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11054, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Fras Siabi
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=11058;
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=11058; -- MECHANIC_SNARE

-- Cauldron Lord Soulwrath
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11078;

-- Stratholme Courier
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=11082; -- MECHANIC_SNARE
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=11082;

-- Spirit of Trey Lightforge
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=11141;
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11141;

-- Undead Postman
-- Mechanic Snare: Chilled, Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=11142;
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Revenge Stun, Concussion Blow, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11142;

-- Doctor Theolen Krastinov
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11261, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Molten Elemental
-- Mechanic Root: Boar Charge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=11321;
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11321;

-- Zealot Lor'Khan
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11347, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Zealot Zath
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11348, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Gurubashi Berserker
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=11352;
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11352, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Gurubashi Berserker
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11352;

-- Gurubashi Champion
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=11356;
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=11356;
-- Mechanic Fear: Intimidating Shout, Fear, Psychic Scream, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=11356;
-- Mechanic Root: Frostbite, Entrapment, Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=11356;
-- Mechanic Snare: Concussive Shot, Piercing Howl, Chilled, Aftermath
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=11356;
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4096) WHERE `entry`=11356;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=11356;
-- Mechanic Polymorph: Polymorph, Polymorph, Polymorph: Turtle, Polymorph: Pig
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~65536) WHERE `entry`=11356;

-- Jin'do the Hexxer
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=11380;
-- Taunt: Taunt, Growl
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11380, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11380, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11380, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Bloodlord Mandokir
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11382, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Petrified Treant
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11458;

-- Ironbark Protector
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11459;

-- Warpwood Guardian
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11461;

-- Warpwood Treant
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11462;

-- Warpwood Tangler
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11464;

-- Warpwood Stomper
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11465;

-- Eldreth Seether
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11469; -- MECHANIC_BLEED

-- Eldreth Sorcerer
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11470; -- MECHANIC_BLEED

-- Eldreth Spirit
-- Mechanic Bleed: Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11472; -- MECHANIC_BLEED

-- Eldreth Spectre
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11473; -- MECHANIC_BLEED

-- Eldreth Phantasm
-- Mechanic Bleed: Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11475; -- MECHANIC_BLEED

-- Skeletal Highborne
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11476;

-- Arcane Aberration
-- Poison: Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11480, 0, 4, 4); -- DISPEL_POISON

-- Mana Remnant (HAS AURAS: Blink)
-- Poison: Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11483, 0, 4, 4); -- DISPEL_POISON

-- Magister Kalendris
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=11487;

-- Tendris Warpwood
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11489;

-- Zevrim Thornhoof
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=11490;

-- Alzzin the Wildshaper
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11492;

-- Ragnaros (HAS AURAS: Ragnaros Submerge Effect)
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11502, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Disease: Gift of Arthas, Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11502, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Poison Cloud, Corrosive Poison, Serpent Sting, Numbing Pain, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11502, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=11502; -- hugh change

-- Rattlegore
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11622; -- MECHANIC_BLEED
-- Mechanic Stun: Cheap Shot, Kidney Shot, Hammer of Justice, Revenge Stun, Concussion Blow, Starfire Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11622;

-- Molten Giant
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11658, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11658;

-- Molten Destroyer
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11659, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Flamewaker
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11661;

-- Flamewaker Priest
-- Mod Cast Speed: Curse of Tongues, Fang of the Crystal Spider
DELETE FROM `creature_immunities` WHERE `entry` = 11662 AND `Type` = 1 AND `Value` = 216; -- SPELL_AURA_HASTE_SPELLS

-- Flamewaker Healer
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11663, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Stun: Cheap Shot, Kidney Shot, Bash, Hammer of Justice, Revenge Stun, Concussion Blow, Blackout, Intercept Stun, War Stomp, Intercept Stun, Earthshaker
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11663;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=11663;
-- Mechanic Polymorph: Polymorph, Polymorph, Polymorph, Polymorph, Polymorph: Turtle, Polymorph: Pig
-- IMMUNE Polymorph: Polymorph, Polymorph, Polymorph: Pig
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~65536) WHERE `entry`=11663;

-- Flamewaker Elite (HAS AURAS: Separation Anxiety)
-- Mechanic Stun: Charge Stun, Kidney Shot, Bash, Hammer of Justice, Revenge Stun, Blackout, Intercept Stun, War Stomp, Intercept Stun, Intercept Stun, Earthshaker
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=11664; -- MECHANIC_STUN
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11664, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Lava Annihilator
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11665, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Serpent Sting, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11665, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11665;

-- Firewalker
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11666, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Disease: Gift of Arthas
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11666, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11666, 0, 4, 4); -- DISPEL_POISON

-- Flameguard
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11667, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Numbing Pain, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11667, 0, 4, 4); -- DISPEL_POISON

-- Firelord
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11668, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Disease: Gift of Arthas
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11668, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11668, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11668;

-- Flame Imp
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=11669;
-- Mechanic Snare: Earthbind, Concussive Shot, Chilled, Chilled, Piercing Howl, Chilled, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=11669;
-- Mechanic Stun: Cheap Shot, Iron Grenade, Big Iron Bomb, Mace Stun Effect, Charge Stun, Hammer of Justice, Impact, Revenge Stun, Concussion Blow, War Stomp, Intercept Stun, Earthshaker, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11669;
-- Mechanic Bleed: Garrote, Garrote, Rend, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=11669;

-- Core Hound
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11671, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Ancient Core Hound
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11673, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Ambershard Crusher
-- School Nature: Instant Poison IV, Instant Poison V, Deadly Poison III, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=11781;
-- Poison: Instant Poison IV, Instant Poison V, Deadly Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11781, 0, 4, 4); -- DISPEL_POISON

-- Ambershard Destroyer
-- School Nature: Wrath, Earth Shock, Instant Poison IV, Instant Poison V, Deadly Poison III, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=11782;
-- Poison: Instant Poison IV, Instant Poison V, Deadly Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11782, 0, 4, 4); -- DISPEL_POISON

-- Ambereye Basilisk
-- School Nature: Earth Shock, Instant Poison IV, Instant Poison V, Deadly Poison III, Serpent Sting, Faerie Fire (Feral), Lightning Shield, Lightning Shield, Keeper's Sting
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=11785;
-- Mechanic Bleed: Rend, Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11785; -- MECHANIC_BLEED

-- Ambereye Reaver
-- School Nature: Wrath, Lightning Bolt, Earth Shock, Instant Poison IV, Instant Poison V, Deadly Poison III, Chain Lightning, Faerie Fire (Feral), Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=11786;
-- Mechanic Bleed: Rend, Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=11786; -- MECHANIC_BLEED

-- Keeper Remulos
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=11832; -- MECHANIC_STUN

-- Nathanos Blightcaller
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11878, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Blighthound
-- Mechanic Fear: Fear, Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=11885;

-- Captain Galvangar
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11947, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Stun: Mace Stun Effect, Charge Stun, Revenge Stun, Intercept Stun, Intercept Stun, Earthshaker
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11947;

-- Vanndar Stormpike
-- Mod Stat: Scorpid Sting, Blessing of Kings
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11948, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11948, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Captain Balinda Stonehearth
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~256) WHERE `entry`=11949;
-- Mechanic Stun: Cheap Shot, Mace Stun Effect, Charge Stun, Concussion Blow, Intercept Stun, Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=11949;

-- Flamegor
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11981, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Magmadar
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11982, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Firemaw
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=11983;
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (11983, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Baron Geddon
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12056; -- MECHANIC_ROOT

-- Garr
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12057, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison V, Instant Poison VI, Corrosive Poison, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12057, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Bleed: Rupture, Garrote, Rend, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12057;

-- Lava Elemental
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12076, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Curse of Tongues
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12076, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12076, 0, 4, 4); -- DISPEL_POISON

-- Sulfuron Harbinger
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12098, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Curse of Tongues, Fang of the Crystal Spider
DELETE FROM `creature_immunities` WHERE `entry` = 12098 AND `Type` = 1 AND `Value` = 216; -- SPELL_AURA_HASTE_SPELLS

-- Firesworn
-- Poison: Instant Poison V, Instant Poison VI, Serpent Sting, Serpent Sting, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12099, 0, 4, 4); -- DISPEL_POISON

-- Lava Reaver
-- Mod Stat: Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12100, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Disease: Gift of Arthas
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12100, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Numbing Pain, Poison, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12100, 0, 4, 4); -- DISPEL_POISON

-- Lava Surger
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12101, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Corrosive Poison, Serpent Sting, Serpent Sting, Numbing Pain, Poison, Serpent Sting, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12101, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12101;

-- Flamewaker Protector
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12119;
-- Mechanic Bleed: Garrote, Rupture, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12119;

-- Onyxian Warder
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12129, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12129;
-- Mechanic Stun: Cheap Shot, Iron Grenade, Mace Stun Effect, Charge Stun, Kidney Shot, Hammer of Justice, Impact, Revenge Stun, Concussion Blow, Blackout, Intercept Stun, War Stomp, Intercept Stun, Intercept Stun, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=12129;

-- Son of Flame
-- Poison: Blind, Instant Poison V, Instant Poison VI, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12143, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Disoriented: Scatter Shot
-- IMMUNE Disoriented: Blind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=12143;
-- Mechanic Fear: Intimidating Shout, Fear, Psychic Scream, Psychic Scream, Howl of Terror, Intimidating Shout
-- IMMUNE Fear: Howl of Terror
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=12143;

-- Princess Theradras
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12201, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Landslide
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12203; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12203, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Primordial Behemoth
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12206; -- MECHANIC_ROOT
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12206; -- MECHANIC_SNARE
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=12206;
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12206, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Barbed Lasher
-- Mechanic Bleed: Rend, Garrote, Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12219;

-- Constrictor Vine
-- Mechanic Bleed: Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12220;

-- Cavern Lurker
-- Mechanic Bleed: Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12223;

-- Cavern Shambler
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12224;

-- Celebras the Cursed
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12225, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Lord Vyletongue (HAS AURAS: Blink)
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12236; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12236, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Razorlash
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12258; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12258, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Bleed: Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12258;

-- Gehennas
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12259;

-- Shazzrah
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12264;

-- Lava Spawn
-- Mod Stat: Vindication, Curse of Timmy
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12265, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Poison: Instant Poison V, Instant Poison VI, Deadly Poison IV, Serpent Sting, Poison, Deadly Poison V
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12265, 0, 4, 4); -- DISPEL_POISON

-- Demetria
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=12339; -- MECHANIC_BLEED

-- Lord Kazzak
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12397, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Talon Dragonspawn
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=12422;
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4096) WHERE `entry`=12422;
-- Mechanic Knockout: Gouge, Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=12422;

-- Razorgore the Untamed
-- Mechanic Bleed: Rupture, Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=12435;

-- Blackwing Spellbinder (HAS AURAS: Spell Immunity)
-- Mechanic Disoriented: Scatter Shot
-- IMMUNE Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=12457;
-- Mechanic Snare: Piercing Howl
-- IMMUNE Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=12457;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Revenge Stun, Concussion Blow, Intercept Stun, War Stomp, Intercept Stun
-- IMMUNE Stun: Iron Grenade, Hammer of Justice, Hammer of Justice, Thorium Grenade
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=12457;
-- Mechanic Knockout: Gouge, Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=12457;

-- Blackwing Taskmaster
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=12458;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=12458;
-- Mechanic Snare: Earthbind, Concussive Shot, Chilled, Piercing Howl, Chilled, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=12458;
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Revenge Stun, Concussion Blow, Blackout, Intercept Stun, War Stomp, Intercept Stun, Earthshaker
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=12458;

-- Blackwing Warlock
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=12459;
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12459, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12459;

-- Death Talon Wyrmguard
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=12460;
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12460, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Talon Overseer
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=12461;
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12461, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Talon Flamescale
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12463, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Talon Wyrmkin
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=12465;
-- Mechanic Fear: Intimidating Shout, Fear, Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=12465;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=12465;

-- Death Talon Captain (HAS AURAS: Commanding Shout)
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12467, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Talon Hatcher
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12468, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=12468;

-- Arcanite Dragonling
-- Disease: Brood Affliction: Red
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12473, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Poison Aura
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12473, 0, 4, 4); -- DISPEL_POISON

-- Emeraldon Boughguard
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12474; -- MECHANIC_SNARE

-- Emeraldon Tree Warder (HAS AURAS: Faerie Fire)
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12475; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12475; -- MECHANIC_SNARE

-- Emeraldon Oracle
-- Mechanic Snare: Crippling Poison, Chilled, Aftermath
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12476; -- MECHANIC_SNARE

-- Verdantine Boughguard
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12477; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12477; -- MECHANIC_SNARE

-- Verdantine Oracle
-- Mechanic Root: Entangling Roots, Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12478; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12478; -- MECHANIC_SNARE

-- Verdantine Tree Warder (HAS AURAS: Faerie Fire)
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12479; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12479; -- MECHANIC_SNARE

-- Dreamtracker
-- School Nature: Faerie Fire, Instant Poison VI, Serpent Sting, Faerie Fire (Feral), Lightning Strike, Serpent Sting
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=12496;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12496; -- MECHANIC_ROOT
-- Mechanic Snare: Frost Shock
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12496; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Impact, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12496; -- MECHANIC_STUN

-- Dreamstalker
-- School Nature: Faerie Fire, Wrath, Chain Lightning, Crippling Poison, Instant Poison V, Instant Poison VI, Mind-numbing Poison III, Serpent Sting, Lightning Bolt, Faerie Fire (Feral), Wrath, Lightning Strike, Acid Blast, Deadly Poison V, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=12498;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12498; -- MECHANIC_ROOT
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12498; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun, Kidney Shot, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12498; -- MECHANIC_STUN

-- Grethok the Controller
-- Mechanic Root: Frostbite, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=12557; -- MECHANIC_ROOT
-- Mechanic Snare: Crippling Poison, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=12557; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Bash, Impact, Crystal Charge, Blackout, Intercept Stun, Intercept Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=12557; -- MECHANIC_STUN
-- Mechanic Polymorph: Polymorph
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 65536) WHERE `entry`=12557;
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=12557;
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12557, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Tideress
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12759, 0, 4, 4); -- DISPEL_POISON

-- Baron Aquanis
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (12876, 0, 4, 4); -- DISPEL_POISON

-- Lorgus Jett
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1) WHERE `entry`=12902;
-- Mechanic Snare: Slow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=12902;

-- Burning Blade Seer
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=13019;

-- Vaelastrasz the Corrupt
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13020, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Warpwood Crusher
-- Mechanic Stun: Charge Stun, Concussion Blow
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=13021; -- MECHANIC_STUN
-- Disease: Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13021, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13021, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Bleed: Rupture, Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13021;

-- Whip Lasher
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13022;

-- Deeprot Stomper
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13141;

-- Deeprot Tangler
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13142;

-- Lieutenant Grummus
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=13145;

-- Phase Lasher
-- Poison: Crippling Poison, Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13196, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13196;

-- Fel Lash
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13197, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13197;

-- Jekyll Flandring
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=13219;

-- Lokholar the Ice Lord
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13256, 0, 4, 4); -- DISPEL_POISON

-- Hydrospawn
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13280, 0, 4, 4); -- DISPEL_POISON

-- Noxxion
-- Mechanic Stun: Cheap Shot, Charge Stun, Bash, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=13282; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13282, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Bleed: Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13282;

-- Death Lash
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13285, 0, 4, 4); -- DISPEL_POISON
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13285;

-- Rotgrip
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=13596; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13596, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Tinkerer Gizlock
-- Mechanic Stun: Cheap Shot, Hammer of Justice, Charge Stun, Bash, Intimidation
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=13601; -- MECHANIC_STUN
-- Mod Stat: Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (13601, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Noxxious Scion
-- School Frost: Frost Nova, Cone of Cold, Chilled
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~16) WHERE `entry`=13696;

-- Veng
-- Mechanic Bleed: Garrote
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=13738; -- MECHANIC_BLEED

-- Maraudos
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=13739; -- MECHANIC_BLEED

-- Magra
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=13740; -- MECHANIC_BLEED

-- Gelk
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=13741; -- MECHANIC_BLEED

-- Kolk
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds, Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=13742; -- MECHANIC_BLEED

-- Corrupt Force of Nature
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=13743;

-- Corporal Teeka Bloodsnarl
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=13776;

-- Voggah Deathgrip
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=13817;

-- Warmaster Laggrond
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=13840;

-- Alterac Yeti
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=13959; -- MECHANIC_ROOT
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=13959; -- MECHANIC_STUN
-- Mechanic Polymorph: Polymorph: Pig
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 65536) WHERE `entry`=13959;

-- Blackwing Technician
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=13996;

-- Chromaggus
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14020, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Enraged Felguard
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=14101;
-- Mechanic Stun: Kidney Shot, Hammer of Justice, Revenge Stun, Concussion Blow, Blackout, Intercept Stun
-- IMMUNE Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14101;

-- Massive Geyser
-- School Physical: Multi-Shot, Multi-Shot
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 1) WHERE `entry`=14122;
-- School Nature: Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=14122;
-- School Shadow: Shadowguard, Shadowguard
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 32) WHERE `entry`=14122;

-- Green Drakonid
-- Mechanic Polymorph: Polymorph
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~65536) WHERE `entry`=14262;

-- Chromatic Drakonid
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14302, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Stun: Cheap Shot, Kidney Shot, Bash, Hammer of Justice, Revenge Stun, Concussion Blow, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14302;
-- Mechanic Bleed: Garrote, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=14302;

-- Petrified Guardian
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=14303;

-- Ferra
-- Mechanic Fear: Scare Beast
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=14308;

-- Cho'Rush the Observer
-- Mechanic Stun: Kidney Shot, Concussion Blow, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14324;

-- Captain Kromcrush
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14325, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Pimgib
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14349;

-- Pusillin
-- Mechanic Stun: Kidney Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14354;

-- Arcane Torrent
-- School Arcane: Counterspell, Arcane Explosion
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=14399;
-- School Nature: Earth Shock, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~8) WHERE `entry`=14399;

-- Arcane Feedback
-- School Arcane: Arcane Explosion
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=14400;
-- School Nature: Earth Shock
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~8) WHERE `entry`=14400;

-- Master Elemental Shaper Krixix
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=14401;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=14401;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, War Stomp, Intercept Stun, War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14401;
-- Mechanic Knockout: Gouge, Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=14401;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=14401;
-- Mechanic Polymorph: Polymorph
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~65536) WHERE `entry`=14401;

-- Molt Thorn
-- Poison: Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14448, 0, 4, 4); -- DISPEL_POISON

-- Thundering Invader
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=14462;

-- Horde Battle Standard
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14466; -- MECHANIC_BLEED

-- Scourge Footsoldier
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=14486;

-- High Priest Venoxis
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=14507;
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14507, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- High Priest Thekal
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14509, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- High Priestess Mar'li
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14510, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Shadowed Spirit
-- Mechanic Stun: Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14511; -- MECHANIC_STUN

-- High Priestess Arlokk (HAS AURAS: Vanish)
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14515, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Death Knight Darkreaver
-- Mechanic Stun: Bash
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14516; -- MECHANIC_STUN

-- High Priestess Jeklik
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14517, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Ebonroc
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=14601;
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14601, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Bone Construct
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14605; -- MECHANIC_BLEED

-- Corrupted Infernal
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=14668;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14668; -- MECHANIC_BLEED
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14668, 0, 4, 4); -- DISPEL_POISON

-- Sever
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14682; -- MECHANIC_STUN
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=14682;

-- Balzaphon
-- Mechanic Stun: Cheap Shot, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14684; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=14684; -- MECHANIC_KNOCKOUT

-- Lady Falther'ess
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14686; -- MECHANIC_STUN
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=14686;

-- Revanchion
-- Mechanic Silence: Kick - Silenced
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 256) WHERE `entry`=14690;
-- Mechanic Stun: Cheap Shot, Charge Stun, Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14690; -- MECHANIC_STUN
-- Mechanic Bleed: Rend
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14690; -- MECHANIC_BLEED
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=14690;
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=14690;

-- Scorn
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=14693; -- MECHANIC_ROOT
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=14693;

-- Lord Blackwood
-- Mechanic Root: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=14695; -- MECHANIC_ROOT
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=14695; -- MECHANIC_SNARE
-- Mechanic Stun: Bash, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14695; -- MECHANIC_STUN
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14695; -- MECHANIC_BLEED
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=14695;

-- High Overlord Saurfang
-- Mechanic Fear: Panic
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=14720;
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=14720; -- MECHANIC_STUN
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=14720; -- MECHANIC_KNOCKOUT
-- Mod Stat: Power Word: Fortitude, Divine Spirit
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14720, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Gurubashi Bat Rider
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14750, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14750, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=14750;

-- Dun Baldar South Marshal
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=14763;

-- West Frostwolf Marshal
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14769, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Sacrificed Troll
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=14826;

-- Hakkar
-- Mod Stat: Scorpid Sting, Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14834, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Blood Steward of Kirtonos
-- Mechanic Stun: Hammer of Justice
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=14861;

-- Taerar
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14890; -- MECHANIC_BLEED

-- Emeriss (HAS AURAS: Summon Player)
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=14889;

-- Jeztor's War Rider
-- Mod Stat: Power Word: Fortitude
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14944, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Shade of Jin'do
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=14986; -- MECHANIC_BLEED

-- Ohgan
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (14988, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Hazza'rah
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15083, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Wushoolay
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15085;

-- Gahz'ranka
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15114, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Rutherford Twing
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=15126;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15126;

-- Defiler Elite
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=15128;

-- League of Arathor Elite
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=15130;

-- Prince Skaldrenox
-- School Fire: Fireball, Fire Blast, Fire Blast, Scorch, Ignite, Searing Pain, Fireball, Firebolt
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~4) WHERE `entry`=15203;

-- Azure Templar
-- Poison: Instant Poison VI
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15211, 0, 4, 4); -- DISPEL_POISON

-- Hoary Templar
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=15212; -- MECHANIC_BLEED

-- Vekniss Stinger
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15235;

-- Vekniss Wasp
-- Mechanic Root: Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=15236;
-- Mechanic Snare: Concussive Shot, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15236;
-- Mechanic Stun: Cheap Shot, Iron Grenade, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Impact, Revenge Stun, Concussion Blow, Blackout, Starfire Stun, Thorium Grenade, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=15236;

-- Vekniss Hive Crawler
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15240, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15240, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15240;

-- Qiraji Mindslayer (HAS AURAS: Immune Effect: Taunt & AttackMe)
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15246;

-- Qiraji Lasher
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15249, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Qiraji Champion
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15252;

-- The Prophet Skeram (HAS AURAS: ClearAll)
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15263, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Anubisath Sentinel
-- Taunt: Taunt, Growl
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15264, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15264, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15264, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Emperor Vek'nilash
-- School Fire: Fire Blast, Fireball, Fire Blast, Scorch, Fire Nova, Fire Nova, Hellfire Effect, Goblin Sapper Charge, Fiery Weapon, Dragonbreath Chili, Searing Pain, Fireball, Dense Dynamite, Firebolt, Fireball, Immolate
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 4) WHERE `entry`=15275;
-- School Nature: Faerie Fire, Wrath, Earth Shock, Chain Lightning, Instant Poison VI, Gift of Arthas, Serpent Sting, Serpent Sting, Lightning Bolt, Lightning Bolt, Faerie Fire (Feral), Faerie Fire (Feral), Wrath, Thunderfury, Lightning Strike, Zulian Slice, Insect Swarm, Serpent Sting, Deadly Poison V, Lightning Shield, Lightning Shield
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=15275;
-- School Shadow: Shadow Word: Pain, Mind Blast, Shadow Bolt, Corruption, Curse of Recklessness, Curse of the Elements, Curse of Shadow, Shadow Bolt, Shadow Bolt, Shadowburn, Siphon Life, Touch of Weakness, Gutgore Ripper, Drain Life, Shadow Bolt, Corruption, Shadowguard, Shadowguard, Touch of Weakness, Drain Life
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 32) WHERE `entry`=15275;
-- School Arcane: Arcane Shot, Starfire, Arcane Explosion, Arcane Shot, Arcane Shot, Hunter's Mark, Distracting Shot, Expose Weakness
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 64) WHERE `entry`=15275;

-- Emperor Vek'lor
-- School Physical: Auto Shot, Shield Bash, Whirlwind, Shoot Bow, Shred, Claw, Maul, Demoralizing Roar, Swipe, Backstab, Sinister Strike, Demoralizing Shout, Sunder Armor, Raptor Strike, Aimed Shot, Bloodthirst, Shield Slam, Heroic Strike, Multi-Shot, Backstab, Vampirism
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 1) WHERE `entry`=15276;

-- Anubisath Defender (HAS AURAS: Explode)
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15277;

-- Viscidus
-- Disease: Gift of Arthas, Creeping Mold, Devouring Plague
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15299, 0, 4, 3); -- DISPEL_DISEASE
-- Poison: Instant Poison VI, Serpent Sting, Serpent Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15299, 0, 4, 4); -- DISPEL_POISON

-- Shade of Taerar
-- School Nature: Instant Poison VI, Mind-numbing Poison III, Lightning Bolt, Thunderfury, Acid Blast
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 8) WHERE `entry`=15302;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=15302; -- MECHANIC_BLEED

-- Lord Skwol
-- School Frost: Frostbolt
-- IMMUNE Frost: Chilled
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` & ~16) WHERE `entry`=15305;

-- Qiraji Scarab
-- Mechanic Root: Frostbite, Entrapment, Improved Hamstring
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=15316; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Concussive Shot, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15316; -- MECHANIC_SNARE

-- Qiraji Scorpion
-- Mechanic Root: Entrapment, Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=15317; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Concussive Shot, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15317; -- MECHANIC_SNARE

-- Hive'Zara Soldier
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15320;

-- Hive'Zara Sandstalker
-- Mechanic Snare: Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15323;

-- Qiraji Gladiator
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15324;

-- Hive'Zara Wasp
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15325;
-- Mechanic Snare: Concussive Shot, Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15325;

-- Hive'Zara Stinger
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15327, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15327;

-- Flesh Hunter
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15335;
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15335, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Obsidian Destroyer
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15338, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=15338;

-- Ossirian the Unscarred
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15339, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Moam
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=15340; -- MECHANIC_BLEED
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15340;
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15340, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- General Rajaxx
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15341, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Qiraji Swarmguard
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~64) WHERE `entry`=15343;
-- Mechanic Snare: Concussive Shot, Crippling Poison, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15343;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Hammer of Justice, Revenge Stun, Concussion Blow, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=15343;

-- Kurinnaxx
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15348;
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15348, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Anubisath Guardian (HAS AURAS: Explode)
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15355, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Captain Qeez
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15391, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Captain Tuubid
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15392, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Kaldorei Infantry
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15423; -- MECHANIC_STUN

-- Lieutenant General Andorov
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15471;
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15471; -- MECHANIC_STUN
-- Mod Stat: Power Word: Fortitude, Blessing of Kings
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15471, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Kaldorei Elite
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15473;
-- Mechanic Stun: War Stomp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15473; -- MECHANIC_STUN
-- Mod Stat: Blessing of Kings
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15473, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Princess Huhuran
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15509, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Fankriss the Unyielding
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15510, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Lord Kri
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15511;

-- Buru Egg
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=15514;
-- Mechanic Stun: Charge Stun, Impact, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=15514;

-- Battleguard Sartura (HAS AURAS: Whirlwind)
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15516;
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15516;

-- Mana Fiend
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15527;
-- Mechanic Stun: Hammer of Justice, Impact, Revenge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15527; -- MECHANIC_STUN

-- Princess Yauj
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15543, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Doctor Weavil
-- Taunt: Taunt
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15552, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15552, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Maws
-- Taunt: Taunt
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15571, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15571, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Minion of Weavil
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15591;

-- Twilight Corrupter
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15625;
-- Taunt: Taunt, Challenging Shout, Growl
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15625, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15625, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Eye Tentacle
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15726; -- MECHANIC_SNARE

-- Colossus of Zora
-- Taunt: Taunt
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15740, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15740, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Colossal Anubisath Warbringer
-- Mod Stat: Vindication, Vindication
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15743, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15743, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Lesser Silithid Flayer
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15749; -- MECHANIC_SNARE

-- Qiraji Major
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15750, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Anubisath Warbringer
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15751, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Silithid Flayer
-- Mechanic Fear: Howl of Terror
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15752;
-- Mechanic Snare: Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15752; -- MECHANIC_SNARE

-- Greater Silithid Flayer
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=15756; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15756; -- MECHANIC_SNARE
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15756, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Supreme Anubisath Warbringer
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=15758;

-- Supreme Silithid Flayer
-- Mechanic Fear: Fear
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=15759;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15759; -- MECHANIC_SNARE

-- Flesh Tentacle
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=15802;
-- Mechanic Bleed: Rupture, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=15802;

-- Qiraji Lieutenant
-- Mechanic Stun: Charge Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=15806;

-- Qiraji Officer Zod
-- Mechanic Stun: Charge Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=15813;

-- Thaddius
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15928;

-- Stalagg
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15929;

-- Grobbulus
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15931;
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15931;

-- Heigan the Unclean
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=15936;

-- Maexxna
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15952;
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15952, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Grand Widow Faerlina
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=15953;

-- Vekniss Hatchling
-- Mechanic Snare: Crippling Poison, Earthbind, Piercing Howl, Chilled
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=15962; -- MECHANIC_SNARE

-- Dread Creeper
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Blackout, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15974; -- MECHANIC_STUN
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15974;

-- Carrion Spinner
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Impact, Blackout, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15975; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15975;
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15975, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Venom Stalker
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15976, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15976;

-- Infectious Skitterer
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Impact, Blackout, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15977; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15977;
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15977, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15977;

-- Crypt Reaver
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=15978;
-- Mod Cast Speed: Mind-numbing Poison III
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15978, 0, 1, 65); -- SPELL_AURA_MOD_CASTING_SPEED in Classic!

-- Naxxramas Cultist
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Concussion Blow, Blackout, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15980; -- MECHANIC_STUN

-- Naxxramas Acolyte
-- Mechanic Silence: Counterspell - Silenced
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 256) WHERE `entry`=15981;
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Blackout, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=15981; -- MECHANIC_STUN

-- Sartura's Royal Guard
-- Mod Stat: Frightalon
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15984, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=15984;

-- Sapphiron
-- Mod Stat: Scorpid Sting
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (15989, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Patchwork Golem
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=16017;

-- Bile Retcher
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16018;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=16018;

-- Mad Scientist
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16020;
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16020; -- MECHANIC_ROOT
-- Mechanic Stun: Cheap Shot, Iron Grenade, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Mithril Frag Bomb, Hi-Explosive Bomb, Thorium Grenade, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16020;

-- Living Monstrosity
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16021;

-- Surgical Assistant
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16022;
-- Mechanic Root: Entrapment, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16022; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16022; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16022; -- MECHANIC_STUN
-- Mechanic Interrupt: Counterspell, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16022;

-- Embalming Slime
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16024; -- MECHANIC_ROOT

-- Stitched Spewer
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16025;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=16025;

-- Patchwerk
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=16028;
-- Mechanic Fumble: Fumble
-- UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~32) WHERE `entry`=16028; -- later deathgrip

-- Sludge Belcher
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16029;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=16029;

-- Frenzied Bat
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16036;
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16036; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16036; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Kidney Shot, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16036; -- MECHANIC_STUN

-- Plagued Bat
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16037; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16037; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Kidney Shot, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16037; -- MECHANIC_STUN

-- Diseased Maggot
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16056;
-- Mechanic Snare: Earthbind, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16056; -- MECHANIC_SNARE

-- Rotting Maggot
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16057;
-- Mechanic Snare: Earthbind, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16057; -- MECHANIC_SNARE

-- Theldren
-- Taunt: Taunt
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16059, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16059, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Instructor Razuvious
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16061;

-- Skeletal Steed
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16067; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16067; -- MECHANIC_STUN

-- Commander Eligor Dawnbringer
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16115;

-- Unrelenting Trainee
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16124; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16124; -- MECHANIC_SNARE

-- Unrelenting Deathknight
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16125; -- MECHANIC_KNOCKOUT
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4194304) WHERE `entry`=16125;

-- Unrelenting Rider
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=16126;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=16126;

-- Spectral Trainee
-- School Holy: Hammer of Justice, Exorcism, Shackle Undead, Stratholme Holy Water, Holy Nova
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 2) WHERE `entry`=16127;
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16127;
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=16127;
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16127; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16127; -- MECHANIC_KNOCKOUT

-- Bile Sludge
-- Taunt: Taunt, Challenging Shout, Growl
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16142, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16142, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Shadow of Doom
-- Mechanic Disoriented: Blind, Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=16143;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16143;

-- Deathknight Captain
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=16145;

-- Deathknight (HAS AURAS: Veil of Darkness)
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16146;

-- Spectral Deathknight
-- School Holy: Shackle Undead
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 2) WHERE `entry`=16148;
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16148;
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16148; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16148; -- MECHANIC_KNOCKOUT

-- Spectral Horse
-- School Holy: Hammer of Justice, Shackle Undead
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 2) WHERE `entry`=16149;
-- Mechanic Snare: Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16149; -- MECHANIC_SNARE
-- Mechanic Stun: Kidney Shot, Bash, Hammer of Justice, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16149; -- MECHANIC_STUN

-- Spectral Rider
-- School Holy: Hammer of Justice, Shackle Undead
UPDATE `creature_template` SET `SchoolImmuneMask` = (`SchoolImmuneMask` | 2) WHERE `entry`=16150;

-- Risen Deathknight
-- Mechanic Disoriented: Blind, Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16154;
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4096) WHERE `entry`=16154;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16154; -- MECHANIC_KNOCKOUT
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 524288) WHERE `entry`=16154;

-- Dark Touched Warrior
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16156;
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16156; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Crippling Poison, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16156; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16156; -- MECHANIC_KNOCKOUT
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 524288) WHERE `entry`=16156;

-- Doom Touched Warrior
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16157;
-- Mechanic Snare: Concussive Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16157; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16157; -- MECHANIC_KNOCKOUT

-- Death Touched Warrior
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16158;
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16158;
-- Mechanic Root: Entrapment
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16158; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16158; -- MECHANIC_SNARE
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 8192) WHERE `entry`=16158; -- MECHANIC_KNOCKOUT

-- Deathknight Cavalier
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16163;

-- Shade of Naxxramas
-- Mechanic Root: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16164; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Concussive Shot, Crippling Poison
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16164; -- MECHANIC_SNARE
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16164; -- MECHANIC_STUN
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16164; -- MECHANIC_BLEED
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16164;

-- Necro Knight (HAS AURAS: Blink)
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16165;

-- Bony Construct
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16167; -- MECHANIC_BLEED
-- Mechanic Snare: Concussive Shot, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~1024) WHERE `entry`=16167;
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~524288) WHERE `entry`=16167;

-- Stoneskin Gargoyle (HAS AURAS: Stoneskin)
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=16168;

-- Skeletal Smith
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4) WHERE `entry`=16193;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16384) WHERE `entry`=16193;

-- Unholy Axe
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16194;
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16194; -- MECHANIC_BLEED

-- Unholy Staff
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16215; -- MECHANIC_BLEED

-- Unholy Swords
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16216;
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16216; -- MECHANIC_BLEED
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16216;

-- Eye Stalk
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16236;

-- Argent Recruiter
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=16241;

-- Argent Scout
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16255;

-- Argent Emissary
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=16285;

-- Spore
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16286;
-- Mechanic Stun: Intercept Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16286; -- MECHANIC_STUN

-- Mutated Grub
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16297;
-- Mechanic Root: Entrapment, Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16297; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind, Piercing Howl
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16297; -- MECHANIC_SNARE
-- Mechanic Stun: Charge Stun, Kidney Shot, Bash, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16297; -- MECHANIC_STUN

-- Skeletal Shocktrooper
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=16299;

-- Argent Messenger
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16359;

-- Necropolis Acolyte
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16368;

-- Sewage Slime
-- Mechanic Stun: Cheap Shot, Charge Stun, Kidney Shot, Bash, Hammer of Justice, Hi-Explosive Bomb, Thorium Grenade, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16375;

-- Argent Sentry
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16378;
-- Mechanic Root: Frostbite
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16378; -- MECHANIC_ROOT

-- Bone Witch
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=16380;

-- Atiesh
-- Mechanic Bleed: Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16387; -- MECHANIC_BLEED
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16387;

-- Deathchill Servant
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16390; -- MECHANIC_BLEED
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16390;
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~524288) WHERE `entry`=16390;

-- Soldier of the Frozen Wastes
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16427;

-- Unstoppable Abomination
-- Mechanic Stun: Cheap Shot, Kidney Shot, Bash, Hammer of Justice, Hi-Explosive Bomb, Thorium Grenade, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16428;

-- Soul Weaver
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16429; -- MECHANIC_BLEED
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16429;

-- Guardian of Icecrown
-- Mechanic Disoriented: Blind, Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=16441;
-- Mechanic Stun: Bash, Hammer of Justice, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16441;
-- Mechanic Freeze: Freezing Trap Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4096) WHERE `entry`=16441;
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16441;
-- Mechanic Turn: Turn Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~4194304) WHERE `entry`=16441;

-- Plagued Gargoyle (HAS AURAS: Stoneskin)
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=16446;

-- Plagued Ghoul
-- Mechanic Disoriented: Blind, Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16447;
-- Mechanic Root: Entrapment, Improved Wing Clip
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16447; -- MECHANIC_ROOT
-- Mechanic Snare: Concussive Shot, Stygian Grasp
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16447; -- MECHANIC_SNARE
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 524288) WHERE `entry`=16447;

-- Plagued Deathhound
-- Mechanic Stun: Charge Stun, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2048) WHERE `entry`=16448;

-- Spirit of Naxxramas
-- Mechanic Bleed: Garrote, Rend, Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16449; -- MECHANIC_BLEED
-- Mechanic Disoriented: Scatter Shot, Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~2) WHERE `entry`=16449;
-- Mechanic Shackle: Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~524288) WHERE `entry`=16449;

-- Deathknight Vindicator
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16451;

-- Necro Knight Guardian (HAS AURAS: Blink)
-- Mechanic Interrupt: Counterspell
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16452;

-- Necro Stalker
-- Mechanic Distract: Distract
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8) WHERE `entry`=16453;

-- Naxxramas Follower
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16505;

-- Naxxramas Worshipper (HAS AURAS: Mind Exhaustion)
-- Mechanic Silence: Silence
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 256) WHERE `entry`=16506;
-- Mechanic Stun: Kidney Shot, Hammer of Justice, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16506; -- MECHANIC_STUN
-- Mod Stat: Juju Power
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16506, 0, 1, 137); -- SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE

-- Corpse Scarab
-- Mechanic Fear: Fear, Psychic Scream, Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=16698;

-- Argent Outfitter
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=16787;

-- Deathknight Understudy (HAS AURAS: Mind Exhaustion)
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16803;

-- Death Lord
-- Mechanic Disarm: Disarm
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 4) WHERE `entry`=16861;

-- Plagued Guardian (HAS AURAS: Blink, Blink, Blink, Blink)
-- Mechanic Disoriented: Glimpse of Madness
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16981;
-- Mechanic Root: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16981; -- MECHANIC_ROOT
-- Mechanic Interrupt: Counterspell, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16981;
-- Taunt: Taunt, Challenging Roar, Growl
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16981, 0, 0, 114); -- SPELL_EFFECT_ATTACK_ME
REPLACE INTO `creature_immunities` (`entry`, `setid`, `Type`, `Value`) VALUES (16981, 0, 1, 11); -- SPELL_AURA_MOD_TAUNT

-- Plagued Champion
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16983; -- MECHANIC_BLEED
-- Mechanic Knockout: Gouge
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~8192) WHERE `entry`=16983;

-- Plagued Warrior
-- Mechanic Disoriented: Scatter Shot
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2) WHERE `entry`=16984;
-- Mechanic Root: Entrapment, Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 64) WHERE `entry`=16984; -- MECHANIC_ROOT
-- Mechanic Snare: Earthbind
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1024) WHERE `entry`=16984; -- MECHANIC_SNARE
-- Mechanic Stun: Kidney Shot, Bash, Hammer of Justice, Intercept Stun, War Stomp, Intercept Stun
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 2048) WHERE `entry`=16984; -- MECHANIC_STUN
-- Mechanic Bleed: Deep Wound, Deep Wounds
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16384) WHERE `entry`=16984; -- MECHANIC_BLEED
-- Mechanic Shackle: Shackle Undead, Shackle Undead
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 524288) WHERE `entry`=16984;
-- Mechanic Interrupt: Feral Charge Effect
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 33554432) WHERE `entry`=16984;

-- Maexxna Spiderling
-- Mechanic Fear: Intimidating Shout
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` & ~16) WHERE `entry`=17055;

-- Alliance Silithyst Sentinel
-- Mechanic Charm: Mind Control
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 1) WHERE `entry`=17765;
-- Mechanic Fear: Psychic Scream
UPDATE `creature_template` SET `MechanicImmuneMask` = (`MechanicImmuneMask` | 16) WHERE `entry`=17765;

-- End of migration.

