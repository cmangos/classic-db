-- Revert some NPCs to their elite stats because they were elite in Classic (rank is already correct, but not stats)
-- They were using TBC stats instead of their Classic ones
-- Damn patch 2.3
UPDATE creature_template SET UnitClass = 8, MinLevelHealth = 2309, MaxLevelHealth = 2309, HealthMultiplier = 3, MinLevelMana = 2253, MaxLevelMana = 2253, ArmorMultiplier = 1 WHERE Entry = 314; -- Eliza
UPDATE creature_template SET MinLevel = 26, MaxLevel = 26, MinLevelHealth = 1794, MaxLevelHealth = 1794, HealthMultiplier = 3, MinLevelMana = 1707, MaxLevelMana = 1707, ArmorMultiplier = 1 WHERE Entry = 397; -- Morganth
UPDATE creature_template SET MinLevel = 18, MaxLevel = 18, MinLevelHealth = 1062, MaxLevelHealth = 1062, HealthMultiplier = 3, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 599; -- Marisa du'Paige
UPDATE creature_template SET MinLevelHealth = 1452, MaxLevelHealth = 1452, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 626; -- Foreman Thistlenettle
UPDATE creature_template SET MinLevelHealth = 5148, MaxLevelHealth = 5346, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 678; -- Mosh'Ogg Mauler
UPDATE creature_template SET MinLevelHealth = 4119, MaxLevelHealth = 4278, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 679; -- Mosh'Ogg Shaman
UPDATE creature_template SET MinLevelHealth = 5544, MaxLevelHealth = 5544, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 680; -- Mosh'Ogg Lord
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 709; -- Mosh'Ogg Warmonger
UPDATE creature_template SET MinLevelHealth = 3603, MaxLevelHealth = 3741, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 710; -- Mosh'Ogg Spellcrafter
UPDATE creature_template SET MinLevelHealth = 5346, MaxLevelHealth = 5346, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 723; -- Mosh'Ogg Butcher
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4572, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 728; -- Bhag'thera
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 742; -- Green Wyrmkin
UPDATE creature_template SET MinLevelHealth = 3963, MaxLevelHealth = 4119, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 743; -- Wyrmkin Dreamwalker
UPDATE creature_template SET MinLevelHealth = 4953, MaxLevelHealth = 5148, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 744; -- Green Scalebane
UPDATE creature_template SET MinLevelHealth = 5148, MaxLevelHealth = 5346, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 745; -- Scalebane Captain
UPDATE creature_template SET MinLevelHealth = 6468, MaxLevelHealth = 6468, HealthMultiplier = 3.5, ArmorMultiplier = 1 WHERE Entry = 746; -- Elder Dragonkin
UPDATE creature_template SET MinLevelHealth = 4377, MaxLevelHealth = 4572, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 813; -- Colonel Kurzen
UPDATE creature_template SET MinLevel = 47, MaxLevel = 47, MinLevelHealth = 6830, MaxLevelHealth = 6830, HealthMultiplier = 4.29, MinLevelMana = 1640, MaxLevelMana = 1640, ArmorMultiplier = 1 WHERE Entry = 818; -- Mai'Zoth
UPDATE creature_template SET MinLevelHealth = 3660, MaxLevelHealth = 3831, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 871; -- Saltscale Warrior
UPDATE creature_template SET MinLevelHealth = 3150, MaxLevelHealth = 3279, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 873; -- Saltscale Oracle
UPDATE creature_template SET MinLevelHealth = 3279, MaxLevelHealth = 3279, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 875; -- Saltscale Tide Lord
UPDATE creature_template SET MinLevelHealth = 3660, MaxLevelHealth = 3831, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 877; -- Saltscale Forager
UPDATE creature_template SET MinLevelHealth = 3660, MaxLevelHealth = 3831, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 879; -- Saltscale Hunter
UPDATE creature_template SET UnitClass = 1, MinLevelHealth = 6467, MaxLevelHealth = 6467, HealthMultiplier = 3.25, Armor = 2853, ArmorMultiplier = 1 WHERE Entry = 1063; -- Jade
UPDATE creature_template SET MinLevelHealth = 4487, MaxLevelHealth = 4487, HealthMultiplier = 4.64, MinLevelMana = 1007, MaxLevelMana = 1007, ArmorMultiplier = 1 WHERE Entry = 1364; -- Balgaras the Foul
UPDATE creature_template SET MinLevelHealth = 11368, MaxLevelHealth = 11368, HealthMultiplier = 4.96, ArmorMultiplier = 1 WHERE Entry = 1559; -- King Mukla
UPDATE creature_template SET MinLevelHealth = 8097, MaxLevelHealth = 8352, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 1788; -- Skeletal Warlord
UPDATE creature_template SET MinLevelHealth = 9302, MaxLevelHealth = 9302, HealthMultiplier = 3.24, MinLevelMana = 0, MaxLevelMana = 0, ArmorMultiplier = 1 WHERE Entry = 1800; -- Cold Wraith -- NO LONGER IN GAME
UPDATE creature_template SET MinLevelHealth = 8522, MaxLevelHealth = 8522, HealthMultiplier = 3.26, ArmorMultiplier = 1 WHERE Entry = 1801; -- Blood Wraith -- NO LONGER IN GAME
UPDATE creature_template SET MinLevel = 55, MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 1827; -- Scarlet Sentinel
UPDATE creature_template SET MinLevelHealth = 5667, MaxLevelHealth = 5847, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 1832; -- Scarlet Magus
UPDATE creature_template SET MinLevelHealth = 6273, MaxLevelHealth = 6477, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 1834; -- Scarlet Paladin
UPDATE creature_template SET MinLevelHealth = 1584, MaxLevelHealth = 1584, HealthMultiplier = 3, MinLevelMana = 1545, MaxLevelMana = 1545, ArmorMultiplier = 1 WHERE Entry = 1947; -- Thule Ravenclaw
UPDATE creature_template SET MinLevelHealth = 3171, MaxLevelHealth = 3171, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2091; -- Chieftain Nek'rosh
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2558; -- Witherbark Berserker
UPDATE creature_template SET MinLevelHealth = 2706, MaxLevelHealth = 2805, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2590; -- Syndicate Conjuror
UPDATE creature_template SET MinLevelHealth = 2910, MaxLevelHealth = 3012, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2591; -- Syndicate Magus
UPDATE creature_template SET MinLevelHealth = 11034, MaxLevelHealth = 11034, HealthMultiplier = 7.24, ArmorMultiplier = 1 WHERE Entry = 2597; -- Lord Falconcrest
UPDATE creature_template SET UnitClass = 2, Rank = 2, MinLevel = 39, MaxLevel = 39, Armor = 1517, MinLevelHealth = 5900, MaxLevelHealth = 5900, HealthMultiplier = 5, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 2598; -- Darbel Montrose
UPDATE creature_template SET MinLevelHealth = 4185, MaxLevelHealth = 4185, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2599; -- Otto
UPDATE creature_template SET MinLevelHealth = 4278, MaxLevelHealth = 4278, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2607; -- Prince Galen Trollbane
UPDATE creature_template SET MinLevelHealth = 5102, MaxLevelHealth = 5102, HealthMultiplier = 3.09, ArmorMultiplier = 1 WHERE Entry = 2611; -- Fozruk
UPDATE creature_template SET MinLevelHealth = 5493, MaxLevelHealth = 5493, HealthMultiplier = 4.84, PowerMultiplier = 1.5, ArmorMultiplier = 1 WHERE Entry = 2612; -- Lieutenant Valorcall
UPDATE creature_template SET MinLevelHealth = 4185, MaxLevelHealth = 4185, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2635; -- Elder Saltwater Crocolisk
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2780; -- Caretaker Nevlin
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2781; -- Caretaker Weston
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2782; -- Caretaker Alaric
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4572, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2783; -- Marez Cowl
UPDATE creature_template SET MinLevel = 39, MaxLevel = 40, MinLevelHealth = 3540, MaxLevelHealth = 3678, HealthMultiplier = 3, MinLevelMana = 1236, MaxLevelMana = 1283, ArmorMultiplier = 1 WHERE Entry = 2892; -- Stonevault Seer
UPDATE creature_template SET MinLevelHealth = 4185, MaxLevelHealth = 4185, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2932; -- Magregan Deepshadow
UPDATE creature_template SET MinLevel = 16, MinLevelHealth = 1068, MaxLevelHealth = 1158, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 3634; -- Deviate Stalker
UPDATE creature_template SET MinLevelHealth = 1347, MaxLevelHealth = 1347, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 3652; -- Trigore the Lasher
UPDATE creature_template SET MinLevelHealth = 1251, MaxLevelHealth = 1251, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 3655; -- Mad Magglish
UPDATE creature_template SET Rank = 2, Minlevel = 20, MaxLevel = 20, MinLevelHealth = 1927, MaxLevelHealth = 1927, HealthMultiplier = 4.45, MinLevelMana = 490, MaxLevelMana = 490, ArmorMultiplier = 1 WHERE Entry = 3672; -- Boahn
UPDATE creature_template SET MinLevelHealth = 2097, MaxLevelHealth = 2097, HealthMultiplier = 3, Armor = 1037, ArmorMultiplier = 1 WHERE Entry = 3872; -- Deathsworn Captain
UPDATE creature_template SET MinLevelHealth = 2319, MaxLevelHealth = 2433, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4280; -- Scarlet Preserver
UPDATE creature_template SET MinLevelHealth = 2715, MaxLevelHealth = 2865, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4281; -- Scarlet Scout
UPDATE creature_template SET MinLevelHealth = 2112, MaxLevelHealth = 2211, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4282; -- Scarlet Magician
UPDATE creature_template SET MinLevelHealth = 2865, MaxLevelHealth = 3018, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4283; -- Scarlet Sentry
UPDATE creature_template SET MinLevelHealth = 2433, MaxLevelHealth = 2550, HealthMultiplier = 3, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 4284; -- Scarlet Augur
UPDATE creature_template SET MinLevelHealth = 2433, MaxLevelHealth = 2550, HealthMultiplier = 3, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 4285; -- Scarlet Disciple
UPDATE creature_template SET MinLevelHealth = 4119, MaxLevelHealth = 4278, HealthMultiplier = 3, MinLevelMana = 1432, MaxLevelMana = 1483, ArmorMultiplier = 1 WHERE Entry = 4328; -- Firemane Scalebane
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4329; -- Firemane Scout
UPDATE creature_template SET MinLevelHealth = 3963, MaxLevelHealth = 4119, HealthMultiplier = 3, MinLevelMana = 1381, MaxLevelMana = 1432, ArmorMultiplier = 1 WHERE Entry = 4331; -- Firemane Ash Tail
UPDATE creature_template SET MinLevelHealth = 4119, MaxLevelHealth = 4278, HealthMultiplier = 3, MinLevelMana = 1432, MaxLevelMana = 1483, ArmorMultiplier = 1 WHERE Entry = 4334; -- Firemane Flamecaller
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4345; -- Drywallow Daggermaw
UPDATE creature_template SET MinLevelHealth = 5544, MaxLevelHealth = 5757, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4465; -- Vilebranch Warrior
UPDATE creature_template SET MinLevelHealth = 2970, MaxLevelHealth = 2970, HealthMultiplier = 3.11, ArmorMultiplier = 1 WHERE Entry = 4499; -- Rok'Alim the Pounder
UPDATE creature_template SET MinLevelHealth = 1563, MaxLevelHealth = 1686, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4789; -- Fallenroot Rogue
UPDATE creature_template SET MinLevelHealth = 1299, MaxLevelHealth = 1392, HealthMultiplier = 3, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 4802; -- Blackfathom Tide Priestess
UPDATE creature_template SET MinLevelHealth = 1392, MaxLevelHealth = 1494, HealthMultiplier = 3, PowerMultiplier = 2, MaxLevelMana = 1090, ArmorMultiplier = 1 WHERE Entry = 4803; -- Blackfathom Oracle
UPDATE creature_template SET UnitClass = 8, MinLevelHealth = 2877, MaxLevelHealth = 2983, HealthMultiplier = 3.19, MinLevelMana = 2680, MaxLevelMana = 2763, ArmorMultiplier = 1 WHERE Entry = 4844; -- Shadowforge Surveyor
UPDATE creature_template SET MinLevelHealth = 3959, MaxLevelHealth = 4142, HealthMultiplier = 3.10, ArmorMultiplier = 1 WHERE Entry = 4845; -- Shadowforge Ruffian
UPDATE creature_template SET MinLevelHealth = 3660, MaxLevelHealth = 3831, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4846; -- Shadowforge Digger
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4851; -- Stonevault Rockchewer
UPDATE creature_template SET MinLevelHealth = 3831, MaxLevelHealth = 4008, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 4856; -- Stonevault Cave Hunter
UPDATE creature_template SET MinLevelHealth = 4743, MaxLevelHealth = 4743, HealthMultiplier = 3.4, ArmorMultiplier = 1 WHERE Entry = 4872; -- Obsidian Golem
UPDATE creature_template SET MinLevelHealth = 5544, MaxLevelHealth = 5757, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5224; -- Murk Slitherer
UPDATE creature_template SET MinLevelHealth = 5757, MaxLevelHealth = 5970, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5225; -- Murk Spitter
UPDATE creature_template SET MinLevelHealth = 5544, MaxLevelHealth = 5757, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5235; -- Fungal Ooze
UPDATE creature_template SET MinLevelHealth = 4605, MaxLevelHealth = 4776, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5269; -- Atal'ai Priest
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 6186, HealthMultiplier = 3, Armor = 2907, ArmorMultiplier = 1 WHERE Entry = 5399; -- Veyzhak the Cannibal
UPDATE creature_template SET MinLevelHealth = 6414, MaxLevelHealth = 6414, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5400; -- Zekkis
UPDATE creature_template SET MinLevelHealth = 4953, MaxLevelHealth = 5148, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5645; -- Sandfury Hideskinner
UPDATE creature_template SET MinLevelHealth = 5148, MaxLevelHealth = 5346, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5646; -- Sandfury Axe Thrower
UPDATE creature_template SET MinLevelHealth = 3776, MaxLevelHealth = 3922, HealthMultiplier = 2.75, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 5647; -- Sandfury Firecaller
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 6186, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5833; -- Margol the Rager
UPDATE creature_template SET Rank = 2, MinLevelHealth = 1158, MaxLevelHealth = 1158, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5841; -- Rocklance
UPDATE creature_template SET MinLevelHealth = 4776, MaxLevelHealth = 4950, HealthMultiplier = 3, MinLevelMana = 1640, MaxLevelMana = 1695, ArmorMultiplier = 1 WHERE Entry = 5860; -- Twilight Dark Shaman
UPDATE creature_template SET MinLevelHealth = 6165, MaxLevelHealth = 6393, HealthMultiplier = 2.99, ArmorMultiplier = 1 WHERE Entry = 5861; -- Twilight Fire Guard
UPDATE creature_template SET MinLevelHealth = 4491, MaxLevelHealth = 4653, HealthMultiplier = 3, MinLevelMana = 4281, MaxLevelMana = 4393, ArmorMultiplier = 1 WHERE Entry = 5862; -- Twilight Geomancer
UPDATE creature_template SET MinLevelHealth = 1815, MaxLevelHealth = 1953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 6132; -- Razorfen Servitor
UPDATE creature_template SET MinLevelHealth = 13070, MaxLevelHealth = 13070, HealthMultiplier = 5, ArmorMultiplier = 1 WHERE Entry = 6140; -- Hetaera
UPDATE creature_template SET Minlevel = 53, MaxLevel = 54, Rank = 2, MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, Armor = 3237, ArmorMultiplier = 1 WHERE Entry = 6646; -- Monnos the Elder
UPDATE creature_template SET MinLevelHealth = 4377, MaxLevelHealth = 4572, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 6733; -- Stonevault Basher
UPDATE creature_template SET MinLevelHealth = 7113, MaxLevelHealth = 7359, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7040; -- Black Dragonspawn
UPDATE creature_template SET MinLevelHealth = 5151, MaxLevelHealth = 5319, HealthMultiplier = 3, PowerMultiplier = 2, MinLevelMana = 9530, MaxLevelMana = 9792, ArmorMultiplier = 1 WHERE Entry = 7041; -- Black Wyrmkin
UPDATE creature_template SET MinLevelHealth = 8097, MaxLevelHealth = 8352, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7042; -- Flamescale Dragonspawn
UPDATE creature_template SET MinLevelHealth = 5847, MaxLevelHealth = 6030, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7043; -- Flamescale Wyrmkin
UPDATE creature_template SET MinLevelHealth = 6645, MaxLevelHealth = 7113, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7044; -- Black Drake
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7842, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7045; -- Scalding Drake
UPDATE creature_template SET MinLevelHealth = 5148, MaxLevelHealth = 5346, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7091; -- Shadowforge Ambusher
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7135; -- Infernal Bodyguard
UPDATE creature_template SET MinLevelHealth = 7113, MaxLevelHealth = 7359, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7136; -- Infernal Sentry
UPDATE creature_template SET MinLevelHealth = 2413, MaxLevelHealth = 2514, HealthMultiplier = 2.6, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 7872; -- Death's Head Cultist
UPDATE creature_template SET MinLevelHealth = 3608, MaxLevelHealth = 3780, HealthMultiplier = 3.25, ArmorMultiplier = 1 WHERE Entry = 7873; -- Razorfen Battleguard
UPDATE creature_template SET MinLevelHealth = 2673, MaxLevelHealth = 2785, HealthMultiplier = 2.88, PowerMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 7874; -- Razorfen Thornweaver
UPDATE creature_template SET Rank = 2, MinLevelHealth = 3150, MaxLevelHealth = 3150, HealthMultiplier = 3, Armor = 1234, PowerMultiplier = 2, MinLevelMana = 2194, MaxLevelMana = 2194, ArmorMultiplier = 1 WHERE Entry = 7895; -- Ambassador Bloodrage
UPDATE creature_template SET MinLevelHealth = 6702, MaxLevelHealth = 6702, HealthMultiplier = 3.25, ArmorMultiplier = 1 WHERE Entry = 7977; -- Gammerita
UPDATE creature_template SET MinLevelHealth = 8020, MaxLevelHealth = 8020, HealthMultiplier = 5, PowerMultiplier = 2, MinLevelMana = 9012, MaxLevelMana = 9012, ArmorMultiplier = 1 WHERE Entry = 7995; -- Vile Priestess Hexx
UPDATE creature_template SET MinLevelHealth = 7755, MaxLevelHealth = 7755, HealthMultiplier = 5, PowerMultiplier = 2, MinLevelMana = 8786, MaxLevelMana = 8786, ArmorMultiplier = 1 WHERE Entry = 7996; -- Qiaga the Keeper
UPDATE creature_template SET ArmorMultiplier = 1 WHERE Entry = 8394; -- Roland Geardabbler
UPDATE creature_template SET MinLevelHealth = 15649, MaxLevelHealth = 15649, HealthMultiplier = 6.6, ArmorMultiplier = 1 WHERE Entry = 8400; -- Obsidion
UPDATE creature_template SET MinLevelHealth = 5130, MaxLevelHealth = 5502, HealthMultiplier = 3, PowerMultiplier = 2, MinLevelMana = 3500, MaxLevelMana = 3728, ArmorMultiplier = 1 WHERE Entry = 8419; -- Twilight Idolater
UPDATE creature_template SET MinLevel = 48, MinLevelHealth = 6186, MaxLevelHealth = 6186, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 8447; -- Clunk
UPDATE creature_template SET MinLevelHealth = 7755, MaxLevelHealth = 7755, HealthMultiplier = 5, PowerMultiplier = 2, MinLevelMana = 8786, MaxLevelMana = 8786, ArmorMultiplier = 1 WHERE Entry = 8636; -- Morta'gya the Keeper
UPDATE creature_template SET MinLevelHealth = 11075, MaxLevelHealth = 11075, HealthMultiplier = 5, ArmorMultiplier = 1 WHERE Entry = 8924; -- The Behemoth
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 9043; -- Scarshield Grunt
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 9044; -- Scarshield Sentry
UPDATE creature_template SET MinLevelHealth = 7842, MaxLevelHealth = 7842, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 9046; -- Scarshield Quartermaster
UPDATE creature_template SET UnitClass = 1, MinLevelHealth = 9093, MaxLevelHealth = 9093, HealthMultiplier = 3.59, ArmorMultiplier = 1 WHERE Entry = 9461; -- Frenzied Black Drake
UPDATE creature_template SET UnitClass = 2, MinLevelHealth = 29304, MaxLevelHealth = 29304, HealthMultiplier = 12, PowerMultiplier = 3, MinLevelMana = 7302, MaxLevelMana = 7302, ArmorMultiplier = 1 WHERE Entry = 10506; -- Kirtonos the Herald
UPDATE creature_template SET UnitClass = 2, MinLevelHealth = 29304, MaxLevelHealth = 29304, HealthMultiplier = 12, PowerMultiplier = 3, MinLevelMana = 7302, MaxLevelMana = 7302, ArmorMultiplier = 1 WHERE Entry = 10579; -- Kirtonos the Herald (Spell Visual)
UPDATE creature_template SET MinLevelHealth = 6863, MaxLevelHealth = 7309, HealthMultiplier = 3.75, PowerMultiplier = 2, MinLevelMana = 10026, MaxLevelMana = 10680, ArmorMultiplier = 1 WHERE Entry = 10608; -- Scarlet Priest
UPDATE creature_template SET MinLevel = 60, MinLevelHealth = 13734, MaxLevelHealth = 13734, HealthMultiplier = 4.5, ArmorMultiplier = 1 WHERE Entry = 10737; -- Shy-Rotam
UPDATE creature_template SET MinLevelHealth = 7107, MaxLevelHealth = 7107, HealthMultiplier = 3, PowerMultiplier = 2, MinLevelMana = 4738, MaxLevelMana = 4738, ArmorMultiplier = 1 WHERE Entry = 10738; -- High Chief Winterfall
UPDATE creature_template SET MinLevel = 60, MinLevelHealth = 13734, MaxLevelHealth = 13734, HealthMultiplier = 4.5, ArmorMultiplier = 1 WHERE Entry = 10741; -- Sian-Rotam
UPDATE creature_template SET MinLevelHealth = 8020, MaxLevelHealth = 8020, HealthMultiplier = 5, PowerMultiplier = 2, MinLevelMana = 9012, MaxLevelMana = 9012, ArmorMultiplier = 1 WHERE Entry = 10802; -- Hitah'ya the Keeper
UPDATE creature_template SET MinLevelHealth = 8772, MaxLevelHealth = 8772, HealthMultiplier = 3.25, ArmorMultiplier = 1 WHERE Entry = 10806; -- Ursius
UPDATE creature_template SET MinLevelHealth = 11484, MaxLevelHealth = 11484, HealthMultiplier = 4, ArmorMultiplier = 1 WHERE Entry = 10807; -- Brumeran
UPDATE creature_template SET MinLevelHealth = 8352, MaxLevelHealth = 8613, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 10953; -- Servant of Horgus
UPDATE creature_template SET UnitClass = 2, MinLevelHealth = 5886, MaxLevelHealth = 5886, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11141; -- Spirit of Trey Lightforge
UPDATE creature_template SET Minlevel = 61, MaxLevel = 61, UnitClass = 1, MinLevelHealth = 16978, MaxLevelHealth = 16978, HealthMultiplier = 5.4, MinLevelMana = 0, MaxLevelMana = 0, ArmorMultiplier = 1 WHERE Entry = 11388; -- Witherbark Speaker
UPDATE creature_template SET MinLevel = 61, MinLevelHealth = 15720, MaxLevelHealth = 15720, HealthMultiplier = 5, ArmorMultiplier = 1 WHERE Entry = 11391; -- Vilebranch Speaker
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11440; -- Gordok Enforcer
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11442; -- Gordok Mauler
UPDATE creature_template SET MinLevelHealth = 5691, MaxLevelHealth = 5886, HealthMultiplier = 3, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11443; -- Gordok Ogre-Mage
UPDATE creature_template SET MinLevelHealth = 8352, MaxLevelHealth = 8613, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11698; -- Hive'Ashi Stinger
UPDATE creature_template SET MinLevelHealth = 8613, MaxLevelHealth = 8883, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11722; -- Hive'Ashi Defender
UPDATE creature_template SET MinLevelHealth = 8182, MaxLevelHealth = 8439, HealthMultiplier = 2.85, ArmorMultiplier = 1 WHERE Entry = 11723; -- Hive'Ashi Sandstalker
UPDATE creature_template SET MinLevelHealth = 8352, MaxLevelHealth = 8613, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11724; -- Hive'Ashi Swarmer
UPDATE creature_template SET MinLevelHealth = 8613, MaxLevelHealth = 8883, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11725; -- Hive'Zora Waywatcher
UPDATE creature_template SET MinLevelHealth = 8613, MaxLevelHealth = 8883, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11726; -- Hive'Zora Tunneler
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11728; -- Hive'Zora Reaver
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11729; -- Hive'Zora Hive Sister
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11730; -- Hive'Regal Ambusher
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11731; -- Hive'Regal Burrower
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11732; -- Hive'Regal Spitfire
UPDATE creature_template SET MinLevelHealth = 8883, MaxLevelHealth = 9156, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11733; -- Hive'Regal Slavemaker
UPDATE creature_template SET MinLevelHealth = 11844, MaxLevelHealth = 12576, HealthMultiplier = 4, ArmorMultiplier = 1 WHERE Entry = 11734; -- Hive'Regal Hive Lord
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11777; -- Shadowshard Rumbler
UPDATE creature_template SET MinLevelHealth = 5389, MaxLevelHealth = 5613, HealthMultiplier = 3.4, ArmorMultiplier = 1 WHERE Entry = 11778; -- Shadowshard Smasher
UPDATE creature_template SET MinLevelHealth = 5151, MaxLevelHealth = 5357, HealthMultiplier = 3.38, ArmorMultiplier = 1 WHERE Entry = 11781; -- Ambershard Crusher
UPDATE creature_template SET MinLevelHealth = 5036, MaxLevelHealth = 5234, HealthMultiplier = 3.05, ArmorMultiplier = 1 WHERE Entry = 11782; -- Ambershard Destroyer
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11785; -- Ambereye Basilisk
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11786; -- Ambereye Reaver
UPDATE creature_template SET MinLevelHealth = 4572, MaxLevelHealth = 4755, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11787; -- Rock Borer
UPDATE creature_template SET MinLevelHealth = 4755, MaxLevelHealth = 4953, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11788; -- Rock Worm
UPDATE creature_template SET MinLevelHealth = 45588, MaxLevelHealth = 45588, HealthMultiplier = 14.5, ArmorMultiplier = 1 WHERE Entry = 11896; -- Borelgore
UPDATE creature_template SET MinLevelHealth = 18312, MaxLevelHealth = 18312, HealthMultiplier = 6, ArmorMultiplier = 1 WHERE Entry = 11897; -- Duskwing
UPDATE creature_template SET MinLevelHealth = 1452, MaxLevelHealth = 1452, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 11920; -- Goggeroc
UPDATE creature_template SET MinLevelHealth = 11628, MaxLevelHealth = 11628, HealthMultiplier = 4.05, ArmorMultiplier = 1 WHERE Entry = 12262; -- Ziggurat Protector
UPDATE creature_template SET MinLevelHealth = 16939, MaxLevelHealth = 16939, HealthMultiplier = 5.9, ArmorMultiplier = 1 WHERE Entry = 12263; -- Slaughterhouse Protector
UPDATE creature_template SET MinLevelHealth = 3150, MaxLevelHealth = 3150, HealthMultiplier = 3, PowerMultiplier = 2, MinLevelMana = 2194, MaxLevelMana = 2194, ArmorMultiplier = 1 WHERE Entry = 12865; -- Ambassador Malcin
UPDATE creature_template SET MinLevelHealth = 5544, MaxLevelHealth = 5757, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 13696; -- Noxxious Scion
UPDATE creature_template SET MinLevelHealth = 6645, MaxLevelHealth = 6876, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 14388; -- Rogue Black Drake
UPDATE creature_template SET MinLevelHealth = 13644, MaxLevelHealth = 13644, HealthMultiplier = 7.7, PowerMultiplier = 2, MinLevelMana = 3614, MaxLevelMana = 3614, ArmorMultiplier = 1 WHERE Entry = 14621; -- Overseer Maltorius
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61, MinLevelHealth = 6288, MaxLevelHealth = 6288, HealthMultiplier = 2, ArmorMultiplier = 1 WHERE Entry = 15068; -- Zulian Guardian
UPDATE creature_template SET UnitClass = 1, HealthMultiplier = 12, PowerMultiplier = 10, ArmorMultiplier = 1 WHERE Entry = 15203; -- Prince Skaldrenox
UPDATE creature_template SET UnitClass = 1, HealthMultiplier = 12, PowerMultiplier = 10, ArmorMultiplier = 1 WHERE Entry = 15204; -- High Marshal Whirlaxis
UPDATE creature_template SET UnitClass = 1, HealthMultiplier = 12, PowerMultiplier = 10, ArmorMultiplier = 1 WHERE Entry = 15205; -- Baron Kazum
UPDATE creature_template SET UnitClass = 2, Rank = 1, MinLevelHealth = 12950, MaxLevelHealth = 12950, HealthMultiplier = 5, PowerMultiplier = 3, MinLevelMana = 7704, MaxLevelMana = 7704, ArmorMultiplier = 1 WHERE Entry = 15206; -- The Duke of Cynders
UPDATE creature_template SET MinLevelHealth = 16185, MaxLevelHealth = 16185, HealthMultiplier = 5, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 15207; -- The Duke of Fathoms
UPDATE creature_template SET UnitClass = 1, MinLevelHealth = 16185, MaxLevelHealth = 16185, HealthMultiplier = 5, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 15208; -- The Duke of Shards
UPDATE creature_template SET MinLevelHealth = 16185, MaxLevelHealth = 16185, HealthMultiplier = 5, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 15220; -- The Duke of Zephyrs
UPDATE creature_template SET UnitClass = 1, HealthMultiplier = 12, PowerMultiplier = 10, ArmorMultiplier = 1 WHERE Entry = 15305; -- Lord Skwol
UPDATE creature_template SET Rank = 1, UnitClass = 1, MinLevelHealth = 97110, MaxLevelHealth = 97110, HealthMultiplier = 30, ArmorMultiplier = 1 WHERE Entry = 15286; -- Xil'xix
UPDATE creature_template SET Rank = 1, UnitClass = 1, MinLevelHealth = 97110, MaxLevelHealth = 97110, HealthMultiplier = 30, ArmorMultiplier = 1 WHERE Entry = 15288; -- Aluntir
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, Rank = 1, UnitClass = 1, MinLevelHealth = 97110, MaxLevelHealth = 97110, HealthMultiplier = 30, ArmorMultiplier = 1 WHERE Entry = 15290; -- Arakis
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61, Rank = 1, UnitClass = 2, HealthMultiplier = 2, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 16127; -- Spectral Trainee

-- Clean-up
UPDATE creature, creature_template SET creature.curhealth = creature_template.MinLevelHealth, creature.curmana = creature_template.MinLevelMana WHERE creature.id = creature_template.entry AND creature_template.RegenerateStats & 1;