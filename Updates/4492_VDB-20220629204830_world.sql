-- Add your query below.
-- https://github.com/vmangos/core/commit/8834103e2a4bc1e09247aa61953abeb46d8f80a2

-- These mobs don't have an attack speed set so use default.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `MeleeBaseAttackTime`=0; -- wotlkmangos 1805 cases, but can be heroic/difficulty templates!

-- Correct attack speeds for all creatures.
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 460; -- Alamar Grimm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 659; -- El Pollo Grande
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 706; -- Frostmane Troll Whelp
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 714; -- Talin Keeneye
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 763; -- Lost One Chieftain
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 786; -- Grelin Whitebeard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 808; -- Grik'nir the Cold
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 818; -- Mai'Zoth
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 836; -- Durnan Furcutter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 837; -- Branstock Khalder
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 944; -- Marryk Nurribit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry` = 1037; -- Dragonmaw Battlemaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1047; -- Red Scalebane
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1048; -- Scalebane Lieutenant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1049; -- Wyrmkin Firebrand
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1050; -- Scalebane Royal Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1054; -- Dark Iron Demolitionist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1063; -- Jade
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1133; -- Starving Winter Wolf
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1210; -- Chok'sul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 1260; -- Great Father Arctikus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1266; -- Tundra MacGrann
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 1354; -- Apprentice Soren
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1364; -- Balgaras the Foul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1398; -- Boss Galgosh
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1399; -- Magosh
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1514; -- Mokk the Savage
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1552; -- Scale Belly
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1700; -- Paxton Ganter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2400 WHERE `entry` = 1836; -- Scarlet Cavalier
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1837; -- Scarlet Judge
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1838; -- Scarlet Interrogator
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1839; -- Scarlet High Clerist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1840; -- Grand Inquisitor Isillien
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1841; -- Scarlet Executioner
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1847; -- Foulmane
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1850; -- Putridius
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1885; -- Scarlet Smith
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1920; -- Dalaran Spellscribe
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3200 WHERE `entry` = 1944; -- Rot Hide Bruiser
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 1960; -- Pilot Hammerfoot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2044; -- Forlorn Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2108; -- Garneg Charskull
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2149; -- Dark Iron Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2158; -- Gravelflint Scout
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2159; -- Gravelflint Bonesnapper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2160; -- Gravelflint Geomancer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 2166; -- Oakenscowl
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1066.666667 WHERE `entry` = 2173; -- Reef Frenzy - s.5888
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2192; -- Firecaller Radison
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2257; -- Mug'thol
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2258; -- Stone Fury
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2283; -- Ravenclaw Regent
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2287; -- Crushridge Warmonger
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2304; -- Captain Ironhill
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2416; -- Crushridge Plunderer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2417; -- Grel'borg the Miser
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2420; -- Targ
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2452; -- Skhowl
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2453; -- Lo'Grosh
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2476; -- Large Loch Crocolisk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2477; -- Gradok
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2478; -- Haren Swifthoof
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 2540; -- Dalaran Serpent
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2584; -- Stromgarde Defender
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2588; -- Syndicate Prowler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2601; -- Foulbelly
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 2604; -- Molok the Crusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2605; -- Zalas Witherbark
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2606; -- Nimar the Slayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2607; -- Prince Galen Trollbane
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 2638; -- Syndicate Spectre
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2641; -- Vilebranch Headhunter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2642; -- Vilebranch Shadowcaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2643; -- Vilebranch Berserker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2648; -- Vilebranch Aman'zasi Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2683; -- Namdo Bizzfizzle
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2707; -- Shadra
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2726; -- Scorched Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2744; -- Shadowforge Commander
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 2748; -- Archaedas
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2749; -- Siege Golem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2751; -- War Golem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2752; -- Rumbler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 2754; -- Anathemus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2755; -- Myzrael
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2757; -- Blacklash
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2759; -- Hematus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2763; -- Thenan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2776; -- Vengeful Surge
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2780; -- Caretaker Nevlin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2781; -- Caretaker Weston
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2782; -- Caretaker Alaric
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2783; -- Marez Cowl
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2794; -- Summoned Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2887; -- Prismatic Exile
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2892; -- Stonevault Seer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2915; -- Hammertoe's Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2932; -- Magregan Deepshadow
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 2946; -- Puppet of Helcular
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3094; -- Unseen
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3253; -- Silithid Harvester
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3289; -- Spirit of Minshina
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3535; -- Blackmoss the Fetid
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3569; -- Bogling
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3582; -- Aman
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3694; -- Sentinel Selarin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3722; -- Mystlash Flayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3735; -- Apothecary Falthis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3773; -- Akkrilus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3836; -- Mountaineer Pebblebitty
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3843; -- Anaya
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3872; -- Deathsworn Captain
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3879; -- Dark Strand Assassin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3893; -- Forsaken Scout
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3898; -- Aligar the Tormentor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3899; -- Balizar the Umbrage
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3900; -- Caedakar the Vicious
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3904; -- Searing Totem IV
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3913; -- Stoneclaw Totem IV
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 3968; -- Sentry Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4015; -- Pridewing Patriarch
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4056; -- Mirkfallon Keeper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4132; -- Silithid Ravager
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4339; -- Brimgore
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4364; -- Strashaz Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4366; -- Strashaz Serpent Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4368; -- Strashaz Myrmidon
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4370; -- Strashaz Sorceress
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4371; -- Strashaz Siren
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4374; -- Strashaz Hydra
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4468; -- Jade Sludge
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4660; -- Maraudine Bonepaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4785; -- Illusionary Nightmare
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4842; -- Earthcaller Halmgar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4847; -- Shadowforge Relic Hunter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4848; -- Shadowforge Darkcaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4849; -- Shadowforge Archaeologist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4853; -- Stonevault Geomancer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4854; -- Grimlok
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4855; -- Stonevault Brawler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 4857; -- Stone Keeper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4860; -- Stone Steward
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4958; -- Haunting Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4971; -- Slim's Friend
UPDATE `creature_template_addon` SET `auras` = '8601' WHERE `entry` = 4971; -- no s.3616
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 4977; -- Murkshallow Softshell
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5044; -- Theramore Skirmisher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5045; -- Private Hallan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5046; -- Lieutenant Caldwell
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5345; -- Diamond Head
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5346; -- Bloodroar the Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5347; -- Antilus the Soarer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5350; -- Qirot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5354; -- Gnarl Leafbrother
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 5357; -- Land Walker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 5358; -- Cliff Giant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5399; -- Veyzhak the Cannibal
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2400 WHERE `entry` = 5402; -- Khan Hratha
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 5409; -- Harvester Swarm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 5466; -- Coast Strider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5781; -- Silithid Creeper Egg
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5785; -- Sister Hatelash
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5808; -- Warlord Kolkanis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5809; -- Watch Commander Zalaphil
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5833; -- Margol the Rager
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5851; -- Captain Gerogg Hammertoe
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5864; -- Swinegart Spearhide
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5893; -- Minor Manifestation of Fire
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5912; -- Deviate Faerie Dragon
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 5950; -- Flametongue Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6012; -- Flametongue Totem II
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6047; -- Aqua Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6069; -- Maraudine Khan Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6070; -- Maraudine Khan Advisor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6113; -- Vejrek
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6134; -- Lord Arkkoroc
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6140; -- Hetaera
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 6144; -- Son of Arkkoroc
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6180; -- Defias Raider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6209; -- Caverndeep Looter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6215; -- Chomper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6221; -- Addled Leper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6228; -- Dark Iron Ambassador
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6231; -- Techbot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 6376; -- Wren Darkspring
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6386; -- Ward of Zanzil
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6388; -- Zanzil Skeleton
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6489; -- Ironspine
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6549; -- Demon of the Orb
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6577; -- Bingles Blastenheimer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6581; -- Ravasaur Matriarch
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6583; -- Gruff
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6646; -- Monnos the Elder
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6647; -- Magister Hawkhelm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6648; -- Antilos
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6652; -- Master Feardred
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6729; -- Morridune
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6733; -- Stonevault Basher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6886; -- Onin MacHammar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6911; -- Minion of Sethir
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1300 WHERE `entry` = 6913; -- Lost One Rift Traveler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 6932; -- Swamp Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 7011; -- Earthen Rocksmasher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7012; -- Earthen Sculptor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7023; -- Obsidian Sentinel
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7030; -- Shadowforge Geologist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2300 WHERE `entry` = 7076; -- Earthen Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7077; -- Earthen Hallshaper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7091; -- Shadowforge Ambusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7167; -- Polly
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7168; --  Polly
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7170; -- Thragomm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7172; -- Lore Keeper of Norgannon
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 7206; -- Ancient Stone Keeper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1300 WHERE `entry` = 7209; -- Obsidian Shard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=4000 WHERE `entry` = 7226; -- Sand Storm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2900 WHERE `entry` = 7228; -- Ironaya
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7266; -- Ember
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7267; -- Chief Ukorz Sandscalp
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7273; -- Gahz'rilla
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7275; -- Shadowpriest Sezz'ziz
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7276; -- Zul'Farrak Dead Hero
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7286; -- Zul'Farrak Zombie
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7290; -- Shadowforge Sharpshooter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7291; -- Galgann Firehammer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7309; -- Earthen Custodian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7320; -- Stonevault Mauler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7321; -- Stonevault Flameweaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7340; -- Skeletal Shadowcaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7349; -- Tomb Fiend
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7351; -- Tomb Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7354; -- Ragglesnout
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7355; -- Tuten'kash
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7356; -- Plaguemaw the Rotting
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7361; -- Grubbis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 7396; -- Earthen Stonebreaker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7397; -- Earthen Stonecarver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7411; -- Spirit of Sathrah
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7424; -- Fire Resistance Totem II
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7468; -- Nature Resistance Totem II
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7664; -- Razelikh the Defiler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7734; -- Ilifar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7735; -- Felcular
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7738; -- Burning Servant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7750; -- Corporal Thund Splithoof
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 7768; -- Witherbark Bloodling
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7779; -- Priestess Tyriona
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7785; -- Ward of Zum'rah
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7786; -- Skeleton of Zum'rah
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7787; -- Sandfury Slave
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7788; -- Sandfury Drudge
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7789; -- Sandfury Cretin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 7796; -- Nekrum Gutchewer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 7797; -- Ruuzlu
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7805; -- Wastewander Scofflaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7808; -- Marauding Owlbeast
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 7895; -- Ambassador Bloodrage - tbc+ 2000
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7899; -- Treasure Hunting Pirate
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7901; -- Treasure Hunting Swashbuckler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7902; -- Treasure Hunting Buccaneer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7915; -- Walking Bomb
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 7995; -- Vile Priestess Hexx
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8035; -- Dark Iron Land Mine
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8075; -- Edana Hatetalon
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8156; -- Servant of Antu'sul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8179; -- Greater Healing Ward
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 8201; -- Omgorn the Lost
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8202; -- Cyclok the Mad
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8203; -- Kregg Keelhaul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8205; -- Haarka the Ravenous
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8207; -- Greater Firebird
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8208; -- Murderous Blisterpaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8212; -- The Reak
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8214; -- Jalinde Summerdrake
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8217; -- Mith'rethis the Enchanter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8218; -- Witherheart the Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8280; -- Shleipnarr
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8283; -- Slave Master Blackheart
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8296; -- Mojo the Twisted
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8298; -- Akubar the Seer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8302; -- Deatheye
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8303; -- Grunter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8320; -- Sprok
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8324; -- Atal'ai Skeleton
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8421; -- Dorius
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8480; -- Kalaran the Deceiver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8503; -- Gibblewilt
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8510; -- Atal'ai Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8578; -- Magus Rimtori
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8581; -- Blood Elf Defender
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8585; -- Frost Spectre
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8608; -- Angered Infernal
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8616; -- Infernal Servant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8656; -- Hukku's Voidwalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8657; -- Hukku's Succubus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8658; -- Hukku's Imp
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8660; -- The Evalcharr
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8756; -- Raytaf
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8757; -- Shahiar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8758; -- Zaman
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8876; -- Sandfury Acolyte
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2400 WHERE `entry` = 8877; -- Sandfury Zealot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry` = 8889; -- Anvilrage Overseer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8923; -- Panzor the Invincible
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 8976; -- Hematos
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry` = 8981; -- Malfunctioning Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9136; -- Sha'ni Proudtusk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9237; -- War Master Voone
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9436; -- Spawn of Bael'Gar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9441; -- Dark Keeper Zimrel
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9443; -- Dark Keeper Pelver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9448; -- Scarlet Praetorian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9450; -- Scarlet Curate
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9451; -- Scarlet Archmage
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9461; -- Frenzied Black Drake
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9462; -- Chieftain Bloodmaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9520; -- Grark Lorkrub
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9521; -- Enraged Felbat
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9527; -- Enraged Hippogryph
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9538; -- High Executioner Nuzrak
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9539; -- Shadow of Lexlort
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9598; -- Arei
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9601; -- Treant Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9602; -- Hahk'Zor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9604; -- Gorgon'och
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9621; -- Gargantuan Ooze
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9688; -- Windwall Totem II
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9718; -- Ghok Bashguud
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 9876; -- Locheed
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10040; -- Gorishi Hive Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10041; -- Gorishi Hive Queen
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10078; -- Terrorspark
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 10120; -- Vault Warder
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10196; -- General Colbatann
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10197; -- Mezzir the Howler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10198; -- Kashoch the Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 10199; -- Grizzle Snowpaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10202; -- Azurous
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1400 WHERE `entry` = 10261; -- Burning Felhound
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2300 WHERE `entry` = 10263; -- Burning Felguard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10264; -- Solakar Flamewreath
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10290; -- Captured Felwood Ooze
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10373; -- Xabraxxis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10559; -- Lady Vespia
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10641; -- Branch Snapper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10642; -- Eck'alom
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10647; -- Prince Raze
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10680; -- Summoned Blackhand Dreadweaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10776; -- Finkle Einhorn
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10800; -- Warosh the Redeemed
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 10802; -- Hitah'ya the Keeper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10809; -- Stonespine
REPLACE INTO `creature_addon` (`guid`, `auras`) VALUES (92665, '14775'),(92669, '14775'),(92670, '14775'),(92671, '14775'); -- s.14775 Stilled
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(92665, 8544),(92665, 8545),(92669, 8544),(92669, 8545),
(92670, 8544),(92670, 8545),(92671, 8544),(92671, 8545);
UPDATE `creature`SET `id` = 0 WHERE `guid` IN (92665,92669,92670,92671);
-- maybe dualwield without passive nore weapons. - part of abomination model! 8543 seemingly not minmax 98 - 132 (lvl 57-58)
REPLACE INTO `creature_addon` (`guid`, `auras`) SELECT `guid`, '14775' FROM `creature` WHERE `guid` IN (54624,69691,92013,92012,92015,92009,84955,90488);
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10821; -- Hed'mush the Rotting
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10822; -- Warlord Thresh'jin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10823; -- Zul'Brin Warpbranch
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10825; -- Gish the Unmoving
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10826; -- Lord Darkscythe
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10827; -- Deathspeaker Selendre
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10828; -- High General Abbendis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10947; -- Darrowshire Betrayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10948; -- Darrowshire Defender
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10951; -- Marauding Corpse
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10952; -- Marauding Skeleton
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10954; -- Bloodletter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 10955; -- Summoned Water Elemental
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11018; -- Arko'narin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11027; -- Illusory Wraith
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11054; -- Crimson Rifleman
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11058; -- Fras Siabi
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11073; -- Annora
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11082; -- Stratholme Courier
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11100; -- Mana Tide Totem II
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11142; -- Undead Postman
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2200 WHERE `entry` = 11143; -- Postmaster Malown
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11439; -- Illusion of Jandice Barov
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11497; -- The Razza
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11498; -- Skarr the Unbreakable
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11560; -- Magrami Spectre
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2400 WHERE `name` LIKE '%Whitewhisker Overseer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 11627; -- Tamed Kodo
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11688; -- Cursed Centaur
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11815; -- Voriya
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11836; -- Captured Rabid Thistle Bear
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11859; -- Doomguard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 11898; -- Crusader Lord Valdelmar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12037; -- Ursol'lok
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Alliance Sentinel%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Frostwolf Warrior%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12124; -- Great Shark
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12126; -- Lord Tirion Fordring
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12138; -- Lunaclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12144; -- Lunaclaw Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12208; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12261; -- Infected Mossflayer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12319; -- Burning Blade Toxicologist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12320; -- Burning Blade Crusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12321; -- Stormscale Toxicologist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12397; -- Lord Kazzak
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12496; -- Dreamtracker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12497; -- Dreamroarer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12738; -- Nori Pridedrift
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12739; -- Onyxia's Elite Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12756; -- Lady Onyxia
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Legionnaire Teena%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Blood Guard Hini\'wana%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Advisor Willington%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Chieftain Earthbind%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Stone Guard Zarg%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%First Sergeant Hola''mahi%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Raider Bork%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Grunt Korf%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Grunt Bek''rah%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 12865; -- Ambassador Malcin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12876; -- Baron Aquanis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 12918; -- Chief Murgut
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Aggi Rumblestomp%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Coldmine Invader%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13278; -- Duke Hydraxis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 13279; -- Discordant Surge
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13301; -- Hive'Ashi Ambusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Coldmine Miner%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13322; -- Hydraxian Honor Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Guardsman%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Mountaineer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Sentinel%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Legionnaire%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Warrior%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Guardsman%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Legionnaire%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Mountaineer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Sentinel%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Warrior%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Ivus the Forest Lord%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Defender%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Guardsman%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Legionnaire%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Mountaineer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Sentinel%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Warrior%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Frostwolf Wolf Rider%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13456; -- Noxxion's Spawn

UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `name` LIKE '%Seasoned Coldmine Guard%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `name` LIKE '%Champion Coldmine Guard%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Coldmine Surveyor%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Coldmine Surveyor%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Coldmine Explorer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Coldmine Explorer%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Seasoned Coldmine Invader%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Veteran Coldmine Invader%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Coldmine Invader%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Irondeep Guard%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `name` LIKE '%Champion Irondeep Surveyor%';
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13602; -- The Abominable Greench
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13696; -- Noxxious Scion
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13741; -- Gelk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13742; -- Kolk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 13896; -- Scalebeard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14221; -- Gravis Slipknot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1400 WHERE `entry` = 14222; -- Araga
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14224; -- 7:XT
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14226; -- Kaskk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14235; -- The Rot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14236; -- Lord Angler
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14261; -- Blue Drakonid
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14263; -- Bronze Drakonid
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14265; -- Black Drakonid
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14267; -- Emogg the Crusher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14275; -- Tamra Stormpike
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14276; -- Scargil
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14305; -- Human Orphan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14340; -- Alshirr Banebreath
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14342; -- Ragepaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14364; -- Shen'dralar Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 14370; -- Cadaverous Worm
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14385; -- Doomguard Minion
UPDATE `creature_template` SET `MeleeBaseAttackTime`=10000 WHERE `entry` = 14396; -- Eye of Immol'thar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14397; -- Mana Burst
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14424; -- Mirelow
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14429; -- Grimmaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14435; -- Prince Thunderaan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14444; -- Orcish Orphan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14446; -- Fingat
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14447; -- Gilmorian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14454; -- The Windreaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14457; -- Princess Tempestria
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14461; -- Baron Charr
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14462; -- Thundering Invader
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14464; -- Avalanchion
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 14467; -- Kroshius
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14471; -- Setis
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14472; -- Gretheer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14477; -- Grubthor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14479; -- Twilight Lord Everun
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14481; -- Emmithue Smails
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry` = 14482; -- Xorothian Imp
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14483; -- Dread Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14486; -- Scourge Footsoldier
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2800 WHERE `entry` = 14488; -- Roloch
UPDATE `creature_template` SET `MeleeBaseAttackTime`=900 WHERE `entry` = 14490; -- Rippa
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14491; -- Kurmokk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14492; -- Verifonix
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14502; -- Xorothian Dreadsteed
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14504; -- Dreadsteed Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2400, `SpeedWalk` = 1 WHERE `entry` = 14506; -- Lord Hel'nurath
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14511; -- Shadowed Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14512; -- Corrupted Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14513; -- Malicious Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14514; -- Banal Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14516; -- Death Knight Darkreaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14518; -- Aspect of Banality
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14519; -- Aspect of Corruption
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14520; -- Aspect of Malice
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14521; -- Aspect of Shadow
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14524; -- Vartrus the Ancient
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14525; -- Stoma the Ancient
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14526; -- Hastat the Ancient
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14531; -- Artorius the Amiable
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14533; -- Simone the Seductress
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14568; -- Darkreaver's Fallen Charger
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 14603; -- Zapped Shore Strider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2600 WHERE `entry` = 14604; -- Zapped Land Walker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 14638; -- Zapped Wave Strider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 14639; -- Zapped Deep Strider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 14640; -- Zapped Cliff Giant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14662; -- Corrupted Fire Nova Totem V
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14663; -- Corrupted Stoneskin Totem VI
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14664; -- Corrupted Healing Stream Totem V
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14666; -- Corrupted Windfury Totem III
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 14748; -- Vilebranch Kidnapper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15011; -- Wagner Hammerstrike
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15012; -- Javnir Nashak
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15082; -- Gri'lek
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15085; -- Wushoolay
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15113; -- Honored Hero
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15115; -- Honored Ancestor
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15136; -- Hammerfall Elite
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15138; -- Silverpine Elite
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15215; -- Mistress Natalia Mar'alith
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15261; -- Spirit Shade
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15302; -- Shade of Taerar
DELETE FROM `creature_template_addon` WHERE `entry` = 10664; -- AI
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15308; -- Twilight Prophet
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15309; -- Spoops
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15363; -- Spirit Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15443; -- Janela Stouthammer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15444; -- Arcanist Nozzlespring
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15549; -- Elder Morndeep
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15556; -- Elder Splitrock
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15557; -- Elder Rumblerock
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15558; -- Elder Silvervein
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15560; -- Elder Stonefort
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15563; -- Elder Bellowrage
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15567; -- Elder Ironband
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15569; -- Elder Goldwell
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15570; -- Elder Primestone
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15572; -- Elder Runetotem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15573; -- Elder Ragetotem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15574; -- Elder Stonespire
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15575; -- Elder Bloodhoof
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15577; -- Elder Skychaser
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15578; -- Elder Wildmane
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15581; -- Elder Grimtotem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15583; -- Elder Thunderhorn
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15584; -- Elder Skyseer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15585; -- Elder Dawnstrider
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15586; -- Elder Dreamseer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15587; -- Elder Mistwalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15588; -- Elder High Mountain
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15593; -- Elder Starsong
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15595; -- Elder Bladeleaf
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15596; -- Elder Starglade
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15599; -- Elder Bladesing
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15600; -- Elder Skygleam
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15601; -- Elder Starweave
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15603; -- Elder Nightwind
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15604; -- Elder Morningdew
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15605; -- Elder Riversong
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15606; -- Elder Brightspear
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15607; -- Elder Farwhisper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15554; -- Number Two
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15612; -- Krug Skullsplit
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15613; -- Merok Longstride
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15615; -- Shadow Priestess Shai
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15617; -- Orgrimmar Legion Axe Thrower
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 15721; -- Mechanical Greench
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15903; -- Sergeant Carnes
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15928; -- Thaddius
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15929; -- Stalagg
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15930; -- Feugen
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15931; -- Grobbulus
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1600 WHERE `entry` = 15932; -- Gluth
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15936; -- Heigan the Unclean
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15952; -- Maexxna
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15953; -- Grand Widow Faerlina
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15954; -- Noth the Plaguebringer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15974; -- Dread Creeper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15975; -- Carrion Spinner
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15976; -- Venom Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 15977; -- Infectious Skitterer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry` = 15978; -- Crypt Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15979; -- Tomb Horror
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15980; -- Naxxramas Cultist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 15981; -- Naxxramas Acolyte
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 15989; -- Sapphiron
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 15990; -- Kel'Thuzad
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1250 WHERE `entry` = 16011; -- Loatheb
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16016; -- Anthion Harmon
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16017; -- Patchwork Golem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16018; -- Bile Retcher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16020; -- Mad Scientist
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16021; -- Living Monstrosity
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16022; -- Surgical Assistant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16024; -- Embalming Slime
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16025; -- Stitched Spewer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=750 WHERE `entry` = 16028; -- Patchwerk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16029; -- Sludge Belcher
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16056; -- Diseased Maggot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16057; -- Rotting Maggot
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3800 WHERE `entry` = 16059; -- Theldren
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16060; -- Gothik the Harvester
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3500 WHERE `entry` = 16061; -- Instructor Razuvious
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 16062; -- Highlord Mograine
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16065; -- Lady Blaumeux
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16067; -- Skeletal Steed
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 16095; -- Gnashjaw
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16112; -- Korfax, Champion of the Light
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16113; -- Father Inigo Montoy
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16114; -- Scarlet Commander Marjhan
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16115; -- Commander Eligor Dawnbringer
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16116; -- Archmage Angela Dosantos
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 16124; -- Unrelenting Trainee
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16127; -- Spectral Trainee
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16131; -- Rohan the Assassin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16132; -- Huntsman Leopold
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16133; -- Mataus the Wrathcaster
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16134; -- Rimblat Earthshatter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16135; -- Rayne
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3500 WHERE `entry` = 16145; -- Deathknight Captain
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1700 WHERE `entry` = 16146; -- Deathknight
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16149; -- Spectral Horse
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16154; -- Risen Deathknight
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16156; -- Dark Touched Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16157; -- Doom Touched Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16158; -- Death Touched Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16163; -- Deathknight Cavalier
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16164; -- Shade of Naxxramas
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 16165; -- Necro Knight
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16167; -- Bony Construct
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 16168; -- Stoneskin Gargoyle
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16193; -- Skeletal Smith
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 16194; -- Unholy Axe
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1200 WHERE `entry` = 16216; -- Unholy Swords
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16226; -- Guard Didier
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16232; -- Caravan Mule
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 16236; -- Eye Stalk
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16241; -- Argent Recruiter
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 16243; -- Plague Slime
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 16244; -- Infectious Ghoul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16254; -- Field Marshal Chambers
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 16290; -- Fallout Slime
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 16360; -- Zombie Chow
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16365; -- Master Craftsman Omarion
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16368; -- Necropolis Acolyte
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1800 WHERE `entry` = 16375; -- Sewage Slime
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16381; -- Archmage Tarsis Kir-Moldir
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16385; -- Lightning Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16387; -- Atiesh
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16390; -- Deathchill Servant
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16441; -- Guardian of Icecrown
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 16446; -- Plagued Gargoyle
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 16447; -- Plagued Ghoul
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16448; -- Plagued Deathhound
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16449; -- Spirit of Naxxramas
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16451; -- Deathknight Vindicator
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16452; -- Necro Knight Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16453; -- Necro Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16474; -- Blizzard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16478; -- Lieutenant Orrin
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16484; -- Lieutenant Nevell
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16490; -- Lieutenant Lisande
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16493; -- Lieutenant Dagel
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16494; -- Lieutenant Rukag
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16495; -- Lieutenant Beitha
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16505; -- Naxxramas Follower
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16506; -- Naxxramas Worshipper
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 16573; -- Crypt Guard
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16697; -- Void Zone
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1000 WHERE `entry` = 16698; -- Corpse Scarab
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 16775; -- Spirit of Mograine
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16776; -- Spirit of Blaumeux
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16777; -- Spirit of Zeliek
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2500 WHERE `entry` = 16778; -- Spirit of Korth'azz
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3500 WHERE `entry` = 16803; -- Deathknight Understudy
UPDATE `creature_template` SET `MeleeBaseAttackTime`=3000 WHERE `entry` = 16981; -- Plagued Guardian
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2700 WHERE `entry` = 16984; -- Plagued Warrior
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 16998; -- Mr. Bigglesworth
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 17003; -- Cinder Elemental
UPDATE `creature_template` SET `MeleeBaseAttackTime`=1500 WHERE `entry` = 17078; -- Jimmy McWeaksauce
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 17209; -- William Kielar
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 17231; -- Garden Gas
UPDATE `creature_template` SET `MeleeBaseAttackTime`=2000 WHERE `entry` = 17766; -- Horde Silithyst Sentinel

-- End of migration.

