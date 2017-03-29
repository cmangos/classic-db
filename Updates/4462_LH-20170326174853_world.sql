-- Non-corporeal Undead and Mechanical creatures are now susceptible to bleed effects.
-- http://wowwiki.wikia.com/wiki/Patch_2.4.0
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16384 WHERE `CreatureType` = 9; -- CREATURE_TYPE_MECHANICAL + MECHANIC_BLEED
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16384 WHERE `entry` IN ( -- CREATURE_TYPE_UNDEAD - Non-corporeal + MECHANIC_BLEED
302, -- Blind Mary
392, -- Captain Grayson
1157, -- Cursed Sailor
1158, -- Cursed Marine
1531, -- Lost Soul
1532, -- Wandering Spirit
1533, -- Tormented Spirit
1534, -- Wailing Ancestor
1655, -- Nissa Agamand
1798, -- Tortured Soul
1800, -- Cold Wraith
1801, -- Blood Wraith
1802, -- Hungering Wraith
1804, -- Wailing Death
1849, -- Dreadwhisper
1946, -- Lillith Nefara
1983, -- Nightlash
2044, -- Forlorn Spirit
2056, -- Ravenclaw Apparition
2176, -- Cursed Highborne
2177, -- Writhing Highborne
2178, -- Wailing Highborne
2184, -- Lady Moongazer
2227, -- Sharlindra
2278, -- Melisara
2623, -- Spirit of Old
2638, -- Syndicate Spectre
3094, -- Unseen
3617, -- Lordaeron Citizen
3667, -- Anaya Dawnrunner
3799, -- Severed Druid
3801, -- Severed Sleeper
3802, -- Severed Dreamer
3803, -- Severed Keeper
3863, -- Lupine Horror
3872, -- Deathsworn Captain
3873, -- Tormented Officer
3875, -- Haunted Servitor
3877, -- Wailing Guardsman
3887, -- Baron Silverlaine
3940, -- Taneel Darkwood
3941, -- Uthil Mooncall
3942, -- Mavoris Cloudsbreak
4278, -- Commander Springvale
4308, -- Unfettered Spirit
4472, -- Haunting Vision
4550, -- Ophelia Montague
4566, -- Kaelystia Hatebringer
4606, -- Aelthalyste
4958, -- Haunting Spirit
5097, -- Lupine Delusion
5712, -- Zolo
5713, -- Gasher
5714, -- Loro
5715, -- Hukku
5716, -- Zul'Lor
5717, -- Mijan
6107, -- Phantasm / Shade
6108, -- Greater Phantasm
6116, -- Highborne Apparition
6117, -- Highborne Lichling
6118, -- Varo'then's Ghost
6133, -- Shade of Elura
6427, -- Haunting Phantasm
6490, -- Azshir the Sleepless
6493, -- Illusionary Phantasm
7068, -- Condemned Acolyte
7069, -- Condemned Monk
7070, -- Condemned Cleric
7071, -- Cursed Paladin
7072, -- Cursed Justicar
7075, -- Writhing Mage
7352, -- Frozen Soul
7353, -- Freezing Spirit
7370, -- Restless Shade
7374, -- Vengeful Wraith
7375, -- Spirit of Wrath
7503, -- Curse of the Eye (Male)
7504, -- Curse of the Eye (Female)
7523, -- Suffering Highborne
7524, -- Anguished Highborne
7864, -- Lingering Highborne
8317, -- Atal'ai Deathwalker's Spirit
8537, -- Interloper
8538, -- Unseen Servant
8539, -- Eyeless Watcher
8540, -- Torn Screamer
8541, -- Hate Shrieker
8542, -- Death Singer
8552, -- Necrolyte
8585, -- Frost Spectre
9034, -- Hate'rel
9035, -- Anger'rel
9036, -- Vile'rel
9037, -- Gloom'rel
9038, -- Seeth'rel
9039, -- Doom'rel
9040, -- Dope'rel
10358, -- Fellicent's Shade
10384, -- Spectral Citizen
10385, -- Ghostly Citizen
10387, -- Vengeful Phantom
10388, -- Spiteful Phantom
10389, -- Wrath Phantom
10411, -- Eye of Naxxramas
10436, -- Baroness Anastari
10463, -- Shrieking Banshee
10464, -- Wailing Banshee
10498, -- Spectral Tutor
10499, -- Spectral Researcher
10500, -- Spectral Teacher
10502, -- Lady Illucia Barov
10503, -- Jandice Barov
10516, -- The Unforgiven
10558, -- Hearthsinger Forresten
10684, -- Remorseful Highborne
10926, -- Pamela Redpath
10927, -- Marlene Redpath
10936, -- Joseph Redpath
10937, -- Captain Redpath
10938, -- Redpath the Corrupted
10939, -- Marduk the Black
10940, -- Ghost of the Past
10943, -- Decrepit Guardian
10944, -- Davil Lightfire
10945, -- Davil Crokford
10946, -- Horgus the Ravager
10947, -- Darrowshire Betrayer
10948, -- Darrowshire Defender
10949, -- Silver Hand Disciple
10950, -- Redpath Militia
10951, -- Marauding Corpse
10952, -- Marauding Skeleton
10953, -- Servant of Horgus
10954, -- Bloodletter
10996, -- Fallen Hero
11027, -- Illusory Wraith
11064, -- Darrowshire Spirit
11078, -- Cauldron Lord Soulwrath
11082, -- Stratholme Courier
11141, -- Spirit of Trey Lightforge
11142, -- Undead Postman
11143, -- Postmaster Malown
11216, -- Eva Sarkhoff
11217, -- Lucien Sarkhoff
11263, -- Spectral Projection
11277, -- Caer Darrow Citizen
11278, -- Magnus Frostwake
11279, -- Caer Darrow Guardsman
11280, -- Caer Darrow Cannoneer
11281, -- Caer Darrow Horseman
11282, -- Melia
11283, -- Sammy
11284, -- Dark Shade
11285, -- Rory
11286, -- Magistrate Marduke
11287, -- Baker Masterson
11288, -- Spectral Betrayer
11289, -- Spectral Defender
11296, -- Darrowshire Poltergeist
11316, -- Joseph Dirte
11439, -- Illusion of Jandice Barov
11446, -- Gordok Spirit
11467, -- Tsu'zee
11468, -- [UNUSED] Eldreth Lichling
11469, -- Eldreth Seether
11470, -- Eldreth Sorcerer
11471, -- Eldreth Apparition
11472, -- Eldreth Spirit
11473, -- Eldreth Spectre
11474, -- Eldreth Wraith
11475, -- Eldreth Phantasm
11487, -- Magister Kalendris
11560, -- Magrami Spectre
11580, -- Kelemis the Lifeless
11620, -- Spectral Marauder
11621, -- Spectral Corpse
11686, -- Ghostly Raider
11687, -- Ghostly Marauder
11873, -- Spectral Attendant
11936, -- Artist Renfray
12178, -- Tortured Druid
12179, -- Tortured Sentinel
12199, -- Shade of Ambermoon
12238, -- Zaetar's Spirit
12239, -- Spirit of Gelk
12240, -- Spirit of Kolk
12241, -- Spirit of Magra
12242, -- Spirit of Maraudos
12243, -- Spirit of Veng
12377, -- Wailing Spectre
12378, -- Damned Soul
12379, -- Unliving Caretaker
12380, -- Unliving Resident
14358, -- Shen'dralar Ancient
14364, -- Shen'dralar Spirit
14494, -- Eris Havenfire
14511, -- Shadowed Spirit
14512, -- Corrupted Spirit
14513, -- Malicious Spirit
14514, -- Banal Spirit
14518, -- Aspect of Banality
14519, -- Aspect of Corruption
14520, -- Aspect of Malice
14521, -- Aspect of Shadow
14564, -- Terrordale Spirit
14686, -- Lady Falther'ess
14687, -- Soulless
14690, -- Revanchion
14698, -- Silent Stalker
14699, -- Spectral Soldier UNUSED
14700, -- Unclean Spirit
14701, -- Doom Wraith
14702, -- Wailing Widow
14703, -- Death Siren
14986, -- Shade of Jin'do
15117, -- Chained Spirit
15376, -- Halloween Male Ghost
15377, -- Halloween Female Ghost
15720, -- Timbermaw Ancestor
16066, -- Spectral Assassin
16093, -- Spectral Stalker
16103, -- Spirit of Jarien
16104, -- Spirit of Sothos
16127, -- Spectral Trainee
16143, -- Shadow of Doom
16148, -- Spectral Deathknight
16150, -- Spectral Rider
16164, -- Shade of Naxxramas
16194, -- Unholy Axe
16215, -- Unholy Staff
16216, -- Unholy Swords
16298, -- Spectral Soldier
16379, -- Spirit of the Damned
16423, -- Spectral Apparition
16429, -- Soul Weaver
16437, -- Spectral Spirit
16439, -- Fairbanks Transformed
16440, -- Highlord Mograine
16449, -- Spirit of Naxxramas
16775, -- Spirit of Mograine
16776, -- Spirit of Blaumeux
16777, -- Spirit of Zeliek
16778, -- Spirit of Korth'azz
17415, -- Lordaeron Mage
17466 -- Lordaeron Spirit
);

-- Generally, undead are also immune against sleep effects. - Trugge Research, valid for tbc+ too
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|512 WHERE `CreatureType` = 6; -- CREATURE_TYPE_UNDEAD + MECHANIC_SLEEP

-- Reapply Generic Immunity against Fear and Horror for Undeads.
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|(16+8388608) WHERE `CreatureType` = 6; -- CREATURE_TYPE_UNDEAD + MECHANIC_FEAR + MECHANIC_HORROR

DELETE FROM `creature_template_addon` WHERE `entry` = 6388; -- Zanzil Skeleton standing ontop Skeleton Mount

-- tbc+ (2.4.3) too, not just classic.
-- UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`&~16384 WHERE `CreatureType` = 9; -- CREATURE_TYPE_MECHANICAL + NO MECHANIC_BLEED Immunity
-- UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16384 WHERE `entry` IN ( -- CREATURE_TYPE_UNDEAD - Non-corporeal + MECHANIC_BLEED
-- 16194, -- Unholy Axe
-- 16215, -- Unholy Staff
-- 16216 -- Unholy Swords
-- );

