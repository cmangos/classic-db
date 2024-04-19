-- =======
-- Mulgore
-- =======
-- Improve AI for Palemane Tanner,Skinner,Poacher 2949,2950,2951
-- https://www.wowhead.com/classic/quest=745/sharing-the-land#videos:id=215577
-- https://www.youtube.com/watch?v=qdpcBmS11dE
-- https://www.youtube.com/watch?v=uYJU7hNKQas
-- https://www.youtube.com/watch?v=ap0UiwnASE4
-- https://www.youtube.com/watch?v=YpkW0GiBIQA

-- Palemane Tanner 2949 - https://www.wowhead.com/classic/npc=2949/palemane-tanner
UPDATE `creature_template` SET `SpellList` = 294901, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2949;
-- Palemane Skinner 2950 - https://www.wowhead.com/classic/npc=2950/palemane-skinner
UPDATE `creature_template` SET `SpellList` = 295001, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2950;
-- Palemane Poacher 2951 - https://www.wowhead.com/classic/npc=2951/palemane-poacher
UPDATE `creature_template` SET `SpellList` = 295101, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2951;
-- Bristleback Quilboar 2952 - https://www.wowhead.com/classic/npc=2952/bristleback-quilboar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2952;
-- Bristleback Shaman 2953 - https://www.wowhead.com/classic/npc=2953/bristleback-shaman
UPDATE `creature_template` SET `SpellList` = 295301, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2953;
-- Bristleback Battleboar 2954 - https://www.wowhead.com/classic/npc=2954/bristleback-battleboar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2954;
-- Windfury Harpy 2962 - https://www.wowhead.com/classic/npc=2962/windfury-harpy
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2962;
-- Windfury Wind Witch 2963 - https://www.wowhead.com/classic/npc=2963/windfury-wind-witch
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2963;
-- Windfury Sorceress 2964 - https://www.wowhead.com/classic/npc=2964/windfury-sorceress
-- Windfury Matriarch 2965 - https://www.wowhead.com/classic/npc=2965/windfury-matriarch
-- Battleboar 2966 - https://www.wowhead.com/classic/npc=2966/battleboar
-- Galak Centaur 2967 - https://www.wowhead.com/classic/npc=2967/galak-centaur
-- Galak Outrunner 2968 - https://www.wowhead.com/classic/npc=2968/galak-outrunner
-- Wiry Swoop 2969 - https://www.wowhead.com/classic/npc=2969/wiry-swoop
-- Swoop 2970 - https://www.wowhead.com/classic/npc=2970/swoop
-- Taloned Swoop 2971 - https://www.wowhead.com/classic/npc=2971/taloned-swoop
-- Kodo Calf 2972 - https://www.wowhead.com/classic/npc=2972/kodo-calf
-- Kodo Bull 2973 - https://www.wowhead.com/classic/npc=2973/kodo-bull
-- Kodo Matriarch 2974 - https://www.wowhead.com/classic/npc=2974/kodo-matriarch
-- Venture Co. Hireling 2975 - https://www.wowhead.com/classic/npc=2975/venture-co-hireling
-- Venture Co. Laborer 2976 - https://www.wowhead.com/classic/npc=2976/venture-co-laborer
-- Venture Co. Taskmaster 2977 - https://www.wowhead.com/classic/npc=2977/venture-co-taskmaster
-- Venture Co. Worker 2978 - https://www.wowhead.com/classic/npc=2978/venture-co-worker
-- Venture Co. Supervisor 2979 - https://www.wowhead.com/classic/npc=2979/venture-co-supervisor
-- Bael'dun Digger 2989 - https://www.wowhead.com/classic/npc=2989/baeldun-digger
-- https://www.wowhead.com/classic/npc=2990/baeldun-appraiser
-- Bael'dun Appraiser 2990 - creature_spell_list
-- Flatland Cougar 3035 - https://www.wowhead.com/classic/npc=3035/flatland-cougar
-- Supervisor Fizsprocket 3051 - https://www.wowhead.com/classic/npc=3051/supervisor-fizsprocket
-- Ghost Howl 3056 - https://www.wowhead.com/classic/npc=3056/ghost-howl
-- Arra'chea 3058 - https://www.wowhead.com/classic/npc=3058/arrachea
-- Mazzranache 3068 - https://www.wowhead.com/classic/npc=3068/mazzranache
-- "Squealer" Thornmantle 3229 - https://www.wowhead.com/classic/npc=3229/squealer-thornmantle
-- Bristleback Interloper 3232 - https://www.wowhead.com/classic/npc=3232/bristleback-interloper
-- Flatland Prowler 3566 - https://www.wowhead.com/classic/npc=3566/flatland-prowler
-- Sister Hatelash 5785 - https://www.wowhead.com/classic/npc=5785/sister-hatelash
-- Snagglespear 5786 - https://www.wowhead.com/classic/npc=5786/snagglespear
-- Enforcer Emilgund 5787 - https://www.wowhead.com/classic/npc=5787/enforcer-emilgund
-- The Rake 5807 - https://www.wowhead.com/classic/npc=5807/the-rake
-- Chief Sharptusk Thornmantle 8554 - https://www.wowhead.com/classic/npc=8554/chief-sharptusk-thornmantle

DELETE FROM `creature_spell_list` WHERE `Id` IN (294901,295001,295101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('294901','2949','9','0','100','1025','0','40','9000','14000','0','0','11','9739','1','0','0','0','0','0','0','0','0','0','Palemane Tanner - Cast Wrath'),
(294901, 0, 9739, 2, -1, 1, 0, 100, 1, 0, 1000, 0, 0, 'Mulgore - Palemane Tanner - Wrath'),
-- ('295001','2950','2','0','100','1025','50','0','21000','25000','0','0','11','774','0','0','0','0','0','0','0','0','0','0','Palemane Skinner - Cast Rejuvenation at 50% HP'),
(295001, 0, 774, 0, -1, 201, 0, 100, 1, 8000, 16000, 15000, 30000, 'Mulgore - Palemane Skinner - Rejuvenation on Friendly Missing 50% including self'),
-- ('295103','2951','9','0','100','1025','5','30','9000','14000','0','0','11','1516','4','0','0','0','0','0','0','0','0','0','Palemane Poacher - Cast Quick Shot'),
-- ('295104','2951','9','0','100','1025','5','30','3000','4500','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Palemane Poacher - Cast Shoot'),
(295101, 0, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Mulgore - Palemane Poacher - Shoot on Current'),
(295101, 1, 1516, 0, -1, 1, 0, 100, 0, 1000, 10000, 10000, 20000, 'Mulgore - Palemane Poacher - Quick Shot on Current');

DELETE FROM creature_spell_list_entry WHERE Id IN (294901,295001,295101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(294901, 'Mulgore - Palemane Tanner 2949', 0, 75),
(295001, 'Mulgore - Palemane Skinner 2950', 75, 0),
(295101, 'Mulgore - Palemane Poacher 2951', 0, 75);

/*
('296401','2964','4','0','100','0','0','0','0','0','0','0','57','2','35','0','0','0','0','0','0','0','0','0','Windfury Sorceress - Enable Range Mode on Aggro'),
('296402','2964','9','0','100','1025','0','40','3800','5200','0','0','11','13322','1','256','0','0','0','0','0','0','0','0','Windfury Sorceress - Cast Frostbolt'),
 ('296403','2964','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Windfury Sorceress - Flee at 15% HP'),

('296501','2965','4','0','100','0','0','0','0','0','0','0','57','2','35','0','0','0','0','0','0','0','0','0','Windfury Matriarch - Enable Range Mode on Aggro'),
('296502','2965','2','0','100','1025','50','0','18000','24000','0','0','11','332','0','0','0','0','0','0','0','0','0','0','Windfury Matriarch - Cast Healing Wave at 50% HP'),
('296503','2965','9','0','100','1025','0','40','3800','5200','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Windfury Matriarch - Cast Lightning Bolt'),
('296504','2965','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Windfury Matriarch - Flee at 15% HP'),

('296801','2968','4','0','100','0','0','0','0','0','0','0','57','2','25','0','0','0','0','0','0','0','0','0','Galak Outrunner - Enable Range Mode on Aggro'),
('296802','2968','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Galak Outrunner - Flee at 15% HP'),
('296803','2968','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Galak Outrunner - Cast Shoot'),

('296901','2969','0','0','100','1025','0','15000','15000','21000','0','0','11','5708','1','0','0','0','0','0','0','0','0','0','Wiry Swoop - Cast Swoop'),

('297001','2970','0','0','100','1025','0','15000','15000','21000','0','0','11','5708','1','0','0','0','0','0','0','0','0','0','Swoop - Cast Swoop'),

('297101','2971','0','0','100','1025','0','15000','15000','21000','0','0','11','5708','1','0','0','0','0','0','0','0','0','0','Taloned Swoop - Cast Swoop'),

('297201','2972','9','0','100','1025','10','60','7000','9000','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Kodo Calf - Cast Rushing Charge'),

('297301','2973','9','0','100','1025','0','8','9000','14000','0','0','11','5568','0','0','0','0','0','0','0','0','0','0','Kodo Bull - Cast Trample'),

('297401','2974','9','0','100','1025','0','8','9000','14000','0','0','11','5568','0','0','0','0','0','0','0','0','0','0','Kodo Matriarch - Cast Trample'),

('297601','2976','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Venture Co. Laborer - Flee at 15% HP'),

('297701','2977','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Venture Co. Taskmaster - Flee at 15% HP'),

('297801','2978','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Venture Co. Worker - Flee at 15% HP'),

('297901','2979','0','0','100','1025','1000','3000','15000','30000','0','0','11','6673','0','0','0','0','0','0','0','0','0','0','Venture Co. Supervisor - Cast Battle Shout'),
-- Grull Hawkwind
('298001','2980','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Grull Hawkwind - Flee at 15% HP'),
-- Chief Hawkwind
('298101','2981','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Chief Hawkwind - Flee at 15% HP'),
-- Seer Graytongue
('298201','2982','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Seer Graytongue - Flee at 15% HP'),
-- The Plains Vision (2983) - NSR
-- Seer Wiserunner
('298401','2984','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Seer Wiserunner - Flee at 15% HP'),
('298402','2984','10','0','100','1','1','20','120000','120000','0','772','1','947','0','0','0','0','0','0','0','0','0','0','Seer Wiserunner - SayText on Player in LoS'),
-- Ruul Eagletalon
('298501','2985','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Ruul Eagletalon - Flee at 15% HP'),
-- Morin Cloudstalker
('298801','2988','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Morin Cloudstalker - Flee at 15% HP'),

('298901','2989','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Bael''dun Digger - Flee at 15% HP'),

-- Greatmother Hawkwind
('299101','2991','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Greatmother Hawkwind - Flee at 15% HP'),
-- Baine Bloodhoof (2993) - NSR
-- Ancestral Spirit
('299401','2994','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Ancestral Spirit - Flee at 15% HP'),

-- Skorn Whitecloud (3052) - npc_skorn_whitecloud
-- Zarlman Two-Moons
('305401','3054','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Zarlman Two-Moons - Flee at 15% HP'),
-- Maur Raincaller
('305501','3055','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Maur Raincaller - Flee at 15% HP'),

('305801','3058','9','0','100','1025','0','5','11000','15000','0','0','11','6730','1','0','0','0','0','0','0','0','0','0','Arra''chea - Cast Head Butt'),
-- Harutt Thunderhorn
('305901','3059','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Harutt Thunderhorn - Flee at 15% HP'),
-- Gart Mistrunner
('306001','3060','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Gart Mistrunner - Flee at 15% HP'),
-- Lanka Farshot 3061
('306101','3061','4','0','100','0','0','0','0','0','0','0','57','2','25','0','0','0','0','0','0','0','0','0','Lanka Farshot - Enable Range Mode on Aggro'),
('306102','3061','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Lanka Farshot - Flee at 15% HP'),
('306103','3061','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Lanka Farshot - Cast Shoot'),
-- Meela Dawnstrider
('306201','3062','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Meela Dawnstrider - Flee at 15% HP'),
-- Krang Stonehoof 3063
('306301','3063','11','0','100','0','0','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Krang Stonehoof - Set Phase 1 on Spawn'),
('306302','3063','1','1','100','1','30000','300000','600000','900000','0','0','53','5','0','0','22','2','0','0','0','0','0','0','Krang Stonehoof - START_RELAY_SCRIPT and set Phase 2 on OOC Timer (Phase 1)'),
('306303','3063','30','3','100','1','10','10599','0','0','0','0','53','6','0','0','22','1','0','0','0','0','0','0','Krang Stonehoof - START_RELAY_SCRIPT and Set Phase 1 on Receive AI Event Custom E (Phase 2)'),
('306304','3063','30','3','100','1','10','10600','0','0','0','0','53','6','0','0','22','1','0','0','0','0','0','0','Krang Stonehoof - START_RELAY_SCRIPT and Set Phase 1 on Receive AI Event Custom E (Phase 2)'),
('306305','3063','30','3','100','1','11','10599','0','0','0','0','53','7','0','0','0','0','0','0','0','0','0','0','Krang Stonehoof - START_RELAY_SCRIPT on Receive AI Event Custom F (Phase 2)'),
('306306','3063','30','3','100','1','11','10600','0','0','0','0','53','7','0','0','0','0','0','0','0','0','0','0','Krang Stonehoof - START_RELAY_SCRIPT on Receive AI Event Custom F (Phase 2)'),
-- Gennia Runetotem
('306401','3064','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Gennia Runetotem - Flee at 15% HP'),
-- Yaw Sharpmane (3065) - NSR
-- Narm Skychaser
('306601','3066','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Narm Skychaser - Flee at 15% HP'),
-- Pyall Silentstride
('306701','3067','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Pyall Silentstride - Flee at 15% HP'),

('306801','3068','11','0','100','0','0','0','0','0','0','0','11','10022','0','1','0','0','0','0','0','0','0','0','Mazzranache - Cast Deadly Poison on Spawn'),
('306802','3068','9','0','100','1025','10','60','7000','9000','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Mazzranache - Cast Rushing Charge'),
-- Chaw Stronghide
('306901','3069','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Chaw Stronghide - Flee at 15% HP'),
-- Kawnie Softbreeze
('307201','3072','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Kawnie Softbreeze - Flee at 15% HP'),
-- Marjak Keenblade
('307301','3073','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Marjak Keenblade - Flee at 15% HP'),
-- Varia Hardhide
('307401','3074','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Varia Hardhide - Flee at 15% HP'),
-- Bronk Steelrage
('307501','3075','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Bronk Steelrage - Flee at 15% HP'),
-- Moorat Longstride
('307601','3076','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Moorat Longstride - Flee at 15% HP'),
-- Mahnott Roughwound
('307701','3077','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Mahnott Roughwound - Flee at 15% HP'),
-- Kennah Hawkseye 3078
('307801','3078','4','0','100','0','0','0','0','0','0','0','57','2','25','0','0','0','0','0','0','0','0','0','Kennah Hawkseye - Enable Range Mode on Aggro'),
('307802','3078','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Kennah Hawkseye - Flee at 15% HP'),
('307803','3078','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Kennah Hawkseye - Cast Shoot'),
-- Varg Windwhisper
('307901','3079','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Varg Windwhisper - Flee at 15% HP'),
-- Harant Ironbrace
('308001','3080','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Harant Ironbrace - Flee at 15% HP'),
-- Wunna Darkmane
('308101','3081','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Wunna Darkmane - Flee at 15% HP'),
-- Brave Windfeather (3209) - NSR
-- Brave Proudsnout (3210) - NSR
-- Brave Lightninghorn (3211) - NSR
-- Brave Ironhorn (3212) - guard_mulgore
-- Brave Running Wolf (3213) - NSR
-- Brave Greathoof (3214) - NSR
-- Brave Strongbash (3215) - guard_mulgore
-- Brave Dawneagle (3217) - guard_mulgore
-- Brave Swiftwind (3218) - guard_mulgore
-- Brave Leaping Deer (3219) - guard_mulgore
-- Brave Darksky (3220) - guard_mulgore
-- Brave Rockhorn (3221) - guard_mulgore
-- Brave Wildrunner (3222) - guard_mulgore
-- Brave Rainchaser (3223) - guard_mulgore
-- Brave Cloudmane (3224) - guard_mulgore

('323201','3232','9','0','100','1025','0','5','14000','20000','0','0','11','12166','1','0','0','0','0','0','0','0','0','0','Bristleback Interloper - Cast Muscle Tear'),
('323202','3232','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Bristleback Interloper - Flee at 15% HP'),
-- Lorekeeper Raintotem
('323301','3233','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Lorekeeper Raintotem - Flee at 15% HP'),

-- Harb Clawhoof (3685)
-- Reban Freerunner
('368801','3688','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Reban Freerunner - Flee at 15% HP'),
-- Kar Stormsinger
('369001','3690','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Kar Stormsinge - Flee at 15% HP'),
-- Moodan Sungrain
('388301','3883','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Moodan Sungrain - Flee at 15% HP'),
-- Jhawna Oatwind
('388401','3884','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Jhawna Oatwind - Flee at 15% HP'),

('578501','5785','4','0','100','0','0','0','0','0','0','0','57','2','35','0','0','0','0','0','0','0','0','0','Sister Hatelash - Enable Range Mode on Aggro'),
('578502','5785','2','0','100','1024','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Sister Hatelash - Flee at 15% HP'),
('578503','5785','0','0','100','1025','4000','9000','30000','45000','0','0','11','6960','0','32','0','0','0','0','0','0','0','0','Sister Hatelash - Cast Lightning Barrier'),
('578504','5785','9','0','100','1025','0','40','3800','5200','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Sister Hatelash - Cast Lightning Bolt'),

('578601','5786','9','0','100','1025','0','20','11000','18000','0','0','11','12024','1','0','0','0','0','0','0','0','0','0','Snagglespear - Cast Net'),

('580701','5807','9','0','100','1025','0','5','8000','15000','0','0','11','12166','1','0','0','0','0','0','0','0','0','0','The Rake - Cast Muscle Tear'),
-- Seer Ravenfeather
('588801','5888','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Seer Ravenfeather - Flee at 15% HP'),
-- Minor Manifestation of Earth (5891) - NSR
-- Uthan Stillwater
('593801','5938','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Uthan Stillwater - Flee at 15% HP'),
-- Vira Younghoof
('593901','5939','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Vira Younghoof - Flee at 15% HP'),
-- Harn Longcast
('594001','5940','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Harn Longcast - Flee at 15% HP'),
-- Yonn Deepcut
('629001','6290','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Yonn Deepcut - Flee at 15% HP'),
-- Innkeeper Kauth (6747) - npc_innkeeper
-- Antur Fallow
('677501','6775','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Antur Fallow - Flee at 15% HP'),
-- Magrin Rivermane
('677601','6776','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Magrin Rivermane - Flee at 15% HP'),
-- Mulgore Protector (7975) - NSR

-- Seikwa
('1005001','10050','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Seikwa - Flee at 15% HP'),
-- Selina Dourman (10445) - NSR
-- Twizwick Sprocketgrind (10993) - NSR
-- Var'jun
('1140701','11407','2','0','100','0','15','0','0','0','0','0','25','0','0','0','1','1150','0','0','0','0','0','0','Var''jun - Flee at 15% HP'),
-- Vorn Skyseer (11944) - NSR
-- Brown Riding Kodo (12354) - NSR
-- Gray Riding Kodo (12355) - NSR
-- Great White Kodo (14542) - NSR
-- Great Brown Kodo (14549) - NSR
-- Great Gray Kodo (14550) - NSR
-- Sayge (14822) - npc_sayge
-- Silas Darkmoon
('1482301','14823','1','0','100','1','30000','30000','300000','300000','0','0','1','10160','10033','10155','0','0','0','0','0','0','0','0','Silas Darkmoon - Random Say OOC'),
('1482302','14823','1','0','100','1','150000','150000','300000','300000','0','0','1','10033','10155','10034','0','0','0','0','0','0','0','0','Silas Darkmoon - Random Say OOC'),
-- Burth (14827) - NSR
-- Gelvas Grimegate (14828) - NSR
-- Yebb Neblegear (14829) - NSR
-- Kerri Hicks (14832) - NSR
-- Chronos (14833) - NSR
-- Rinling (14841) - NSR
-- Sylannia (14844) - NSR
-- Stamp Thunderhorn
('1484501','14845','1','0','100','1','90000','90000','300000','300000','0','0','1','10133','10135','10134','0','0','0','0','0','0','0','0','Stamp Thunderhorn - Random Say OOC'),
('1484502','14845','1','0','100','1','210000','210000','300000','300000','0','0','1','10135','10134','10136','0','0','0','0','0','0','0','0','Stamp Thunderhorn - Random Say OOC'),
-- Lhara (14846) - NSR
-- Professor Thaddeus Paleo (14847) - NSR
-- Darkmoon Faire Carnie (14849) - NSR
-- FlikFlik 14860
('1486001','14860','1','0','100','1','50000','90000','50000','300000','0','0','54','0','0','899','0','0','0','0','0','0','0','0','Flik - Random Say OOC'),
-- Khaz Modan Ram (14864) - NSR
-- Felinni (14865) - NSR
-- Flik's Frog (14866) - NSR
-- Jubjub (14867) - NSR
-- Hornsley (14868) - NSR
-- Pygmy Cockatrice (14869) - NSR
-- Morja (14871) - NSR
-- Elder Bloodhoof (15575) - NSR
-- Pat's Firework Cluster Guy (ELUNE) (15918) - NSR
*/