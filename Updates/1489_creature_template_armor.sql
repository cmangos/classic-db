-- Fixed armor for many NPCs whose stats were previously fixed but were using wrong armor values
-- due to the base stats table being wrong itself
-- Fixed armor for many NPCs stats are still pending to be fixed
-- Used base armor for NPCs having no armor set and for remaining unfixed NPCs

-- Miscelleanous and specific fixes
UPDATE creature_template SET ArmorMultiplier=1 WHERE Entry=5237; -- Gordunni Ogre Mage
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=92; -- Rock Elemental
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=121; -- Defias Pathstalker
UPDATE creature_template SET ArmorMultiplier=0.37 WHERE Entry=124; -- Riverpaw Brute
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=334; -- Gath'Ilzogg
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=474; -- Defias Rogue Wizard
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=476; -- Kobold Geomancer
UPDATE creature_template SET ArmorMultiplier=0.37 WHERE Entry=502; -- Benny Blaanco
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=507; -- Fenros
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=589; -- Defias Pillager
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=688; -- Stone Maw Basilisk
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=689; -- Crystal Spine Basilisk
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=690; -- Cold Eye Basilisk
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=744; -- Green Scalebane
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=745; -- Scalebane Captain
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=746; -- Elder Dragonkin
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=783; -- Skullsplitter Berserker
UPDATE creature_template SET ArmorMultiplier=0.38 WHERE Entry=822; -- Young Forest Bear
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=830; -- Sand Crawler
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=831; -- Sea Crawler
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=875; -- Saltscale Tide Lord
UPDATE creature_template SET ArmorMultiplier=1.54 WHERE Entry=910; -- Defias Enchanter
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=922; -- Silt Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1009; -- Mosshide Mistweaver
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1030; -- Black Slime
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1031; -- Crimson Ooze
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1032; -- Black Ooze
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1033; -- Monstrous Ooze
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1047; -- Red Scalebane
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1049; -- Scalebane Royal Guard
UPDATE creature_template SET ArmorMultiplier=0.22 WHERE Entry=1114; -- Jungle Thunderer
UPDATE creature_template SET ArmorMultiplier=0.24 WHERE Entry=1128; -- Young Black Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1140; -- Razormaw Matriarch
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=1216; -- Shore Crawler
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=1502; -- Wretched Zombie
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1504; -- Young Night Web Spider
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1505; -- Night Web Spider
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=1507; -- Scarlet Initiate
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1509; -- Ragged Scavenger
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1552; -- Scale Belly
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1718; -- Rockjaw Raider
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1729; -- Defias Evoker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1732; -- Defias Squallshaper
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=1769; -- Moonrage Whitescalp
UPDATE creature_template SET ArmorMultiplier=0.52 WHERE Entry=1797; -- Giant Grizzled Bear
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=1815; -- Diseased Black Bear
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=1816; -- Diseased Grizzly
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1885; -- Scarlet Smith
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1890; -- Rattlecage Skeleton
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=1916; -- Stephen Bhartec
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=1947; -- Thule Ravenclaw
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2010; -- Gnarlpine Defender
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2018; -- Bloodfeather Sorceress
UPDATE creature_template SET ArmorMultiplier=0.42 WHERE Entry=2163; -- Thistle Bear
UPDATE creature_template SET ArmorMultiplier=0.42 WHERE Entry=2164; -- Rabid Thistle Bear
UPDATE creature_template SET ArmorMultiplier=0.47 WHERE Entry=2165; -- Grizzled Thistle Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2231; -- Pygmy Tide Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2233; -- Encrusted Tide Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2234; -- Young Reef Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2235; -- Reef Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2236; -- Raging Reef Crawler
UPDATE creature_template SET ArmorMultiplier=0.6 WHERE Entry=2253; -- Crushridge Brute
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2258; -- Stone Fury
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2359; -- Syndicate Wizard
UPDATE creature_template SET ArmorMultiplier=0.37 WHERE Entry=2351; -- Gray Bear
UPDATE creature_template SET ArmorMultiplier=0.37 WHERE Entry=2354; -- Vicious Gray Bear
UPDATE creature_template SET ArmorMultiplier=0.37 WHERE Entry=2356; -- Elder Gray Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2387; -- Hillsbrad Councilman
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2408; -- Snapjaw
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2505; -- Saltwater Snapjaw
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2544; -- Southern Sand Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2592; -- Rumbling Exile
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=2611; -- Fozruk
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=2592; -- Green Sludge
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2723; -- Stone Golem
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=2735; -- Lesser Rock Elemental
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=2736; -- Greater Rock Elemental
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2744; -- Shadowforge Commander
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2751; -- War Golem
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2752; -- Rumbler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2763; -- Thenan
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=2791; -- Enraged Rock Elemental
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=2967; -- Galak Centaur
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3103; -- Makrura Clacker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3104; -- Makrura Shellhide
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3126; -- Armored Scorpid
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3251; -- Silithid Grub
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3528; -- Pyrewood Armorer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3529; -- Moonrage Armorer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3532; -- Pyrewood Leatherworker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3533; -- Moonrage Leatherworker
UPDATE creature_template SET ArmorMultiplier=5.0 WHERE Entry=3653; -- Kresh
UPDATE creature_template SET ArmorMultiplier=0.47 WHERE Entry=3809; -- Ashenvale Bear
UPDATE creature_template SET ArmorMultiplier=0.47 WHERE Entry=3810; -- Elder Ashenvale Bear
UPDATE creature_template SET ArmorMultiplier=0.47 WHERE Entry=3811; -- Giant Ashenvale Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3812; -- Clattering Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3814; -- Spined Crawler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=3850; -- Sorcerer Ashcrombe
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=4035; -- Furious Stone Spirit
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=4139; -- Scorpid Terror
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=4110; -- Scorpid Reaver
UPDATE creature_template SET ArmorMultiplier=2.5 WHERE Entry=4143; -- Sparkleshell Snapper
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4286; -- Scarlet Soldier
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4292; -- Scarlet Protector
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4298; -- Scarlet Defender
UPDATE creature_template SET ArmorMultiplier=0.3 WHERE Entry=4306; -- Scarlet Torturer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4392; -- Corrosive Swamp Ooze
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4393; -- Acidic Swamp Ooze
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4396; -- Mudrock Tortoise
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4398; -- Mudrock Burrower
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4399; -- Mudrock Borer
UPDATE creature_template SET ArmorMultiplier=1.2 WHERE Entry=4402; -- Muckshell Snapclaw
UPDATE creature_template SET ArmorMultiplier=1.2 WHERE Entry=4405; -- Muckshell Razorclaw
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=4468; -- Jade Sludge
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=4528; -- Stone Rumbler
UPDATE creature_template SET ArmorMultiplier=0.25 WHERE Entry=4540; -- Scarlet Monk
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=4661; -- Gelkis Rumbler
UPDATE creature_template SET ArmorMultiplier=0.5 WHERE Entry=4666; -- Burning Blade Felsworn
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5185; -- Hammerhead Shark
UPDATE creature_template SET ArmorMultiplier=0.7 WHERE Entry=5253; -- Woodpaw Brute
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5268; -- Ironfur Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5272; -- Grizzled Ironfur Bear
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5274; -- Ironfur Patriarch
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5277; -- Nightmare Scalebane
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5327; -- Coast Crawl Snapclaw
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5328; -- Coast Crawl Deepseer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5331; -- Hatecrest Warrior
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5400; -- Zekkis
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5431; -- Surf Glider
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5432; -- Giant Surf Glider
UPDATE creature_template SET ArmorMultiplier=1.75 WHERE Entry=5465; -- Land Rager
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5490; -- Gnarled Thistleshrub
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=5823; -- Death Flayer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=5854; -- Heavy War Golem
UPDATE creature_template SET ArmorMultiplier=1.2 WHERE Entry=5855; -- Magma Elemental
UPDATE creature_template SET ArmorMultiplier=2.5 WHERE Entry=5935; -- Ironeye the Invincible
UPDATE creature_template SET ArmorMultiplier=0.8 WHERE Entry=5976; -- Dreadmaul Brute
UPDATE creature_template SET ArmorMultiplier=0.8 WHERE Entry=6011; -- Felguard Sentry
UPDATE creature_template SET ArmorMultiplier=1.7 WHERE Entry=6130; -- Blue Scalebane
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6135; -- Arkkoran Clacker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6137; -- Arkkoran Pincer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6146; -- Cliff Breaker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6147; -- Cliff Thunderer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6148; -- Cliff Walker
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6194; -- Spitelash Serpent Guard
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6350; -- Makrinni Razorclaw
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=6370; -- Makrinni Scrabbler
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=6499; -- Ironhide Devilsaur
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=6502; -- Plated Stegodon
UPDATE creature_template SET ArmorMultiplier=0.5 WHERE Entry=6788; -- Den Mother
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=6906; -- Baelog
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=7027; -- Blackrock Slayer
UPDATE creature_template SET ArmorMultiplier=0.5 WHERE Entry=7029; -- Blackrock Battlemaster
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7031; -- Obsidian Elemental
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=7033; -- Firegut Ogre
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=7034; -- Firegut Ogre Mage
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=7035; -- Firegut Brute
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7039; -- War Reaver
UPDATE creature_template SET ArmorMultiplier=1.3 WHERE Entry=7076; -- Earthen Guardian
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7138; -- Irontree Wanderer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7139; -- Irontree Stomper
UPDATE creature_template SET ArmorMultiplier=0.7 WHERE Entry=7149; -- Withered Protector
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=7206; -- Ancient Stone Keeper
UPDATE creature_template SET ArmorMultiplier=0.3 WHERE Entry=7320; -- Stonevault Mauler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7344; -- Splinterbone Warrior
UPDATE creature_template SET ArmorMultiplier=0.5 WHERE Entry=7371; -- Deadwind Mauler
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=7446; -- Rabid Shardtooth
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7687; -- Spotted Frostsaber
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7690; -- Striped Nightsaber
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7707; -- Turquoise Raptor
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7708; -- Violet Raptor
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7739; -- Red Mechanostrider
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=7749; -- Blue Mechanostrider
UPDATE creature_template SET ArmorMultiplier=1.35 WHERE Entry=7789; -- Sandfury Cretin
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=7800; -- Mekgineer Thermaplugg
UPDATE creature_template SET ArmorMultiplier=0.8 WHERE Entry=7846; -- Teremus the Devourer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=7873; -- Razorfen Battleguard
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=7915; -- Walking Bomb
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=8149; -- Sul'lithuz Warder
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=8376; -- Mechanical Chicken
UPDATE creature_template SET ArmorMultiplier=0.8 WHERE Entry=8504; -- Dark Iron Sentry
UPDATE creature_template SET ArmorMultiplier=0.7 WHERE Entry=8585; -- Frost Spectre
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=8611; -- Idol Room Spawner
UPDATE creature_template SET ArmorMultiplier=1.39 WHERE Entry=8656; -- Hukku's Voidwalker
UPDATE creature_template SET ArmorMultiplier=0.66 WHERE Entry=8657; -- Hukku's Succubus
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=8776; -- Emerald Dragon Whelp
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=8836; -- Battle Chicken
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=8926; -- Deep Stinger
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=8937; -- Pet Bomb
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=8982; -- Ironhand Guardian
UPDATE creature_template SET ArmorMultiplier=0.8 WHERE Entry=9028; -- Grizzle
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=9038; -- Seeth'rel
UPDATE creature_template SET ArmorMultiplier=1.20 WHERE Entry=9039; -- Doom'rel
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=9043; -- Scarshield Grunt
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=9158; -- Warhorse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=9256; -- Farm Chicken
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=9260; -- Firebrand Legionnaire
UPDATE creature_template SET ArmorMultiplier=1.85 WHERE Entry=9396; -- Ground Pounder
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=9601; -- Treant Spirit
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=9707; -- Scarshield Portal
UPDATE creature_template SET ArmorMultiplier=0.6 WHERE Entry=10043; -- Ribbly's Crony
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10180; -- Unpainted Mechanostrider
UPDATE creature_template SET ArmorMultiplier=1.4 WHERE Entry=10393; -- Skul
UPDATE creature_template SET ArmorMultiplier=1.4 WHERE Entry=10422; -- Crimson Sorcerer
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=10487; -- Risen Protector
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=10489; -- Risen Guard
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10577; -- Crypt Scarab
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10598; -- Smolderweb Hatchling
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10603; -- Hallucination
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10656; -- Guardian Felhunter
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10657; -- Corrupted Cat
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10716; -- Belfry Bat
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=10980; -- Umi's Mechanical Yeti
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11021; -- Winterspring Frostsaber
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11122; -- Restless Soul
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11136; -- Freed Soul
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11147; -- Green Mechanostrider
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11153; -- Red Skeletal Horse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11154; -- Blue Skeletal Horse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11155; -- Brown Skeletal Horse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11236; -- Blood Parrot
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11282; -- Melia
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11283; -- Sammy
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11321; -- Molten Elemental
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11325; -- Panda Cub
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11326; -- Mini Diablo
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11327; -- Zergling
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11562; -- Drysnap Crawler
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11563; -- Drysnap Pincer
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11689; -- Brown Kodo
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=11722; -- Hive'Ashi Defender
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=11723; -- Hive'Ashi Sandstalker
UPDATE creature_template SET ArmorMultiplier=0.75 WHERE Entry=11730; -- Hive'Regal Ambusher
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11746; -- Desert Rumbler
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11747; -- Desert Rager
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=11777; -- Shadowshard Rumbler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=11778; -- Shadowshard Smasher
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=11781; -- Ambershard Crusher
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=11782; -- Ambershard Destroyer
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=11884; -- Obi
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=11920; -- Goggeroc
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12120; -- Plagueland Termite
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=12123; -- Reef Shark
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12149; -- Gray Kodo
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12152; -- Voice of Elune
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=12204; -- Spitelash Raider
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12297; -- Cured Gazelle
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12299; -- Cured Deer
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12344; -- Swift Green Skeletal Horse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12345; -- Mottled Crimson Raptor
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=12347; -- Enraged Reef Crawler
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12348; -- Ivory Raptor
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12361; -- Riding Nightsaber
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12362; -- Riding Frostsaber
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12368; -- White Mechanostrider Mod A
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12370; -- Black Ram
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12371; -- Frost Ram
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=12377; -- Wailing Spectre
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12419; -- Lifelike Toad
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=12426; -- Masterwork Target Dummy
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=12581; -- Mercutio
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13338; -- Core Rat
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=13599; -- Stolid Snapjaw
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13756; -- PvP Graveyard Credit Marker
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13778; -- PvP Tower Credit Marker
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13796; -- PvP Mine Credit Marker
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13876; -- Mekgineer Trigger
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=13976; -- Tortured Drake
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14021; -- Winterax Sentry
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=14123; -- Steeljaw Snapper
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=14235; -- The Rot
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=14236; -- Lord Angler
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=14237; -- Oozeworm
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=14266; -- Shanda the Spinner
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14329; -- Black War Wolf
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14330; -- Black War Raptor
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14331; -- Red Skeletal Warhorse
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14332; -- Black War Steed
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14333; -- Black War Kodo
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14334; -- Black Battlestrider
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14335; -- Black War Ram
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14336; -- Black War Tiger
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14361; -- Shen'dralar Wisp
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14366; -- Warpwood Spores
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14449; -- Blackwing Orb Trigger
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14453; -- Orb of Domination
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14459; -- Nefarian's Troops
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14465; -- Alliance Battle Standard
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14466; -- Horde Battle Standard
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14495; -- Invisible Trigger One
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Entry=14505; -- Dreadsteed
UPDATE creature_template SET ArmorMultiplier=2.0 WHERE Entry=14530; -- Solenor the Slayer
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=14690; -- Revanchion
UPDATE creature_template SET ArmorMultiplier=1.02 WHERE Entry=14862; -- Emissary Roman'khan
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=15205; -- Baron Kazum
UPDATE creature_template SET ArmorMultiplier=1.25 WHERE Entry=15208; -- The Duke of Shards
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=16102; -- Sothos
UPDATE creature_template SET ArmorMultiplier=1.5 WHERE Entry=16104; -- Spirit of Sothos
UPDATE creature_template SET ArmorMultiplier=1.0 WHERE Entry=16438; -- Skeletal Trooper
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE CreatureType=8; -- All critters
UPDATE creature_template SET ArmorMultiplier=1.33 WHERE Name LIKE "Riding%)"; -- Faction mounts models

-- Global fixes
-- Fix armor of NPCs whose stats were previously fixed but were using wrong armor values
UPDATE creature_template,creature_template_classlevelstats SET Armor=BaseArmor*ArmorMultiplier WHERE ArmorMultiplier>0 AND UnitClass=Class AND MaxLevel=LEVEL;
-- Pre-fix armor for NPCs not already fixed but armor set to 0 (usually, multiplier is 1, so reduces amount of manual work)
UPDATE creature_template,creature_template_classlevelstats SET Armor=BaseArmor WHERE Armor=0 AND ArmorMultiplier=-1 AND UnitClass=Class AND MaxLevel=LEVEL;
