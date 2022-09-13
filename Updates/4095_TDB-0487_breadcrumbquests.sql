-- Add Breadcrumb Quests (Source: TrinityCore)
-- https://github.com/cmangos/mangos-tbc/commit/ed29981c2fb645132fed47e97156d58ecd56b1e1
-- If we have one of the breadcrumb quests, then we can't accept the target quest
-- Speak with X Quests are no longer takeable when you already on or completed the quest they are leading to
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5 WHERE `entry` = 163; -- Raven Hill -> Jitters' Growling Gut (https://tbc.wowhead.com/quest=163/raven-hill#comments:id=73888)
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 5; -- Had 163 as PrevQuestId, so all quests need to be checked
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 95 WHERE `entry` = 164; -- Deliveries to Sven -> Sven's Revenge
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 148 WHERE `entry` = 165; -- The Hermit -> Supplies from Darkshire
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 148;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6383, `NextQuestId` = 0 WHERE `entry` = 235; -- The Ashenvale Hunt -> The Ashenvale Hunt
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6383, `NextQuestId` = 0 WHERE `entry` = 742; -- The Ashenvale Hunt -> The Ashenvale Hunt
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6383, `NextQuestId` = 0 WHERE `entry` = 6382; -- The Ashenvale Hunt -> The Ashenvale Hunt
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11 WHERE `entry` = 239; -- Westbrook Garrison Needs Help! -> Riverpaw Gnoll Bounty
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 11; -- https://tbc.wowhead.com/quest=76/the-jasperlode-mine#comments:id=104906
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 364 WHERE `entry` = 363; -- Rude Awakening -> The Mindless Ones
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 364;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 413 WHERE `entry` = 415; -- Rejold's New Brew -> Shimmer Stout
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 429 WHERE `entry` = 428; -- Lost Deathstalkers -> Wild Hearts
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 429;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 297 WHERE `entry` = 436; -- Ironband's Excavation -> Gathering Idols
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 276 WHERE `entry` = 463; -- The Greenwarden -> Tramping Paws
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 466 WHERE `entry` = 467; -- Stonegear's Search -> Search for Incendicite
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 466;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 455 WHERE `entry` = 468; -- Report to Mountaineer Rockgar -> The Algaz Gauntlet
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 455;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 518 WHERE `entry` = 495; -- The Crown of Will -> The Crown of Will
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 518;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 639 WHERE `entry` = 638; -- Trollbane -> Sigil of Strom
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 639;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 691 WHERE `entry` = 690; -- Malin's Request -> Worth Its Weight in Gold
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 691;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 729 WHERE `entry` = 730; -- Trouble In Darkshore? -> The Absent Minded Prospector
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 788 WHERE `entry` = 787; -- The New Horde -> Cutting Teeth
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 788 WHERE `entry` = 4641; -- Your Place In The World -> Cutting Teeth
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 844 WHERE `entry` = 860; -- Sergra Darkthorn -> Plainstrider Menace
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 870 WHERE `entry` = 886; -- The Barrens Oases -> The Forgotten Pools
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3761 WHERE `entry` = 936; -- Assisting Arch Druid Runetotem -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3761 WHERE `entry` = 3762; -- Assisting Arch Druid Runetotem -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3761 WHERE `entry` = 3784; -- Assisting Arch Druid Runetotem -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1057 WHERE `entry` = 1056; -- Journey to Stonetalon Peak -> Reclaiming the Charred Vale
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1085 WHERE `entry` = 1070; -- On Guard in Stonetalon -> On Guard in Stonetalon
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 353 WHERE `entry` = 1097; -- Elmore's Task -> Stormpike's Delivery
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 353;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1204 WHERE `entry` = 1260; -- Morgan Stern -> Mudrock Soup and Bugs
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1204;
-- UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11123 WHERE `entry` = 1282; -- They Call Him Smiling Jim -> Inspecting the Ruins - TBC+
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 11123;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1302 WHERE `entry` = 1301; -- James Hyal -> James Hyal
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1302;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1338 WHERE `entry` = 1339; -- Mountaineer Stormpike's Task -> Stormpike's Order
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1420 WHERE `entry` = 1418; -- Neeka Bloodscar -> Report to Helgrum
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1395 WHERE `entry` = 1477; -- Vital Supplies -> Supplies for Nethergarde
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1395;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1473, `NextQuestId` = 0 WHERE `entry` = 1478; -- Halgar's Summons -> Creature of the Void
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1473, `NextQuestId` = 0 WHERE `entry` = 10789; -- Return to Carendin Halgar -> Creature of the Void
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1501, `NextQuestId` = 0 WHERE `entry` = 1506; -- Gan'rul's Summons -> Creature of the Void
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1501, `NextQuestId` = 0 WHERE `entry` = 10790; -- Return to Gan'rul Bloodeye -> Creature of the Void
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 1522; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 1523; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 2983; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1524, `NextQuestId` = 0 WHERE `entry` = 2984; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 1528; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 1529; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 2985; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1530, `NextQuestId` = 0 WHERE `entry` = 2986; -- Call of Water -> Call of Water
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1688 WHERE `entry` = 1685; -- Gakin's Summons -> Surena Caledon
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1688 WHERE `entry` = 1715; -- The Slaughtered Lamb -> Surena Caledon
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1699 WHERE `entry` = 1698; -- Yorus Barleybrew -> The Rethban Gauntlet
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1699;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1705 WHERE `entry` = 1700; -- Grimand Elmore -> Burning Blood
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1705;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1710 WHERE `entry` = 1703; -- Mathiel -> Sunscorched Shells
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1710;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1708 WHERE `entry` = 1704; -- Klockmort Spannerspan -> Iron Coral
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1708;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1716 WHERE `entry` = 1717; -- Gakin's Summons -> Devourer of Souls
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1716;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1758 WHERE `entry` = 1798; -- Seeking Strahad -> Tome of the Cabal (Alliance)
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1758;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1824 WHERE `entry` = 1823; -- Speak with Ruga -> Trial at the Field of Giants
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1824;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1842 WHERE `entry` = 1839; -- Ula'elek and the Brutal Gauntlets -> Satyr Hooves
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1842;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1844 WHERE `entry` = 1840; -- Orm Stonehoof and the Brutal Helm -> Chimaeric Horn
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1844;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1846 WHERE `entry` = 1841; -- Velora Nitely and the Brutal Legguards -> Dragonmaw Shinbones
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1846;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 0 WHERE `entry` = 1860; -- Speak with Jennea -> Mirror Lake exclusive group!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 0 WHERE `entry` = 1879; -- Speak with Bink -> Mage-tastic Gizmonitor exclusive group!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1882 WHERE `entry` = 1881; -- Speak with Anastasia -> The Balnir Farmstead
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1882;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1884 WHERE `entry` = 1883; -- Speak with Un'thuwa -> Ju-Ju Heaps
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1884;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1920 WHERE `entry` = 1919; -- Report to Jennea -> Investigate the Blue Recluse
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1920;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1938 WHERE `entry` = 1939; -- High Sorcerer Andromath -> Ur's Treatise on Shadow Magic
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1938;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1944 WHERE `entry` = 1943; -- Speak with Deino -> Waters of Xavian
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1944;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1960 WHERE `entry` = 1959; -- Report to Anastasia -> Investigate the Alchemist Shop
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1960;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2038 WHERE `entry` = 2039; -- Find Bingles -> Bingles' Missing Supplies
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2040 WHERE `entry` = 2041; -- Speak with Shoni -> Underground Assault
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2206, `NextQuestId` = 0 WHERE `entry` = 2205; -- Seek out SI: 7 -> Snatch and Grab
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2238 WHERE `entry` = 2218; -- Road to Salvation -> Simple Subterfugin'
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2238;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2242, `NextQuestId` = 0 WHERE `entry` = 2241; -- The Apple Falls -> Destiny Calls (this could be different, or could be breadcrumb for more)
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2242;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2260, `NextQuestId` = 0, `PrevQuestId` = 0 WHERE `entry` = 2259; -- Erion Shadewhisper -> Erion's Behest
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2260;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2281 WHERE `entry` = 2260; -- Erion's Behest -> Redridge Rendezvous
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2281 WHERE `entry` = 2298; -- Kingly Shakedown -> Redridge Rendezvous
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2281, `PrevQuestId` = 0 WHERE `entry` = 2300; -- SI:7 -> Redridge Rendezvous
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2298, `PrevQuestId` = 0 WHERE `entry` = 2299; -- To Hulfdan! -> Kingly Shakedown
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2298;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2770 WHERE `entry` = 2769; -- The Brassbolts Brothers -> Gahz'rilla
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2846 WHERE `entry` = 2861; -- Tabetha's Task -> Tiara of the Deep
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2865 WHERE `entry` = 2864; -- Tran'rek -> Scarab Shells
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2865;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2922 WHERE `entry` = 2923; -- Tinkmaster Overspark -> Save Techbot's Brain!
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2922;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2924 WHERE `entry` = 2925; -- Klockmort's Essentials -> Essential Artificials
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2930 WHERE `entry` = 2931; -- Castpipe's Task -> Data Rescue
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 2975 WHERE `entry` = 2981; -- A Threat in Feralas -> The Ogres of Feralas
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1801 WHERE `entry` = 2996; -- Seeking Strahad -> Tome of the Cabal (Horde)
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1801 WHERE `entry` = 3001; -- Seeking Strahad -> Tome of the Cabal (Horde)
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3764 WHERE `entry` = 3763; -- Assisting Arch Druid Staghelm -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3764 WHERE `entry` = 3789; -- Assisting Arch Druid Staghelm -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3764 WHERE `entry` = 3790; -- Assisting Arch Druid Staghelm -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3764 WHERE `entry` = 10520; -- Assisting Arch Druid Staghelm -> Un'Goro Soil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1275 WHERE `entry` = 3765; -- The Corruption Abroad -> Researching the Corruption
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1275;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3791 WHERE `entry` = 3787; -- Jonespyre's Request -> The Mystery of Morrowgrain
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 3791 WHERE `entry` = 3788; -- Jonespyre's Request -> The Mystery of Morrowgrain
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4126 WHERE `entry` = 4128; -- Ragnar Thunderbrew -> Hurley Blackbreath
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4126;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4134 WHERE `entry` = 4133; -- Vivian Lagrave -> Lost Thunderbrew Recipe
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4134;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4136 WHERE `entry` = 4324; -- Yuka Screwspigot -> Ribbly Screwspigot
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4136;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1011 WHERE `entry` = 4581; -- Kayneth Stillwind -> Forsaken Diseases
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1011;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1796 WHERE `entry` = 4736; -- In Search of Menara Voidrender -> Components for the Enchanted Gold Bloodrobe
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1796 WHERE `entry` = 4737; -- In Search of Menara Voidrender -> Components for the Enchanted Gold Bloodrobe
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1796 WHERE `entry` = 4738; -- In Search of Menara Voidrender -> Components for the Enchanted Gold Bloodrobe
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1796 WHERE `entry` = 4739; -- In Search of Menara Voidrender -> Components for the Enchanted Gold Bloodrobe
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4764 WHERE `entry` = 4766; -- Mayara Brightwing -> Doomrigger's Clasp
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4764;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4768 WHERE `entry` = 4769; -- Vivian Lagrave and the Darkstone Tablet -> The Darkstone Tablet
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4768;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4734 WHERE `entry` = 4907; -- Tinkee Steamboil -> Egg Freezing
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 4734;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1799 WHERE `entry` = 4965; -- Knowledge of the Orb of Orahil -> Fragments of the Orb of Orahil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1799 WHERE `entry` = 4967; -- Knowledge of the Orb of Orahil -> Fragments of the Orb of Orahil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1799 WHERE `entry` = 4968; -- Knowledge of the Orb of Orahil -> Fragments of the Orb of Orahil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1799 WHERE `entry` = 4969; -- Knowledge of the Orb of Orahil -> Fragments of the Orb of Orahil
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5092, `NextQuestId` = 0 WHERE `entry` = 5066; -- A Call to Arms: The Plaguelands! -> Clear the Way
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5092, `NextQuestId` = 0 WHERE `entry` = 5090; -- A Call to Arms: The Plaguelands! -> Clear the Way
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5092, `NextQuestId` = 0 WHERE `entry` = 5091; -- A Call to Arms: The Plaguelands! -> Clear the Way
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5092, `NextQuestId` = 0 WHERE `entry` = 10373; -- A Call to Arms: The Plaguelands! -> Clear the Way
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5096, `NextQuestId` = 0 WHERE `entry` = 5093; -- A Call to Arms: The Plaguelands! -> Scarlet Diversions
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5096, `NextQuestId` = 0 WHERE `entry` = 5094; -- A Call to Arms: The Plaguelands! -> Scarlet Diversions
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5096, `NextQuestId` = 0 WHERE `entry` = 5095; -- A Call to Arms: The Plaguelands! -> Scarlet Diversions
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5096, `NextQuestId` = 0 WHERE `entry` = 10374; -- A Call to Arms: The Plaguelands! -> Scarlet Diversions
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5244 WHERE `entry` = 5249; -- To Winterspring! -> The Ruins of Kel'Theril
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5244 WHERE `entry` = 5250; -- Starfall -> The Ruins of Kel'Theril
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 261 WHERE `entry` = 6141; -- Brother Anton -> Down the Scarlet Path
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 5082 WHERE `entry` = 6603; -- Trouble in Winterspring! -> Threat of the Winterfall
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 5082;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4861 WHERE `entry` = 6604; -- Enraged Wildkin -> Enraged Wildkin
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 4505 WHERE `entry` = 6605; -- A Strange One -> Well of Corruption
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6607 WHERE `entry` = 6609; -- I Got Nothin' Left! -> Nat Pagle, Angler Extreme
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6610 WHERE `entry` = 6611; -- To Gadgetzan You Go! -> Clamlette Surprise
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6610 WHERE `entry` = 6612; -- I Know A Guy... -> Clamlette Surprise
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6622 WHERE `entry` = 6623; -- Horde Trauma -> Triage
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 6624 WHERE `entry` = 6625; -- Alliance Trauma -> Triage
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 7489 WHERE `entry` = 7492; -- Camp Mojache -> Lethtendris's Web
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 7489;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 7488 WHERE `entry` = 7494; -- Feathermoon Stronghold -> Lethtendris's Web
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 7488;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 8280, `NextQuestId` = 0 WHERE `entry` = 8275; -- Taking Back Silithus -> Securing the Supply Lines
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 8280, `NextQuestId` = 0 WHERE `entry` = 8276; -- Taking Back Silithus -> Securing the Supply Lines
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9704 WHERE `entry` = 8347; -- Aiding the Outrunners -> Slain by the Wretched
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 9704;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 8414 WHERE `entry` = 8415; -- Chillwind Camp -> Dispelling Evil
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 8414;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 8889 WHERE `entry` = 8888; -- The Magister's Apprentice -> Deactivating the Spire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9052 WHERE `entry` = 9063; -- Torwa Pathfinder -> Bloodpetal Poison
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 9052;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 8490 WHERE `entry` = 9253; -- Runewarden Deryan -> Powering our Defenses
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 8490;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9280 WHERE `entry` = 9279; -- You Survived! -> Replenishing the Healing Crystals
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 9280;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9252 WHERE `entry` = 9358; -- Ranger Sareyn -> Defending Fairbreeze Village
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10302 WHERE `entry` = 9371; -- Botanist Taerix -> Volatile Mutations
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` IN (10302,9371);
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9464 WHERE `entry` = 9462; -- Call of Fire -> Call of Fire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9501 WHERE `entry` = 9500; -- Call of Water -> Call of Water (Tuluun <Shaman Trainer>)
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9501 WHERE `entry` = 9502; -- Call of Water -> Call of Water (Sulaa <Shaman Trainer>)
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9501 WHERE `entry` = 10490; -- Call of Water -> Call of Water (Farseer Umbrua <Shaman Trainer>)
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9517 WHERE `entry` = 9533; -- A Helping Hand -> A Shameful Waste
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9552 WHERE `entry` = 9547; -- Call of Air -> Call of Air
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9552 WHERE `entry` = 9551; -- Call of Air -> Call of Air
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9552 WHERE `entry` = 10491; -- Call of Air -> Call of Air
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1396 WHERE `entry` = 9609; -- Help Watcher Biggs -> Encroaching Wildlife
UPDATE `quest_template` SET `PrevQuestId` = 8328, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10068; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `PrevQuestId` = 9676, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10069; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `PrevQuestId` = 9393, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10070; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `PrevQuestId` = 9392, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10071; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `PrevQuestId` = 8564, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10072; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `PrevQuestId` = 8563, `BreadcrumbForQuestId` = 8330, `NextQuestId` = 0 WHERE `entry` = 10073; -- Well Watcher Solanian -> Solanian's Belongings
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10186 WHERE `entry` = 10183; -- Off To Area 52 -> You're Hired!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10186 WHERE `entry` = 11036; -- Out of This World Produce! -> You're Hired!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10186 WHERE `entry` = 11037; -- A Strange Vision -> You're Hired!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10186 WHERE `entry` = 11040; -- Parts for the Rocket-Chief -> You're Hired!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10186 WHERE `entry` = 11042; -- A Mystifying Vision -> You're Hired!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1699 WHERE `entry` = 10371; -- Yorus Barleybrew -> The Rethban Gauntlet
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 1699;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1472 WHERE `entry` = 10605; -- Carendin Summons -> Devourer of Souls
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 9529 WHERE `entry` = 10788; -- Return to Talionia -> The Stone
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 7652 WHERE `entry` = 10891; -- Imperial Plate Armor -> A Blue Light Bargain
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 7652 WHERE `entry` = 10892; -- Imperial Plate Armor -> A Blue Light Bargain
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10241 WHERE `entry` = 11038; -- Assist Exarch Orelis -> Distraction at Manaforge B'naar
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 10241;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 10189 WHERE `entry` = 11039; -- Report to Spymaster Thalodien -> Manaforge B'naar
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1218 WHERE `entry` = 11177; -- The Hermit of Swamplight Manor -> Marsh Frog Legs
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 1218 WHERE `entry` = 11225; -- The Hermit of Witch Hill -> Marsh Frog Legs
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11488 WHERE `entry` = 11481; -- Crisis at the Sunwell -> Magisters' Terrace
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11488 WHERE `entry` = 11482; -- Duty Calls -> Magisters' Terrace

-- wotlk+
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11176 WHERE `entry` = 11175; -- My Daughter -> See to the Operations
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11313 WHERE `entry` = 11302; -- The Enigmatic Frost Nymphs -> Spirits of the Ice
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11313 WHERE `entry` = 11312; -- The Frozen Glade -> Spirits of the Ice
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11269 WHERE `entry` = 11406; -- Everything Must Be Ready -> Down to the Wire
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11504 WHERE `entry` = 11573; -- Orfus of Kamagua -> The Dead Rise!
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12000, `NextQuestId` = 0 WHERE `entry` = 11995; -- Your Presence is Required at Stars' Rest -> Rifle the Bodies
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12000, `NextQuestId` = 0 WHERE `entry` = 12440; -- To Stars' Rest! -> Rifle the Bodies
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11999 WHERE `entry` = 11996; -- Rifle the Bodies -> Your Presence is Required at Agmar's Hammer
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12328, `NextQuestId` = 0 WHERE `entry` = 12161; -- Ruuna the Blind -> Ruuna's Request
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12328, `NextQuestId` = 0 WHERE `entry` = 12425; -- Ruuna the Blind -> Ruuna's Request
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12188, `NextQuestId` = 0 WHERE `entry` = 12182; -- To Venomspite! -> The Forsaken Blight and You: How Not to Die
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12188, `NextQuestId` = 0 WHERE `entry` = 12189; -- Imbeciles Abound! -> The Forsaken Blight and You: How Not to Die
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11984 WHERE `entry` = 12208; -- Good Troll Hunting -> Filling the Cages
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 11984 WHERE `entry` = 12210; -- Troll Season! -> Filling the Cages
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12195 WHERE `entry` = 12451; -- Onward to Camp Oneqwah -> The Unexpected 'Guest'
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12044 WHERE `entry` = 12469; -- Return to Sender -> Stocking Up
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12292 WHERE `entry` = 12511; -- The Hills Have Us -> Local Support
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12545 WHERE `entry` = 12542; -- The Call Of The Crusade -> The Cleansing Of Jintha'kalar
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 12545;
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12503 WHERE `entry` = 12795; -- Taking a Stand -> Defend the Stand
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12930 WHERE `entry` = 12885; -- The Exiles of Ulduar -> Rare Earth
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 12930 WHERE `entry` = 12929; -- The Earthen of Ulduar -> Rare Earth
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 13036 WHERE `entry` = 13226; -- Judgment Day Comes! -> Honor Above All Else
UPDATE `quest_template` SET `BreadcrumbForQuestId` = 13036 WHERE `entry` = 13227; -- Judgment Day Comes! -> Honor Above All Else

