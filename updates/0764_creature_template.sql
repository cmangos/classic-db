
-- #################################
-- Base attack speed revert
-- #################################

UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1720 WHERE `Entry` = 541; -- Riding Gryphon
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1720 WHERE `Entry` = 2224; -- Wind Rider
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1720 WHERE `Entry` = 3574; -- Riding Bat
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1720 WHERE `Entry` = 3837; -- Riding Hippogryph
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1610 WHERE `Entry` = 5925; -- Grounding Totem
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1450 WHERE `Entry` = 10218; -- Superior Healing Ward
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1410 WHERE `Entry` = 11623; -- Scourge Summoning Crystal


-- #################################
-- Generic multiplier revert
-- #################################

UPDATE `creature_template` SET `DamageVariance` = 1, `DamageMultiplier` = 1 WHERE 1;


-- #################################
-- Specific DamageMultiplier revert
-- backport from pre 0745
-- #################################

UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `Entry` = 1842; -- Highlord Taelan Fordring
UPDATE `creature_template` SET `DamageMultiplier` = 2.4 WHERE `Entry` = 1850; -- Putridius
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 7791; -- Theka the Martyr Shapeshift
UPDATE `creature_template` SET `DamageMultiplier` = 3.5 WHERE `Entry` = 10162; -- Lord Victor Nefarius
UPDATE `creature_template` SET `DamageMultiplier` = 1.4 WHERE `Entry` = 10925; -- Rotting Worm
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `Entry` = 11102; -- Argent Rider
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 11494; -- Alzinn Trigger
UPDATE `creature_template` SET `DamageMultiplier` = 2.5 WHERE `Entry` = 11878; -- Nathanos Blightcaller
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 11981; -- Flamegor
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 11983; -- Firemaw
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 12017; -- Broodlord Lashlayer
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 12260; -- Onyxian Drake
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 12435; -- Razorgore the Untamed
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 13020; -- Vaelastrasz the Corrupt
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13516; -- Frostwolf Outrunner
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13517; -- Seasoned Outrunner
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13518; -- Veteran Outrunner
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13519; -- Champion Outrunner
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13520; -- Stormpike Ranger
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13521; -- Seasoned Ranger
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13522; -- Veteran Ranger
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13523; -- Champion Ranger
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13976; -- Tortured Drake
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 13996; -- Blackwing Technician
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 14020; -- Chromaggus
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 14601; -- Ebonroc
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14636; -- Chambermaid Pillaclencher
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14682; -- Sever
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14686; -- Lady Falther\'ess
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14690; -- Revanchion
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14693; -- Scorn
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14877; -- High Priest Venoxis Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 14941; -- High Priestess Jeklik Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14966; -- High Priest Thekal Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14967; -- High Priestess Mar\'li Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 14968; -- High Priestess Arlokk Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15376; -- Halloween Male Ghost
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15377; -- Halloween Female Ghost
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15410; -- Anachronos Dragon Form
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15411; -- Arygos Dragon Form
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15412; -- Caelestrasz Dragon Form
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15413; -- Merithra Dragon Form
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15427; -- Merithra\'s Wake
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 15507; -- Buru the Gorger Transform Visual
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15769; -- Resonating Crystal
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15772; -- Christmas Darkmaster Gandling
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15773; -- Christmas Cannon Master Willey
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15774; -- Christmas Prince Tortheldrin
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15775; -- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15776; -- Christmas Warchief Rend Blackhand
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15777; -- Christmas War Master Voone
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15796; -- Christmas Goraluk Anvilcrack
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15805; -- Minor Resonating Crystal
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15815; -- Qiraji Captain Ka\'ark
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15863; -- Darkspear Shaman
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 15973; -- Naxxramas Template
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16027; -- Living Poison
UPDATE `creature_template` SET `DamageMultiplier` = 4.6 WHERE `Entry` = 16378; -- Argent Sentry
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16382; -- Patchwork Terror
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16419; -- Ghost of Naxxramas
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16439; -- Fairbanks Transformed
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16440; -- Highlord Mograine Transform
UPDATE `creature_template` SET `DamageMultiplier` = 0.25 WHERE `Entry` = 16698; -- Corpse Scarab
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 16775; -- Spirit of Mograine
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 16776; -- Spirit of Blaumeux
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 16777; -- Spirit of Zeliek
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `Entry` = 16778; -- Spirit of Korth\'azz
UPDATE `creature_template` SET `DamageMultiplier` = 7.5 WHERE `Entry` = 16788; -- Festival Flamekeeper

-- #################################
-- Specific MinMeleeDmg revert
-- backport from pre 0745
-- #################################

UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 3; -- Flesh Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 30; -- Forest Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 36; -- Harvest Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 43; -- Mine Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 46; -- Murloc Forager
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 48; -- Skeletal Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 79; -- Narg the Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 92; -- Rock Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 94; -- Defias Cutpurse
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 95; -- Defias Smuggler
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 97; -- Riverpaw Runt
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 98; -- Riverpaw Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 99; -- Morgaine the Sly
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 103; -- Garrick Padfoot
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 113; -- Stonetusk Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 114; -- Harvest Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 115; -- Harvest Reaper
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 116; -- Defias Bandit
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 117; -- Riverpaw Gnoll
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 118; -- Prowler
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 119; -- Longsnout
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 121; -- Defias Pathstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 122; -- Defias Highwayman
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 123; -- Riverpaw Mongrel
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 124; -- Riverpaw Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 127; -- Murloc Tidehunter
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 154; -- Greater Fleshripper
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 157; -- Goretusk
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 171; -- Murloc Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 193; -- Blue Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 199; -- Young Fleshripper
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 202; -- Skeletal Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 205; -- Nightbane Dark Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 206; -- Nightbane Vile Fang
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 210; -- Bone Chewer
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 212; -- Splinter Fist Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 215; -- Defias Night Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 232; -- Farmer Ray
UPDATE `creature_template` SET `MinMeleeDmg` = 2 WHERE `Entry` = 299; -- Young Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 300; -- Zzarc\' Vul
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 314; -- Eliza
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 315; -- Stalvan Mistmantle
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 334; -- Gath\'Ilzogg
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 335; -- Singe
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 345; -- Bellygrub
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 390; -- Porcine Entourage
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 391; -- Old Murk-Eye
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 397; -- Morganth
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 412; -- Stitches
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 422; -- Murloc Flesheater
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 423; -- Redridge Mongrel
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 424; -- Redridge Poacher
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 426; -- Redridge Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 428; -- Dire Condor
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 429; -- Shadowhide Darkweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 430; -- Redridge Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 431; -- Shadowhide Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 432; -- Shadowhide Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 435; -- Blackrock Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 436; -- Blackrock Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 442; -- Tarantula
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 446; -- Redridge Basher
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 448; -- Hogger
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 449; -- Defias Knuckleduster
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 450; -- Defias Renegade Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 452; -- Riverpaw Bandit
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 453; -- Riverpaw Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 456; -- Murloc Minor Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 458; -- Murloc Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 471; -- Mother Fang
UPDATE `creature_template` SET `MinMeleeDmg` = 71 WHERE `Entry` = 472; -- Fedfennel
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 473; -- Morgan the Collector
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 474; -- Defias Rogue Wizard
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 478; -- Riverpaw Outrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 480; -- Rusty Harvest Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 481; -- Defias Footpad
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 485; -- Blackrock Outrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 501; -- Riverpaw Herbalist
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 502; -- Benny Blaanco
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 503; -- Lord Malathrom
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 506; -- Sergeant Brashclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 507; -- Fenros
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 513; -- Murloc Netter
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 515; -- Murloc Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 519; -- Slark
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 521; -- Lupos
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 522; -- Mor\'Ladim
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 525; -- Mangy Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 531; -- Skeletal Fiend
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 533; -- Nightbane Shadow Weaver
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 534; -- Nefaru
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 539; -- Pygmy Venom Web Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 545; -- Murloc Tidecaller
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 547; -- Great Goretusk
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 550; -- Defias Messenger
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 565; -- Rabid Dire Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 568; -- Shadowhide Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 570; -- Brain Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 573; -- Foe Reaper 4000
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 574; -- Naraxis
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 575; -- Fire Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 579; -- Shadowhide Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 580; -- Redridge Drudger
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 583; -- Defias Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 587; -- Bloodscalp Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 588; -- Bloodscalp Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 15 WHERE `Entry` = 589; -- Defias Pillager
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 590; -- Defias Looter
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 594; -- Defias Henchman
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 595; -- Bloodscalp Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 597; -- Bloodscalp Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 598; -- Defias Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 71 WHERE `Entry` = 599; -- Marisa du\'Paige
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 604; -- Plague Spreader
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 615; -- Blackrock Tracker
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 616; -- Chatter
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 619; -- Defias Conjurer
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 622; -- Goblin Engineer
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 623; -- Skeletal Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 626; -- Foreman Thistlenettle
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 628; -- Black Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 634; -- Defias Overseer
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 636; -- Defias Blackguard
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 639; -- Edwin VanCleef
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 642; -- Sneed\'s Shredder
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 643; -- Sneed
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 644; -- Rhahk\'Zor
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 645; -- Cookie
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 646; -- Mr. Smite
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 647; -- Captain Greenskin
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 657; -- Defias Pirate
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 660; -- Bloodscalp Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 667; -- Skullsplitter Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 669; -- Skullsplitter Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 670; -- Skullsplitter Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 671; -- Bloodscalp Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 69 WHERE `Entry` = 672; -- Skullsplitter Spiritchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 674; -- Venture Co. Strip Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 675; -- Venture Co. Foreman
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 676; -- Venture Co. Surveyor
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 677; -- Venture Co. Tinkerer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 678; -- Mosh\'Ogg Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 679; -- Mosh\'Ogg Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 680; -- Mosh\'Ogg Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 681; -- Young Stranglethorn Tiger
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 682; -- Stranglethorn Tiger
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 683; -- Young Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 684; -- Shadowmaw Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 685; -- Stranglethorn Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 686; -- Lashtail Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 69 WHERE `Entry` = 687; -- Jungle Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 688; -- Stone Maw Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 689; -- Crystal Spine Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 690; -- Cold Eye Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 691; -- Lesser Water Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 694; -- Bloodscalp Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 696; -- Skullsplitter Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 697; -- Bloodscalp Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 698; -- Bloodscalp Tiger
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 699; -- Bloodscalp Beastmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 701; -- Bloodscalp Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 702; -- Bloodscalp Scavenger
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 703; -- Lieutenant Fangore
UPDATE `creature_template` SET `MinMeleeDmg` = 2 WHERE `Entry` = 705; -- Ragged Young Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 707; -- Rockjaw Trogg
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 709; -- Mosh\'Ogg Warmonger
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 710; -- Mosh\'Ogg Spellcrafter
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 711; -- Ardo Dirtpaw
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 712; -- Redridge Thrasher
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 723; -- Mosh\'Ogg Butcher
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 728; -- Bhag\'thera
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 732; -- Murloc Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 736; -- Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 742; -- Green Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 743; -- Wyrmkin Dreamwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 744; -- Green Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 745; -- Scalebane Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 746; -- Elder Dragonkin
UPDATE `creature_template` SET `MinMeleeDmg` = 69 WHERE `Entry` = 747; -- Marsh Murloc
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 750; -- Marsh Inkspewer
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 751; -- Marsh Flesheater
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 755; -- Lost One Mudlurker
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 756; -- Skullsplitter Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 757; -- Lost One Fisherman
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 759; -- Lost One Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 760; -- Lost One Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 761; -- Lost One Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 197 WHERE `Entry` = 763; -- Lost One Chieftain
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 765; -- Swampwalker Elder
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 767; -- Swamp Jaguar
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 768; -- Shadow Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 769; -- Deathstrike Tarantula
UPDATE `creature_template` SET `MinMeleeDmg` = 170 WHERE `Entry` = 771; -- Commander Felstrom
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 772; -- Stranglethorn Tigress
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 775; -- Kurzen\'s Agent
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 780; -- Skullsplitter Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 781; -- Skullsplitter Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 782; -- Skullsplitter Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 783; -- Skullsplitter Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 784; -- Skullsplitter Beastmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 785; -- Skeletal Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 787; -- Skeletal Healer
UPDATE `creature_template` SET `MinMeleeDmg` = 4 WHERE `Entry` = 808; -- Grik\'nir the Cold
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 813; -- Colonel Kurzen
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 815; -- Bookie Herod
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 818; -- Mai\'Zoth
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 822; -- Young Forest Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 824; -- Defias Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 830; -- Sand Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 831; -- Sea Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 832; -- Dust Devil
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 833; -- Coyote Packleader
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 834; -- Coyote
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 846; -- Rotten Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 854; -- Young Jungle Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 855; -- Young Stranglethorn Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 856; -- Young Lashtail Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 858; -- Sorrow Spinner
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 871; -- Saltscale Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 873; -- Saltscale Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 875; -- Saltscale Tide Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 877; -- Saltscale Forager
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 879; -- Saltscale Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 889; -- Splinter Fist Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 891; -- Splinter Fist Fire Weaver
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 892; -- Splinter Fist Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 898; -- Nightbane Worgen
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 909; -- Defias Night Blade
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 910; -- Defias Enchanter
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 920; -- Nightbane Tainted One
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 921; -- Venture Co. Lumberjack
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 922; -- Silt Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 923; -- Young Black Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 930; -- Black Widow Hatchling
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 937; -- Kurzen Jungle Fighter
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 938; -- Kurzen Commando
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 939; -- Kurzen Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 941; -- Kurzen Headshrinker
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 942; -- Kurzen Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 943; -- Kurzen Wrangler
UPDATE `creature_template` SET `MinMeleeDmg` = 123 WHERE `Entry` = 947; -- Rohh the Silent
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 948; -- Rotted One
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 949; -- Carrion Recluse
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 950; -- Swamp Talker
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 976; -- Kurzen War Tiger
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 977; -- Kurzen War Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 978; -- Kurzen Subchief
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 1007; -- Mosshide Gnoll
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1009; -- Mosshide Mistweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1011; -- Mosshide Trapper
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 1012; -- Mosshide Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1013; -- Mosshide Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1014; -- Mosshide Alpha
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 1015; -- Highland Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 1016; -- Highland Lashtail
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 1017; -- Highland Scytheclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 1018; -- Highland Razormaw
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 1019; -- Elder Razormaw
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1021; -- Mottled Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 1022; -- Mottled Scytheclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 1023; -- Mottled Razormaw
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 1024; -- Bluegill Murloc
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1027; -- Bluegill Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1028; -- Bluegill Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1029; -- Bluegill Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 1030; -- Black Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1031; -- Crimson Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1032; -- Black Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 1033; -- Monstrous Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1034; -- Dragonmaw Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1035; -- Dragonmaw Swamprunner
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 1037; -- Dragonmaw Battlemaster
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1038; -- Dragonmaw Shadowwarder
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 1039; -- Fen Dweller
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1040; -- Fen Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 1041; -- Fen Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 1042; -- Red Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 1043; -- Lost Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 1044; -- Flamesnorting Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 1045; -- Red Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 1046; -- Red Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 1047; -- Red Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 1048; -- Scalebane Lieutenant
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 1049; -- Wyrmkin Firebrand
UPDATE `creature_template` SET `MinMeleeDmg` = 592 WHERE `Entry` = 1050; -- Scalebane Royal Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1051; -- Dark Iron Dwarf
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1052; -- Dark Iron Saboteur
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1053; -- Dark Iron Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 1054; -- Dark Iron Demolitionist
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1057; -- Dragonmaw Bonewarder
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1059; -- Ana\'thek the Cruel
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 1060; -- Mogh the Undying
UPDATE `creature_template` SET `MinMeleeDmg` = 53 WHERE `Entry` = 1062; -- Nezzliok the Dire
UPDATE `creature_template` SET `MinMeleeDmg` = 242 WHERE `Entry` = 1063; -- Jade
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1065; -- Riverpaw Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 151 WHERE `Entry` = 1081; -- Mire Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 1082; -- Sawtooth Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1083; -- Murloc Shorestriker
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 1084; -- Young Sawtooth Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 67 WHERE `Entry` = 1087; -- Sawtooth Snapper
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1088; -- Monstrous Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 1094; -- Venture Co. Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 1095; -- Venture Co. Workboss
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 1096; -- Venture Co. Geologist
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 1097; -- Venture Co. Mechanic
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 1106; -- Lost One Cook
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 1108; -- Mistvale Gorilla
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1109; -- Fleshripper
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 1110; -- Skeletal Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 1112; -- Leech Widow
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 1114; -- Jungle Thunderer
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1115; -- Rockjaw Skullthumper
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1116; -- Rockjaw Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1117; -- Rockjaw Bonesnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 1119; -- Hammerspine
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1122; -- Frostmane Hideskinner
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1123; -- Frostmane Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1124; -- Frostmane Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 1125; -- Crag Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 1128; -- Young Black Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 1129; -- Black Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1132; -- Timber
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1133; -- Starving Winter Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1137; -- Edan the Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 1142; -- Mosh\'Ogg Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 1144; -- Mosh\'Ogg Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 1150; -- River Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 1151; -- Saltwater Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 1152; -- Snapjaw Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 1159; -- First Mate Snellig
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 1160; -- Captain Halyndor
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1161; -- Stonesplinter Trogg
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1162; -- Stonesplinter Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1163; -- Stonesplinter Skullthumper
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1164; -- Stonesplinter Bonesnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1165; -- Stonesplinter Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 1166; -- Stonesplinter Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1167; -- Stonesplinter Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1169; -- Dark Iron Insurgent
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1173; -- Tunnel Rat Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 1174; -- Tunnel Rat Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 1175; -- Tunnel Rat Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1176; -- Tunnel Rat Forager
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1177; -- Tunnel Rat Surveyor
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 1178; -- Mo\'grosh Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1179; -- Mo\'grosh Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 1180; -- Mo\'grosh Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1181; -- Mo\'grosh Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 1183; -- Mo\'grosh Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1184; -- Cliff Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1185; -- Wood Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1186; -- Elder Black Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1188; -- Grizzled Black Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1189; -- Black Bear Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1190; -- Mountain Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1191; -- Mangy Mountain Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1192; -- Elder Mountain Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1194; -- Mountain Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1195; -- Forest Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1197; -- Stonesplinter Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1199; -- Juvenile Snow Leopard
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 1200; -- Morbent Fel
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1202; -- Tunnel Rat Kobold
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 1205; -- Grawmug
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 1210; -- Chok\'sul
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1216; -- Shore Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 1222; -- Dark Iron Sapper
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 1225; -- Ol\' Sooty
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 1251; -- Splinter Fist Firemonger
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 1258; -- Black Ravager Mastiff
UPDATE `creature_template` SET `MinMeleeDmg` = 70 WHERE `Entry` = 1259; -- Gobbler
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 1260; -- Great Father Arctikus
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 1270; -- Fetid Corpse
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 1271; -- Old Icebeard
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 1364; -- Balgaras the Foul
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 1388; -- Vagash
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 1393; -- Berserk Trogg
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1397; -- Frostmane Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 1398; -- Boss Galgosh
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1399; -- Magosh
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 1400; -- Wetlands Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 1417; -- Young Wetlands Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 1418; -- Bluegill Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 1421; -- Private Merle
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 1425; -- Grizlak
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1426; -- Riverpaw Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 1487; -- Splinter Fist Enslaver
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 1492; -- Gorlash
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 1493; -- Mok\'rash
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 1494; -- Negolash
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 1501; -- Mindless Zombie
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1504; -- Young Night Web Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 2 WHERE `Entry` = 1508; -- Young Scavenger
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1509; -- Ragged Scavenger
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 1512; -- Duskbat
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1513; -- Mangy Duskbat
UPDATE `creature_template` SET `MinMeleeDmg` = 8 WHERE `Entry` = 1522; -- Darkeye Bonecaster
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 1525; -- Rotting Dead
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1528; -- Shambling Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1530; -- Rotting Ancestor
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1531; -- Lost Soul
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1532; -- Wandering Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1534; -- Wailing Ancestor
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1537; -- Scarlet Zealot
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1539; -- Scarlet Neophyte
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1540; -- Scarlet Vanguard
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1545; -- Vile Fin Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1549; -- Ravenous Darkhound
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1550; -- Thrashtail Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 153 WHERE `Entry` = 1551; -- Ironjaw Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 240 WHERE `Entry` = 1552; -- Scale Belly
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1554; -- Vampiric Duskbat
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1555; -- Vicious Night Web Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 1557; -- Elder Mistvale Gorilla
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 1558; -- Silverback Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 1559; -- King Mukla
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 1561; -- Bloodsail Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 1562; -- Bloodsail Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 1563; -- Bloodsail Swashbuckler
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 1564; -- Bloodsail Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1565; -- Bloodsail Sea Dog
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 1653; -- Bloodsail Elder Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1654; -- Gregor Agamand
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1655; -- Nissa Agamand
UPDATE `creature_template` SET `MinMeleeDmg` = 20 WHERE `Entry` = 1657; -- Devlin Agamand
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1658; -- Captain Dargol
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1663; -- Dextren Ward
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1669; -- Defias Profiteer
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 1679; -- Avarus Kharag
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 1688; -- Night Web Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1689; -- Scarred Crag Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1693; -- Loch Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 1706; -- Defias Prisoner
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 1708; -- Defias Inmate
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 1711; -- Defias Convict
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 1713; -- Elder Shadowmaw Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1715; -- Defias Insurgent
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 1716; -- Bazil Thredd
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 1717; -- Hamhock
UPDATE `creature_template` SET `MinMeleeDmg` = 116 WHERE `Entry` = 1720; -- Bruegal Ironknuckle
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1725; -- Defias Watchman
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1726; -- Defias Magician
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1727; -- Defias Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1729; -- Defias Evoker
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 1731; -- Goblin Craftsman
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 1732; -- Defias Squallshaper
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1753; -- Maggot Eye
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 1763; -- Gilnid
UPDATE `creature_template` SET `MinMeleeDmg` = 15 WHERE `Entry` = 1765; -- Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1766; -- Mottled Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 1768; -- Vile Fin Tidehunter
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1769; -- Moonrage Whitescalp
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 1770; -- Moonrage Darkrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1772; -- Rot Hide Gladerunner
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1773; -- Rot Hide Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1778; -- Ferocious Grizzled Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1781; -- Mist Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1782; -- Moonrage Darksoul
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 1783; -- Skeletal Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 1784; -- Skeletal Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 1785; -- Skeletal Terror
UPDATE `creature_template` SET `MinMeleeDmg` = 128 WHERE `Entry` = 1787; -- Skeletal Executioner
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 1788; -- Skeletal Warlord
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 1789; -- Skeletal Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 71 WHERE `Entry` = 1791; -- Slavering Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 1793; -- Rotting Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1794; -- Soulless Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1795; -- Searing Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1796; -- Freezing Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1800; -- Cold Wraith
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 1801; -- Blood Wraith
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1802; -- Hungering Wraith
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1804; -- Wailing Death
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 1805; -- Flesh Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 1806; -- Vile Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1808; -- Devouring Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 1809; -- Carrion Vulture
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1812; -- Rotting Behemoth
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 1815; -- Diseased Black Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1816; -- Diseased Grizzly
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 1817; -- Diseased Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 1821; -- Carrion Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 1822; -- Venom Mist Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 1824; -- Plague Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 1826; -- Scarlet Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 1827; -- Scarlet Sentinel
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 1831; -- Scarlet Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 1832; -- Scarlet Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 1833; -- Scarlet Knight
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 1834; -- Scarlet Paladin
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 1835; -- Scarlet Invoker
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 1836; -- Scarlet Cavalier
UPDATE `creature_template` SET `MinMeleeDmg` = 546 WHERE `Entry` = 1837; -- Scarlet Judge
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 1838; -- Scarlet Interrogator
UPDATE `creature_template` SET `MinMeleeDmg` = 598 WHERE `Entry` = 1839; -- Scarlet High Clerist
UPDATE `creature_template` SET `MinMeleeDmg` = 598 WHERE `Entry` = 1840; -- Grand Inquisitor Isillien
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 1841; -- Scarlet Executioner
UPDATE `creature_template` SET `MinMeleeDmg` = 168 WHERE `Entry` = 1842; -- Highlord Taelan Fordring
UPDATE `creature_template` SET `MinMeleeDmg` = 595 WHERE `Entry` = 1843; -- Foreman Jerris
UPDATE `creature_template` SET `MinMeleeDmg` = 365 WHERE `Entry` = 1844; -- Foreman Marcrid
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 1845; -- High Protector Tarsen
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 1846; -- High Protector Lorik
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 1847; -- Foulmane
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 1848; -- Lord Maldazzar
UPDATE `creature_template` SET `MinMeleeDmg` = 573 WHERE `Entry` = 1851; -- The Husk
UPDATE `creature_template` SET `MinMeleeDmg` = 592 WHERE `Entry` = 1852; -- Araj the Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 1853; -- Darkmaster Gandling
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1866; -- Ravenclaw Slave
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 1867; -- Dalaran Apprentice
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 1868; -- Ravenclaw Servant
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 1869; -- Ravenclaw Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 1871; -- Eliza\'s Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 1883; -- Scarlet Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 1884; -- Scarlet Lumberjack
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 1885; -- Scarlet Smith
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1889; -- Dalaran Wizard
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1890; -- Rattlecage Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 1891; -- Pyrewood Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 1892; -- Moonrage Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1893; -- Moonrage Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1894; -- Pyrewood Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1895; -- Pyrewood Elder
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 1896; -- Moonrage Elder
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1908; -- Vile Fin Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 1909; -- Vile Fin Lakestalker
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 1910; -- Muad
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 1911; -- Deeb
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1912; -- Dalaran Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1913; -- Dalaran Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1914; -- Dalaran Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1915; -- Dalaran Conjuror
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1916; -- Stephen Bhartec
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 1919; -- Samuel Fipps
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1920; -- Dalaran Spellscribe
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 1922; -- Gray Forest Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1923; -- Bloodsnout Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1924; -- Moonrage Bloodhowler
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 1936; -- Farmer Solliden
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1939; -- Rot Hide Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1942; -- Rot Hide Savage
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 1944; -- Rot Hide Bruiser
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 1946; -- Lillith Nefara
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 1947; -- Thule Ravenclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 1948; -- Snarlmane
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1949; -- Servant of Azora
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1953; -- Lake Skulker
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 1954; -- Elder Lake Skulker
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1955; -- Lake Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 1956; -- Elder Lake Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 1957; -- Vile Fin Shorecreeper
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 1971; -- Ivar the Foul
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 1972; -- Grimson the Pale
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 1973; -- Ravenclaw Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 1981; -- Dark Iron Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 1984; -- Young Thistle Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1985; -- Thistle Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 1988; -- Grell
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 1994; -- Githyiss the Vile
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 1995; -- Strigid Owl
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 1997; -- Strigid Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 1998; -- Webwood Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2000; -- Webwood Silkspinner
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 2002; -- Rascal Sprite
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 2003; -- Shadow Sprite
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 2004; -- Dark Sprite
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 2005; -- Vicious Grell
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 2006; -- Gnarlpine Ursa
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 2007; -- Gnarlpine Gardener
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 2009; -- Gnarlpine Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2011; -- Gnarlpine Augur
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2013; -- Gnarlpine Avenger
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2014; -- Gnarlpine Totemic
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2015; -- Bloodfeather Harpy
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 2018; -- Bloodfeather Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2019; -- Bloodfeather Fury
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2020; -- Bloodfeather Wind Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 2022; -- Timberling
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2027; -- Timberling Trampler
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2029; -- Timberling Mire Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2030; -- Elder Timberling
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 2031; -- Young Nightsaber
UPDATE `creature_template` SET `MinMeleeDmg` = 8 WHERE `Entry` = 2033; -- Elder Nightsaber
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2034; -- Feral Nightsaber
UPDATE `creature_template` SET `MinMeleeDmg` = 8 WHERE `Entry` = 2043; -- Nightsaber Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 2061; -- Councilman Thatcher
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 2062; -- Councilman Hendricks
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2063; -- Councilman Wilhelm
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2064; -- Councilman Hartin
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2065; -- Councilman Cooper
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2066; -- Councilman Higarth
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2067; -- Councilman Brunswick
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 2068; -- Lord Mayor Morrison
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2071; -- Moonstalker Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2089; -- Giant Wetlands Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2091; -- Chieftain Nek\'rosh
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2102; -- Dragonmaw Grunt
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 2106; -- Apothecary Berard
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 2108; -- Garneg Charskull
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 2149; -- Dark Iron Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2156; -- Cracked Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 2158; -- Gravelflint Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 2159; -- Gravelflint Bonesnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2160; -- Gravelflint Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2163; -- Thistle Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 2164; -- Rabid Thistle Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 2165; -- Grizzled Thistle Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 2166; -- Oakenscowl
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2167; -- Blackwood Pathfinder
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 2168; -- Blackwood Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 2170; -- Blackwood Ursa
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2171; -- Blackwood Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2172; -- Strider Clutchmother
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 2173; -- Reef Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2174; -- Coastal Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2175; -- Shadowclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 2179; -- Stormscale Wave Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 2180; -- Stormscale Siren
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2181; -- Stormscale Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 2182; -- Stormscale Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2183; -- Stormscale Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 2184; -- Lady Moongazer
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 2186; -- Carnivous the Breaker
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2190; -- Wild Grell
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 2191; -- Licillin
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 2192; -- Firecaller Radison
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2201; -- Greymist Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 2203; -- Greymist Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 2204; -- Greymist Netter
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 2205; -- Greymist Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 2206; -- Greymist Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 2207; -- Greymist Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2208; -- Greymist Tidehunter
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2231; -- Pygmy Tide Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 2232; -- Tide Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 2234; -- Young Reef Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2236; -- Raging Reef Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 2237; -- Moonstalker Sire
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 2239; -- Drull
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2240; -- Syndicate Footpad
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2242; -- Syndicate Spy
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2243; -- Syndicate Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2244; -- Syndicate Shadow Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2245; -- Syndicate Saboteur
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2246; -- Syndicate Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 2247; -- Syndicate Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 2248; -- Cave Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 2249; -- Ferocious Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2250; -- Mountain Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2251; -- Giant Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2252; -- Crushridge Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 75 WHERE `Entry` = 2253; -- Crushridge Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2254; -- Crushridge Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2255; -- Crushridge Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2256; -- Crushridge Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2257; -- Mug\'thol
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 2258; -- Stone Fury
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2261; -- Syndicate Watchman
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 2264; -- Hillsbrad Tailor
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2267; -- Hillsbrad Peasant
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2268; -- Hillsbrad Footman
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2269; -- Hillsbrad Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2270; -- Hillsbrad Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 2271; -- Dalaran Shield Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 2272; -- Dalaran Theurgist
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2274; -- Stanley
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 2275; -- Enraged Stanley
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 2283; -- Ravenclaw Regent
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2287; -- Crushridge Warmonger
UPDATE `creature_template` SET `MinMeleeDmg` = 185 WHERE `Entry` = 2304; -- Captain Ironhill
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 2306; -- Baron Vardus
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 2319; -- Syndicate Wizard
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2320; -- Nagaz
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 2321; -- Foreststrider Fledgling
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2323; -- Giant Foreststrider
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 2324; -- Blackwood Windtalker
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2335; -- Magistrate Burnside
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 2336; -- Dark Strand Fanatic
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 2337; -- Dark Strand Voidcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 2338; -- Twilight Disciple
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2339; -- Twilight Thug
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 2344; -- Dun Garok Mountaineer
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 2345; -- Dun Garok Rifleman
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 2346; -- Dun Garok Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2347; -- Wild Gryphon
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2348; -- Elder Moss Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 2349; -- Giant Moss Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2350; -- Forest Moss Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2356; -- Elder Gray Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 2358; -- Dalaran Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 2368; -- Daggerspine Shorestalker
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2369; -- Daggerspine Shorehunter
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 2370; -- Daggerspine Screamer
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 2371; -- Daggerspine Siren
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 2372; -- Mudsnout Gnoll
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2373; -- Mudsnout Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 2385; -- Feral Mountain Lion
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 2387; -- Hillsbrad Councilman
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 2404; -- Blacksmith Verringtan
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 2406; -- Mountain Lion
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 2408; -- Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2411; -- Ricter
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 2413; -- Dermot
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2416; -- Crushridge Plunderer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2417; -- Grel\'borg the Miser
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 2421; -- Muckrake
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 2422; -- Glommus
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 2423; -- Lord Aliden Perenolde
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2427; -- Jailor Eston
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2428; -- Jailor Marlgen
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2431; -- Jailor Borhuin
UPDATE `creature_template` SET `MinMeleeDmg` = 243 WHERE `Entry` = 2447; -- Narillasanz
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 2449; -- Citizen Wilkes
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 2451; -- Farmer Kalaba
UPDATE `creature_template` SET `MinMeleeDmg` = 170 WHERE `Entry` = 2452; -- Skhowl
UPDATE `creature_template` SET `MinMeleeDmg` = 191 WHERE `Entry` = 2453; -- Lo\'Grosh
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2473; -- Granistad
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 2476; -- Large Loch Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 2477; -- Gradok
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 2478; -- Haren Swifthoof
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 2503; -- Hillsbrad Foreman
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 2505; -- Saltwater Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 2521; -- Skymane Gorilla
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 2522; -- Jaguero Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 2529; -- Son of Arugal
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 2530; -- Yenniku
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 2531; -- Minion of Morganth
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 2534; -- Zanzil the Outcast
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 2535; -- Maury "Club Foot" Wilkins
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 2536; -- Jon-Jon the Crow
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 2537; -- Chucky "Ten Thumbs"
UPDATE `creature_template` SET `MinMeleeDmg` = 257 WHERE `Entry` = 2541; -- Lord Sakrasis
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 2544; -- Southern Sand Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 2548; -- Captain Keelhaul
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 2549; -- Garr Salthoof
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 2550; -- Captain Stillwater
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 2551; -- Brutus
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 2552; -- Witherbark Troll
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2553; -- Witherbark Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2554; -- Witherbark Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 2555; -- Witherbark Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2556; -- Witherbark Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2557; -- Witherbark Shadow Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2558; -- Witherbark Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2559; -- Highland Strider
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 2560; -- Highland Thrasher
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 2561; -- Highland Fleshstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2562; -- Boulderfist Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2563; -- Plains Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 2564; -- Boulderfist Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2565; -- Giant Plains Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2566; -- Boulderfist Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2567; -- Boulderfist Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2569; -- Boulderfist Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2570; -- Boulderfist Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2571; -- Boulderfist Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2572; -- Drywhisker Kobold
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 2573; -- Drywhisker Surveyor
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2574; -- Drywhisker Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 2575; -- Dark Iron Supplier
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 2577; -- Dark Iron Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2579; -- Mesa Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2580; -- Elder Mesa Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 2586; -- Syndicate Highwayman
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 2587; -- Syndicate Pathstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2588; -- Syndicate Prowler
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 2589; -- Syndicate Mercenary
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2590; -- Syndicate Conjuror
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2591; -- Syndicate Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2592; -- Rumbling Exile
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2595; -- Daggerspine Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 2596; -- Daggerspine Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 2597; -- Lord Falconcrest
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 2598; -- Darbel Montrose
UPDATE `creature_template` SET `MinMeleeDmg` = 185 WHERE `Entry` = 2599; -- Otto
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 2600; -- Singer
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 2601; -- Foulbelly
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 2602; -- Ruul Onestone
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 2604; -- Molok the Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 197 WHERE `Entry` = 2605; -- Zalas Witherbark
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 2606; -- Nimar the Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 2607; -- Prince Galen Trollbane
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 2609; -- Geomancer Flintdagger
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2610; -- Shakes O\'Breen
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2611; -- Fozruk
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 2612; -- Lieutenant Valorcall
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2628; -- Dalaran Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 177 WHERE `Entry` = 2635; -- Elder Saltwater Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 2638; -- Syndicate Spectre
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 2639; -- Vilebranch Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 2640; -- Vilebranch Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2641; -- Vilebranch Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 2642; -- Vilebranch Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2643; -- Vilebranch Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 2644; -- Vilebranch Hideskinner
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2645; -- Vilebranch Shadow Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2646; -- Vilebranch Blood Drinker
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2647; -- Vilebranch Soul Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 2648; -- Vilebranch Aman\'zasi Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 2649; -- Witherbark Scalper
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 2650; -- Witherbark Zealot
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 2651; -- Witherbark Hideskinner
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 2653; -- Witherbark Sadist
UPDATE `creature_template` SET `MinMeleeDmg` = 66 WHERE `Entry` = 2654; -- Witherbark Caller
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 2655; -- Green Sludge
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 2656; -- Jade Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 2657; -- Trained Razorbeak
UPDATE `creature_template` SET `MinMeleeDmg` = 70 WHERE `Entry` = 2658; -- Razorbeak Gryphon
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 2659; -- Razorbeak Skylord
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 2680; -- Vilebranch Wolf Pup
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 2681; -- Vilebranch Raiding Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 2686; -- Witherbark Broodguard
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2701; -- Dustbelcher Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 2707; -- Shadra
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2714; -- Forsaken Courier
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 2715; -- Dustbelcher Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 2716; -- Dustbelcher Wyrmhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 2717; -- Dustbelcher Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 2718; -- Dustbelcher Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 2719; -- Dustbelcher Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 2720; -- Dustbelcher Ogre Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 2721; -- Forsaken Bodyguard
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2723; -- Stone Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 2725; -- Scalding Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 2726; -- Scorched Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2727; -- Crag Coyote
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2728; -- Feral Crag Coyote
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 2729; -- Elder Crag Coyote
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 2730; -- Rabid Crag Coyote
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2732; -- Ridge Huntress
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 2733; -- Apothecary Jorell
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2734; -- Ridge Stalker Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 66 WHERE `Entry` = 2736; -- Greater Rock Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2739; -- Shadowforge Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 2740; -- Shadowforge Darkweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 2742; -- Shadowforge Chanter
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2743; -- Shadowforge Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 204 WHERE `Entry` = 2744; -- Shadowforge Commander
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 2745; -- Ambassador Infernus
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 2748; -- Archaedas
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 2749; -- Siege Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 2751; -- War Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 240 WHERE `Entry` = 2752; -- Rumbler
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 2753; -- Barnabus
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 2754; -- Anathemus
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 2755; -- Myzrael
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 2757; -- Blacklash
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 2759; -- Hematus
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 2760; -- Burning Exile
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 2762; -- Thundering Exile
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 2767; -- First Mate Nilzlix
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2773; -- Or\'Kalar
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 2775; -- Daggerspine Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 2778; -- Deckhand Moishe
UPDATE `creature_template` SET `MinMeleeDmg` = 235 WHERE `Entry` = 2779; -- Prince Nazjak
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2780; -- Caretaker Nevlin
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2781; -- Caretaker Weston
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2782; -- Caretaker Alaric
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2783; -- Marez Cowl
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 2791; -- Enraged Rock Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 2829; -- Starving Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 2831; -- Giant Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 2850; -- Broken Tooth
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 2892; -- Stonevault Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 2893; -- Stonevault Bonesnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 53 WHERE `Entry` = 2894; -- Stonevault Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 2906; -- Dustbelcher Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 2907; -- Dustbelcher Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 2922; -- Servo
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 2923; -- Mangy Silvermane
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 2924; -- Silvermane Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 2925; -- Silvermane Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 2926; -- Silvermane Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 2927; -- Vicious Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 2928; -- Primitive Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 2931; -- Zaricotl
UPDATE `creature_template` SET `MinMeleeDmg` = 177 WHERE `Entry` = 2932; -- Magregan Deepshadow
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 2937; -- Dagun the Ravenous
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 2944; -- Boss Tho\'grun
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 2945; -- Murdaloc
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 2946; -- Puppet of Helcular
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 2954; -- Bristleback Battleboar
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 2955; -- Plainstrider
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2957; -- Elder Plainstrider
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 2958; -- Prairie Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 8 WHERE `Entry` = 2959; -- Prairie Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 2960; -- Prairie Wolf Alpha
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2962; -- Windfury Harpy
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2963; -- Windfury Wind Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 2964; -- Windfury Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2965; -- Windfury Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 2967; -- Galak Centaur
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 2969; -- Wiry Swoop
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 2970; -- Swoop
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 2975; -- Venture Co. Hireling
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 2976; -- Venture Co. Laborer
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 2977; -- Venture Co. Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 2978; -- Venture Co. Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 2979; -- Venture Co. Supervisor
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 3058; -- Arra\'chea
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3068; -- Mazzranache
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 3098; -- Mottled Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3100; -- Elder Mottled Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3105; -- Makrura Snapclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 3106; -- Pygmy Surf Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3108; -- Encrusted Surf Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3110; -- Dreadmaw Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3113; -- Razormane Dustrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3114; -- Razormane Battleguard
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3117; -- Dustwind Savage
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3118; -- Dustwind Storm Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 3122; -- Bloodtalon Taillasher
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 3125; -- Clattering Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3127; -- Venomtail Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3141; -- Makrura Elder
UPDATE `creature_template` SET `MinMeleeDmg` = 4 WHERE `Entry` = 3183; -- Yarrog Baneshadow
UPDATE `creature_template` SET `MinMeleeDmg` = 20 WHERE `Entry` = 3195; -- Burning Blade Thug
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 3203; -- Fizzle Darkstorm
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 3204; -- Gazz\'uz
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3206; -- Voodoo Troll
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3225; -- Corrupted Mottled Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3226; -- Corrupted Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3227; -- Corrupted Bloodtalon Scythemaw
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3228; -- Corrupted Surf Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3231; -- Corrupted Dreadmaw Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3232; -- Bristleback Interloper
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3240; -- Stormsnout
UPDATE `creature_template` SET `MinMeleeDmg` = 15 WHERE `Entry` = 3241; -- Savannah Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 3242; -- Zhevra Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3244; -- Greater Plainstrider
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3245; -- Ornery Plainstrider
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3248; -- Barrens Giraffe
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3249; -- Greater Thunderhawk
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3250; -- Silithid Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3252; -- Silithid Swarmer
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 3253; -- Silithid Harvester
UPDATE `creature_template` SET `MinMeleeDmg` = 16 WHERE `Entry` = 3254; -- Sunscale Lashtail
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3256; -- Sunscale Scytheclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 3257; -- Ishamuhale
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3258; -- Bristleback Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3260; -- Bristleback Water Seeker
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3261; -- Bristleback Thornweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3263; -- Bristleback Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3265; -- Razormane Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3267; -- Razormane Water Seeker
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 3268; -- Razormane Thornweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 18 WHERE `Entry` = 3271; -- Razormane Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 3276; -- Witchwing Harpy
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3277; -- Witchwing Roguefeather
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3278; -- Witchwing Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3279; -- Witchwing Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3282; -- Venture Co. Mercenary
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3283; -- Venture Co. Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 3284; -- Venture Co. Drudger
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 3285; -- Venture Co. Peon
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3286; -- Venture Co. Overseer
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3376; -- Bael\'dun Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 3377; -- Bael\'dun Rifleman
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3378; -- Bael\'dun Officer
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 3379; -- Burning Blade Bruiser
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 3380; -- Burning Blade Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3382; -- Southsea Cannoneer
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 3383; -- Southsea Cutthroat
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 3384; -- Southsea Privateer
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 3395; -- Verog the Dervish
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 3396; -- Hezrul Bloodmark
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 3398; -- Gesharahan
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 3414; -- General Twinbraid
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 3417; -- Living Flame
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 3424; -- Thunderhawk Cloudscraper
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3426; -- Zhevra Charger
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 3435; -- Lok Orcbane
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3445; -- Supervisor Lugwizzle
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 3452; -- Serena Bloodfeather
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 3454; -- Cannoneer Smythe
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 3455; -- Cannoneer Whessan
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3456; -- Razormane Pathfinder
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3458; -- Razormane Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3459; -- Razormane Warfrenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3461; -- Oasis Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3463; -- Wandering Barrens Giraffe
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3466; -- Zhevra Courser
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3467; -- Baron Longshore
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 3470; -- Rathorian
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 3472; -- Washte Pawne
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 3473; -- Owatanka
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 3474; -- Lakota\'mani
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3475; -- Echeyakee
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3476; -- Isha Awak
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3503; -- Silithid Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 3528; -- Pyrewood Armorer
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 3529; -- Moonrage Armorer
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 3530; -- Pyrewood Tailor
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 3531; -- Moonrage Tailor
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 3532; -- Pyrewood Leatherworker
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 3533; -- Moonrage Leatherworker
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 3535; -- Blackmoss the Fetid
UPDATE `creature_template` SET `MinMeleeDmg` = 15 WHERE `Entry` = 3569; -- Bogling
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 3570; -- Cleansed Timberling
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3577; -- Dalaran Brewmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3578; -- Dalaran Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 71 WHERE `Entry` = 3586; -- Miner Johnson
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 3616; -- Onu
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 3619; -- Ghost Saber
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3630; -- Deviate Coiler
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3631; -- Deviate Stinglash
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3632; -- Deviate Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3633; -- Deviate Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 3634; -- Deviate Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 3636; -- Deviate Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 3637; -- Deviate Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 3638; -- Devouring Ectoplasm
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 3640; -- Evolving Ectoplasm
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 3641; -- Deviate Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 110 WHERE `Entry` = 3652; -- Trigore the Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 3654; -- Mutanus the Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 3655; -- Mad Magglish
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 3660; -- Athrikus Narassin
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3664; -- Ilkrud Magthrull
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3667; -- Anaya Dawnrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 3669; -- Lord Cobrahn
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3670; -- Lord Pythas
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3671; -- Lady Anacondra
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 3672; -- Boahn
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3673; -- Lord Serpentis
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 3674; -- Skum
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 3695; -- Grimclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 3696; -- Ran Bloodtooth
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3711; -- Wrathtail Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3712; -- Wrathtail Razortail
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3713; -- Wrathtail Wave Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3715; -- Wrathtail Sea Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 3722; -- Mystlash Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 3725; -- Dark Strand Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3727; -- Dark Strand Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 3732; -- Forsaken Seeker
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3733; -- Forsaken Herbalist
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 3735; -- Apothecary Falthis
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 3736; -- Darkslayer Mordenthal
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3740; -- Saltspittle Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 3742; -- Saltspittle Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3743; -- Foulweald Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3745; -- Foulweald Pathfinder
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 3746; -- Foulweald Den Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 3749; -- Foulweald Ursa
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3750; -- Foulweald Totemic
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3752; -- Xavian Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3754; -- Xavian Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3755; -- Xavian Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3757; -- Xavian Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3758; -- Felmusk Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3759; -- Felmusk Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3762; -- Felmusk Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3763; -- Felmusk Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3765; -- Bleakheart Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3767; -- Bleakheart Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3770; -- Bleakheart Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 3771; -- Bleakheart Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3772; -- Lesser Felguard
UPDATE `creature_template` SET `MinMeleeDmg` = 123 WHERE `Entry` = 3773; -- Akkrilus
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3774; -- Felslayer
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3781; -- Shadethicket Wood Shaper
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3782; -- Shadethicket Stone Mover
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3783; -- Shadethicket Raincaller
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3784; -- Shadethicket Bark Ripper
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3804; -- Forsaken Intruder
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 3806; -- Forsaken Infiltrator
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3807; -- Forsaken Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3808; -- Forsaken Dark Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3810; -- Elder Ashenvale Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3811; -- Giant Ashenvale Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3814; -- Spined Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3815; -- Blink Dragon
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 3816; -- Wild Buck
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3818; -- Elder Shadowhorn Stag
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3819; -- Wildthorn Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 3820; -- Wildthorn Venomspitter
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 3821; -- Wildthorn Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3824; -- Ghostpaw Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 3825; -- Ghostpaw Alpha
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 3834; -- Crazed Ancient
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 3840; -- Druid of the Fang
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 3851; -- Shadowfang Whitescalp
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 3853; -- Shadowfang Moonwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3854; -- Shadowfang Wolfguard
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3855; -- Shadowfang Darksoul
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3857; -- Shadowfang Glutton
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3859; -- Shadowfang Ragetooth
UPDATE `creature_template` SET `MinMeleeDmg` = 147 WHERE `Entry` = 3861; -- Bleak Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 3862; -- Slavering Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 3863; -- Lupine Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 3866; -- Vile Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 3868; -- Blood Seeker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3872; -- Deathsworn Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3875; -- Haunted Servitor
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 3879; -- Dark Strand Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 3886; -- Razorclaw the Butcher
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 3887; -- Baron Silverlaine
UPDATE `creature_template` SET `MinMeleeDmg` = 54 WHERE `Entry` = 3893; -- Forsaken Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 3898; -- Aligar the Tormentor
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 3899; -- Balizar the Umbrage
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 3900; -- Caedakar the Vicious
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 3914; -- Rethilgore
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 3917; -- Befouled Water Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 3919; -- Withered Ancient
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 3927; -- Wolf Master Nandos
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 3928; -- Rotting Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 3931; -- Shadethicket Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 3939; -- Razormane Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 3943; -- Ruuzel
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 3944; -- Wrathtail Priestess
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 3974; -- Houndmaster Loksey
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 3975; -- Herod
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 3976; -- Scarlet Commander Mograine
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 3977; -- High Inquisitor Whitemane
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 3983; -- Interrogator Vishas
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 3984; -- Nancy Vishas
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 3985; -- Grandpa Vishas
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 3987; -- Dal Bloodclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 3989; -- Venture Co. Logger
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 3992; -- Venture Co. Engineer
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 3998; -- Windshear Vermin
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4001; -- Windshear Tunnel Rat
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4002; -- Windshear Stonecutter
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 4003; -- Windshear Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 4005; -- Deepmoss Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 28 WHERE `Entry` = 4007; -- Deepmoss Venomspitter
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4019; -- Great Courser
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4021; -- Corrosive Sap Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 4023; -- Bloodfury Roguefeather
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4024; -- Bloodfury Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 4031; -- Fledgling Chimaera
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 4032; -- Young Chimaera
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4037; -- Burning Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 4041; -- Scorched Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 4042; -- Singed Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 4053; -- Daughter of Cenarius
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4057; -- Son of Cenarius
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4061; -- Mirkfallon Dryad
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4062; -- Dark Iron Bombardier
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 4063; -- Feeboz
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4065; -- Blackrock Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 4066; -- Nal\'taszar
UPDATE `creature_template` SET `MinMeleeDmg` = 22 WHERE `Entry` = 4067; -- Twilight Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 4070; -- Venture Co. Builder
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 4073; -- XT:4
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 4074; -- XT:9
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 4093; -- Galak Wrangler
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 4094; -- Galak Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 67 WHERE `Entry` = 4095; -- Galak Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 36 WHERE `Entry` = 4096; -- Galak Windchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 4097; -- Galak Stormer
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4099; -- Galak Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4100; -- Screeching Harpy
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 4104; -- Screeching Windcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4107; -- Highperch Wyvern
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4109; -- Highperch Consort
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 4110; -- Highperch Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4111; -- Gravelsnout Kobold
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4112; -- Gravelsnout Vermin
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 4113; -- Gravelsnout Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 4114; -- Gravelsnout Forager
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 4117; -- Cloud Serpent
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4118; -- Venomous Cloud Serpent
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4119; -- Elder Cloud Serpent
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 4120; -- Thundering Boulderkin
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 4124; -- Needles Cougar
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 4127; -- Hecklefang Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 4129; -- Hecklefang Snarler
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4130; -- Silithid Searcher
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4131; -- Silithid Invader
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 4132; -- Silithid Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4133; -- Silithid Hive Drone
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4139; -- Scorpid Terror
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4140; -- Scorpid Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4142; -- Sparkleshell Tortoise
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4143; -- Sparkleshell Snapper
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4144; -- Sparkleshell Borer
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4147; -- Saltstone Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4150; -- Saltstone Gazer
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4154; -- Salt Flats Scavenger
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4158; -- Salt Flats Vulture
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 4202; -- Gerenzo Wrenchwhistle
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 4243; -- Nightshade
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4248; -- Pesterhide Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4249; -- Pesterhide Snarler
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4260; -- Venture Co. Shredder
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 4263; -- Deepmoss Hatchling
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 4264; -- Deepmoss Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4274; -- Fenrus the Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4275; -- Archmage Arugal
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 4278; -- Commander Springvale
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4279; -- Odo the Blindwatcher
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4280; -- Scarlet Preserver
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4281; -- Scarlet Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 4282; -- Scarlet Magician
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4283; -- Scarlet Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4284; -- Scarlet Augur
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4285; -- Scarlet Disciple
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4286; -- Scarlet Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4287; -- Scarlet Gallant
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4288; -- Scarlet Beastmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4289; -- Scarlet Evoker
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4290; -- Scarlet Guardsman
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4291; -- Scarlet Diviner
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4292; -- Scarlet Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4293; -- Scarlet Scryer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4294; -- Scarlet Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4295; -- Scarlet Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4296; -- Scarlet Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4297; -- Scarlet Conjuror
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4298; -- Scarlet Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4299; -- Scarlet Chaplain
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4300; -- Scarlet Wizard
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4301; -- Scarlet Centurion
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4302; -- Scarlet Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4303; -- Scarlet Abbot
UPDATE `creature_template` SET `MinMeleeDmg` = 174 WHERE `Entry` = 4304; -- Scarlet Tracking Hound
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4306; -- Scarlet Torturer
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4308; -- Unfettered Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4328; -- Firemane Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4329; -- Firemane Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4331; -- Firemane Ash Tail
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4334; -- Firemane Flamecaller
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 4339; -- Brimgore
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4341; -- Drywallow Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 80 WHERE `Entry` = 4342; -- Drywallow Vicejaw
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4343; -- Drywallow Snapper
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4344; -- Mottled Drywallow Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4345; -- Drywallow Daggermaw
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4346; -- Noxious Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4347; -- Noxious Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 4348; -- Noxious Shredder
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4351; -- Bloodfen Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4352; -- Bloodfen Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 4355; -- Bloodfen Scytheclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 4356; -- Bloodfen Razormaw
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 4357; -- Bloodfen Lashtail
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 4358; -- Mirefin Puddlejumper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4359; -- Mirefin Murloc
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 4360; -- Mirefin Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4361; -- Mirefin Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4362; -- Mirefin Coastrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4363; -- Mirefin Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 4364; -- Strashaz Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 4366; -- Strashaz Serpent Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 4368; -- Strashaz Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 4370; -- Strashaz Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 4371; -- Strashaz Siren
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 4374; -- Strashaz Hydra
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4376; -- Darkmist Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 4378; -- Darkmist Recluse
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4379; -- Darkmist Silkspinner
UPDATE `creature_template` SET `MinMeleeDmg` = 220 WHERE `Entry` = 4380; -- Darkmist Widow
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4382; -- Withervine Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4385; -- Withervine Rager
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 4386; -- Withervine Bark Ripper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4387; -- Withervine Mire Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4389; -- Murk Thresher
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4390; -- Elder Murk Thresher
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 4391; -- Swamp Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 4392; -- Corrosive Swamp Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 4393; -- Acidic Swamp Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 72 WHERE `Entry` = 4396; -- Mudrock Tortoise
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4397; -- Mudrock Spikeshell
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 4398; -- Mudrock Burrower
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 4399; -- Mudrock Borer
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 4400; -- Mudrock Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4401; -- Muckshell Clacker
UPDATE `creature_template` SET `MinMeleeDmg` = 116 WHERE `Entry` = 4402; -- Muckshell Snapclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4403; -- Muckshell Pincer
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4404; -- Muckshell Scrabbler
UPDATE `creature_template` SET `MinMeleeDmg` = 125 WHERE `Entry` = 4405; -- Muckshell Razorclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 4409; -- Gatekeeper Kordurus
UPDATE `creature_template` SET `MinMeleeDmg` = 80 WHERE `Entry` = 4411; -- Darkfang Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4412; -- Darkfang Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 80 WHERE `Entry` = 4413; -- Darkfang Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4414; -- Darkfang Venomspitter
UPDATE `creature_template` SET `MinMeleeDmg` = 67 WHERE `Entry` = 4415; -- Giant Darkfang Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 4416; -- Defias Strip Miner
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 4417; -- Defias Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 4418; -- Defias Wizard
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4420; -- Overlord Ramtusk
UPDATE `creature_template` SET `MinMeleeDmg` = 185 WHERE `Entry` = 4421; -- Charlga Razorflank
UPDATE `creature_template` SET `MinMeleeDmg` = 160 WHERE `Entry` = 4422; -- Agathelos the Raging
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 4424; -- Aggem Thorncurse
UPDATE `creature_template` SET `MinMeleeDmg` = 144 WHERE `Entry` = 4425; -- Blind Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4427; -- Ward Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 4428; -- Death Speaker Jargba
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4435; -- Razorfen Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4436; -- Razorfen Quilguard
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4437; -- Razorfen Warden
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4438; -- Razorfen Spearhide
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4440; -- Razorfen Totemic
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4442; -- Razorfen Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4457; -- Murkgill Forager
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4458; -- Murkgill Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4459; -- Murkgill Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4460; -- Murkgill Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4461; -- Murkgill Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4462; -- Blackrock Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 4463; -- Blackrock Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4464; -- Blackrock Gladiator
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4465; -- Vilebranch Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 4466; -- Vilebranch Scalper
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 4467; -- Vilebranch Soothsayer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4468; -- Jade Sludge
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 4469; -- Emerald Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 4472; -- Haunting Vision
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 4474; -- Rotting Cadaver
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 4475; -- Blighted Zombie
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 4479; -- Fardel Dabyrie
UPDATE `creature_template` SET `MinMeleeDmg` = 37 WHERE `Entry` = 4481; -- Marcel Dabyrie
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 4493; -- Scarlet Avenger
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 4494; -- Scarlet Spellbinder
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4499; -- Rok\'Alim the Pounder
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 4504; -- Frostmaw
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 4505; -- Bloodsail Deckhand
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 4506; -- Bloodsail Swabby
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 4511; -- Agam\'ar
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 4512; -- Rotting Agam\'ar
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4514; -- Raging Agam\'ar
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4515; -- Death\'s Head Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4516; -- Death\'s Head Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4517; -- Death\'s Head Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 4518; -- Death\'s Head Sage
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4519; -- Death\'s Head Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4520; -- Razorfen Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 4522; -- Razorfen Dustweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4523; -- Razorfen Groundshaker
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4525; -- Razorfen Earthbreaker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4526; -- Wind Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 164 WHERE `Entry` = 4528; -- Stone Rumbler
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4530; -- Razorfen Handler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4532; -- Razorfen Beastmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 4538; -- Kraul Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 4539; -- Greater Kraul Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4540; -- Scarlet Monk
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4541; -- Blood of Agamaggan
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 4542; -- High Inquisitor Fairbanks
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4543; -- Bloodmage Thalnos
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4546; -- Bor\'zehn
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 4548; -- Steelsnap
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4619; -- Geltharis
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4623; -- Quilguard Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 356 WHERE `Entry` = 4624; -- Booty Bay Bruiser
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 4625; -- Death\'s Head Ward Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4627; -- Arugal\'s Voidwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4638; -- Magram Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4639; -- Magram Outrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4640; -- Magram Wrangler
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4641; -- Magram Windchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 4642; -- Magram Stormer
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4643; -- Magram Pack Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4644; -- Magram Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4645; -- Magram Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4646; -- Gelkis Outrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4647; -- Gelkis Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4648; -- Gelkis Stamper
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4649; -- Gelkis Windchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 4651; -- Gelkis Earthcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4652; -- Gelkis Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4653; -- Gelkis Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4654; -- Maraudine Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4655; -- Maraudine Wrangler
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 4656; -- Maraudine Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4657; -- Maraudine Windchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4658; -- Maraudine Stormer
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 4659; -- Maraudine Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 4660; -- Maraudine Bonepaw
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4661; -- Gelkis Rumbler
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4662; -- Magram Bonepaw
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4663; -- Burning Blade Augur
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4664; -- Burning Blade Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 4665; -- Burning Blade Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 4666; -- Burning Blade Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 4667; -- Burning Blade Shadowmage
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 4668; -- Burning Blade Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4670; -- Hatefury Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4671; -- Hatefury Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4672; -- Hatefury Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4673; -- Hatefury Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4674; -- Hatefury Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 67 WHERE `Entry` = 4676; -- Lesser Infernal
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 4677; -- Doomwarder
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4678; -- Mana Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 4680; -- Doomwarder Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4681; -- Mage Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4682; -- Nether Sister
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4684; -- Nether Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 4686; -- Deepstrider Giant
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4687; -- Deepstrider Searcher
UPDATE `creature_template` SET `MinMeleeDmg` = 15 WHERE `Entry` = 4688; -- Bonepaw Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4692; -- Dread Swoop
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4693; -- Dread Flyer
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 4694; -- Dread Ripper
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4695; -- Carrion Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 4696; -- Scorpashi Snapper
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4697; -- Scorpashi Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 4699; -- Scorpashi Venomlash
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 4705; -- Burning Blade Invoker
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4711; -- Slitherblade Naga
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4713; -- Slitherblade Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 4714; -- Slitherblade Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4715; -- Slitherblade Razortail
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 4716; -- Slitherblade Tidehunter
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4718; -- Slitherblade Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 4719; -- Slitherblade Sea Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4723; -- Foreman Cozzle
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 4728; -- Gritjaw Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 4729; -- Hulking Gritjaw Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 4784; -- Argent Guard Manados
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4788; -- Fallenroot Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4789; -- Fallenroot Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4798; -- Fallenroot Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4799; -- Fallenroot Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4802; -- Blackfathom Tide Priestess
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4803; -- Blackfathom Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4805; -- Blackfathom Sea Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4807; -- Blackfathom Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4809; -- Twilight Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4810; -- Twilight Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4811; -- Twilight Aquamancer
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4812; -- Twilight Loreseeker
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4813; -- Twilight Shadowmage
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4814; -- Twilight Elementalist
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4815; -- Murkshallow Snapclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4818; -- Blindlight Murloc
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4819; -- Blindlight Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 4820; -- Blindlight Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 4821; -- Skittering Crustacean
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 4822; -- Snapping Crustacean
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 4823; -- Barbed Crustacean
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 4824; -- Aku\'mai Fisher
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 4825; -- Aku\'mai Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 4827; -- Deep Pool Threshfin
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 4829; -- Aku\'mai
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4830; -- Old Serra\'kis
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 4831; -- Lady Sarevess
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 4832; -- Twilight Lord Kelris
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 4841; -- Deadmire
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4842; -- Earthcaller Halmgar
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4844; -- Shadowforge Surveyor
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4845; -- Shadowforge Ruffian
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4846; -- Shadowforge Digger
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4847; -- Shadowforge Relic Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4848; -- Shadowforge Darkcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4849; -- Shadowforge Archaeologist
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4850; -- Stonevault Cave Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4851; -- Stonevault Rockchewer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4852; -- Stonevault Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4853; -- Stonevault Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 4854; -- Grimlok
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4855; -- Stonevault Brawler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 4856; -- Stonevault Cave Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4857; -- Stone Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 4860; -- Stone Steward
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 4861; -- Shrike Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 115 WHERE `Entry` = 4863; -- Jadespine Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 4872; -- Obsidian Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 4887; -- Ghamoo-ra
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 4950; -- Spot
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 4958; -- Haunting Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 4971; -- Slim\'s Friend
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 4977; -- Murkshallow Softshell
UPDATE `creature_template` SET `MinMeleeDmg` = 121 WHERE `Entry` = 4978; -- Aku\'mai Servant
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 5046; -- Lieutenant Caldwell
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 5048; -- Deviate Adder
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 5053; -- Deviate Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 5055; -- Deviate Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 5056; -- Deviate Dreadfang
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 5058; -- Wolfguard Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 5224; -- Murk Slitherer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5225; -- Murk Spitter
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 5226; -- Murk Worm
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5228; -- Saturated Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 5229; -- Gordunni Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 5232; -- Gordunni Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5234; -- Gordunni Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5235; -- Fungal Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 69 WHERE `Entry` = 5236; -- Gordunni Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 54 WHERE `Entry` = 5237; -- Gordunni Ogre Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5238; -- Gordunni Battlemaster
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 5239; -- Gordunni Mage-Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 5240; -- Gordunni Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5241; -- Gordunni Warlord
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5244; -- Zukk\'ash Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5245; -- Zukk\'ash Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5246; -- Zukk\'ash Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5247; -- Zukk\'ash Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 5249; -- Woodpaw Mongrel
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5251; -- Woodpaw Trapper
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 5253; -- Woodpaw Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 5254; -- Woodpaw Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 5255; -- Woodpaw Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5256; -- Atal\'ai Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5258; -- Woodpaw Alpha
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 5259; -- Atal\'ai Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 80 WHERE `Entry` = 5260; -- Groddoc Ape
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 5262; -- Groddoc Thunderer
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5268; -- Ironfur Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5269; -- Atal\'ai Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5270; -- Atal\'ai Corpse Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5271; -- Atal\'ai Deathwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5272; -- Grizzled Ironfur Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 5273; -- Atal\'ai High Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5274; -- Ironfur Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 5276; -- Sprite Dragon
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 5277; -- Nightmare Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 63 WHERE `Entry` = 5278; -- Sprite Darter
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 5280; -- Nightmare Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5283; -- Nightmare Wanderer
UPDATE `creature_template` SET `MinMeleeDmg` = 67 WHERE `Entry` = 5286; -- Longtooth Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5287; -- Longtooth Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5288; -- Rabid Longtooth
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 5291; -- Hakkari Frostwing
UPDATE `creature_template` SET `MinMeleeDmg` = 72 WHERE `Entry` = 5292; -- Feral Scar Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 5293; -- Hulking Feral Scar
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5296; -- Rage Scar Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5299; -- Ferocious Rage Scar
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5300; -- Frayfeather Hippogryph
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5304; -- Frayfeather Stagwing
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5305; -- Frayfeather Skystormer
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5306; -- Frayfeather Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5307; -- Vale Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 5308; -- Rogue Vale Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 5312; -- Lethlas
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 5314; -- Phantim
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 5317; -- Jademir Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 5319; -- Jademir Tree Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 5320; -- Jademir Boughguard
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5327; -- Coast Crawl Snapclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 5328; -- Coast Crawl Deepseer
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 5331; -- Hatecrest Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5332; -- Hatecrest Wave Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 69 WHERE `Entry` = 5333; -- Hatecrest Serpent Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 5334; -- Hatecrest Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 5335; -- Hatecrest Screamer
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 5336; -- Hatecrest Sorceress
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 5337; -- Hatecrest Siren
UPDATE `creature_template` SET `MinMeleeDmg` = 248 WHERE `Entry` = 5343; -- Lady Szallah
UPDATE `creature_template` SET `MinMeleeDmg` = 240 WHERE `Entry` = 5345; -- Diamond Head
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 5346; -- Bloodroar the Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 5347; -- Antilus the Soarer
UPDATE `creature_template` SET `MinMeleeDmg` = 270 WHERE `Entry` = 5349; -- Arash-ethis
UPDATE `creature_template` SET `MinMeleeDmg` = 257 WHERE `Entry` = 5350; -- Qirot
UPDATE `creature_template` SET `MinMeleeDmg` = 225 WHERE `Entry` = 5352; -- Old Grizzlegut
UPDATE `creature_template` SET `MinMeleeDmg` = 235 WHERE `Entry` = 5354; -- Gnarl Leafbrother
UPDATE `creature_template` SET `MinMeleeDmg` = 210 WHERE `Entry` = 5356; -- Snarler
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5357; -- Land Walker
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 5358; -- Cliff Giant
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 5359; -- Shore Strider
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5361; -- Wave Strider
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 5362; -- Northspring Harpy
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 5363; -- Northspring Roguefeather
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 5364; -- Northspring Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5366; -- Northspring Windcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 5399; -- Veyzhak the Cannibal
UPDATE `creature_template` SET `MinMeleeDmg` = 248 WHERE `Entry` = 5400; -- Zekkis
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 5416; -- Infiltrator Marksen
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 5419; -- Glasshide Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 5420; -- Glasshide Gazer
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5421; -- Glasshide Petrifier
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 5422; -- Scorpid Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5423; -- Scorpid Tail Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5424; -- Scorpid Dunestalker
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5425; -- Starving Blisterpaw
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 5426; -- Blisterpaw Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5427; -- Rabid Blisterpaw
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 5428; -- Roc
UPDATE `creature_template` SET `MinMeleeDmg` = 63 WHERE `Entry` = 5429; -- Fire Roc
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 5430; -- Searing Roc
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 5431; -- Surf Glider
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 5432; -- Giant Surf Glider
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5441; -- Hazzali Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 5450; -- Hazzali Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 5451; -- Hazzali Swarmer
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5452; -- Hazzali Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5453; -- Hazzali Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 5454; -- Hazzali Sandreaver
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5455; -- Centipaar Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5456; -- Centipaar Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 5457; -- Centipaar Swarmer
UPDATE `creature_template` SET `MinMeleeDmg` = 296 WHERE `Entry` = 5458; -- Centipaar Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5459; -- Centipaar Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 5460; -- Centipaar Sandreaver
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5461; -- Sea Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5462; -- Sea Spray
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5465; -- Land Rager
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5466; -- Coast Strider
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 5467; -- Deep Dweller
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 5469; -- Dune Smasher
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 5470; -- Raging Dune Smasher
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5471; -- Dunemaul Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5472; -- Dunemaul Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 5473; -- Dunemaul Ogre Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 122 WHERE `Entry` = 5474; -- Dunemaul Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 5475; -- Dunemaul Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 5477; -- Noboru the Cudgel
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5490; -- Gnarled Thistleshrub
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5598; -- Atal\'ai Exile
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 5622; -- Ongeku
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 5643; -- Tyranis Malem
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5645; -- Sandfury Hideskinner
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5646; -- Sandfury Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5647; -- Sandfury Firecaller
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5648; -- Sandfury Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5649; -- Sandfury Blood Drinker
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5650; -- Sandfury Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 5683; -- Comar Villard
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 5708; -- Spawn of Hakkar
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 5709; -- Shade of Eranikus
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 5710; -- Jammal\'an the Prophet
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5711; -- Ogom the Wretched
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5712; -- Zolo
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5713; -- Gasher
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5714; -- Loro
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5715; -- Hukku
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5716; -- Zul\'Lor
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 5717; -- Mijan
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 5718; -- Rothos
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 5719; -- Morphaz
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 5720; -- Weaver
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 5721; -- Dreamscythe
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 5722; -- Hazzas
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 5755; -- Deviate Viper
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 5756; -- Deviate Venomwing
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 5760; -- Lord Azrethoc
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 5761; -- Deviate Shambler
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 5762; -- Deviate Moccasin
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 5763; -- Nightmare Ectoplasm
UPDATE `creature_template` SET `MinMeleeDmg` = 3 WHERE `Entry` = 5766; -- Savannah Cub
UPDATE `creature_template` SET `MinMeleeDmg` = 53 WHERE `Entry` = 5771; -- Jugkar Grim\'rod
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 5775; -- Verdan the Everliving
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 5785; -- Sister Hatelash
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 5786; -- Snagglespear
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 5787; -- Enforcer Emilgund
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 5797; -- Aean Swiftriver
UPDATE `creature_template` SET `MinMeleeDmg` = 121 WHERE `Entry` = 5800; -- Marcus Bel
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 5808; -- Warlord Kolkanis
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 5822; -- Felweaver Scornn
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 5823; -- Death Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5824; -- Captain Flat Tusk
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 5826; -- Geolord Mottle
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 5827; -- Brontus
UPDATE `creature_template` SET `MinMeleeDmg` = 160 WHERE `Entry` = 5828; -- Humar the Pridelord
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 5830; -- Sister Rathtalon
UPDATE `creature_template` SET `MinMeleeDmg` = 53 WHERE `Entry` = 5831; -- Swiftmane
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 5833; -- Margol the Rager
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 5834; -- Azzere the Skyblade
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 5835; -- Foreman Grills
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 5836; -- Engineer Whirleygig
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 5837; -- Stonearm
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 5838; -- Brokespear
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 5839; -- Dark Iron Geologist
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5840; -- Dark Iron Steamsmith
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 5841; -- Rocklance
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5844; -- Dark Iron Slaver
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5846; -- Dark Iron Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 5848; -- Malgin Barleybrew
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 5849; -- Digger Flameforge
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5850; -- Blazing Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 5851; -- Captain Gerogg Hammertoe
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 5852; -- Inferno Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 5854; -- Heavy War Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5855; -- Magma Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5857; -- Searing Lava Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 5858; -- Greater Lava Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 5859; -- Hagg Taurenbane
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 5860; -- Twilight Dark Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 5861; -- Twilight Fire Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 5862; -- Twilight Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 5863; -- Geopriest Gukk\'rok
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 5865; -- Dishu
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 5889; -- Mesa Earth Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 5893; -- Minor Manifestation of Fire
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 5894; -- Corrupt Minor Manifestation of Water
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 5896; -- Fire Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 5898; -- Air Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 5902; -- Minor Manifestation of Air
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 5912; -- Deviate Faerie Dragon
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 5914; -- Deviate Nightmare
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 5915; -- Brother Ravenoak
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 5928; -- Sorrow Wing
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 5930; -- Sister Riven
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 5931; -- Foreman Rigger
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 5933; -- Achellios the Banished
UPDATE `creature_template` SET `MinMeleeDmg` = 160 WHERE `Entry` = 5934; -- Heartrazor
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 5935; -- Ironeye the Invincible
UPDATE `creature_template` SET `MinMeleeDmg` = 177 WHERE `Entry` = 5937; -- Vile Sting
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 5974; -- Dreadmaul Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 123 WHERE `Entry` = 5976; -- Dreadmaul Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 5977; -- Dreadmaul Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 5978; -- Dreadmaul Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5982; -- Black Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 5983; -- Bonepicker
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 5984; -- Starving Snickerfang
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 5985; -- Snickerfang Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 5988; -- Scorpok Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 5990; -- Redstone Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 5991; -- Redstone Crystalhide
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 5992; -- Ashmane Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 5993; -- Helboar
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6004; -- Shadowsworn Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 6005; -- Shadowsworn Thug
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 6006; -- Shadowsworn Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 122 WHERE `Entry` = 6007; -- Shadowsworn Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 6008; -- Shadowsworn Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 6009; -- Shadowsworn Dreadweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 114 WHERE `Entry` = 6011; -- Felguard Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 6013; -- Wayward Buzzard
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 6020; -- Slimeshell Makrura
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 6021; -- Boar Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 23 WHERE `Entry` = 6033; -- Lake Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6035; -- Razorfen Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 6069; -- Maraudine Khan Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 6070; -- Maraudine Khan Advisor
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 6071; -- Legion Hound
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 6072; -- Diathorus the Seeker
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 6073; -- Searing Infernal
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 6115; -- Roaming Felguard
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 6118; -- Varo\'then\'s Ghost
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 6123; -- Dark Iron Spy
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 6125; -- Haldarr Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 6126; -- Haldarr Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 55 WHERE `Entry` = 6127; -- Haldarr Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 6128; -- Vorlus Vilehoof
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6129; -- Draconic Magelord
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6130; -- Blue Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6131; -- Draconic Mageweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6132; -- Razorfen Servitor
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 6135; -- Arkkoran Clacker
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 6136; -- Arkkoran Muckdweller
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 6137; -- Arkkoran Pincer
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6138; -- Arkkoran Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 6139; -- Highperch Soarer
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 6140; -- Hetaera
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6143; -- Servant of Arkkoroc
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6144; -- Son of Arkkoroc
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 6146; -- Cliff Breaker
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 6147; -- Cliff Thunderer
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 6148; -- Cliff Walker
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 6168; -- Roogug
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 6170; -- Gutspill
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 6180; -- Defias Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 6190; -- Spitelash Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 6193; -- Spitelash Screamer
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 6194; -- Spitelash Serpent Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 6195; -- Spitelash Siren
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6196; -- Spitelash Myrmidon
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 6200; -- Legashi Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6201; -- Legashi Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 6202; -- Legashi Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6212; -- Dark Iron Agent
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 6215; -- Chomper
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6218; -- Irradiated Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6219; -- Corrosive Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 6222; -- Leprous Technician
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6223; -- Leprous Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 6224; -- Leprous Machinesmith
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 6228; -- Dark Iron Ambassador
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6230; -- Peacekeeper Security Suit
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6232; -- Arcane Nullifier X-21
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6235; -- Electrocutioner 6000
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 6239; -- Cyclonian
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6243; -- Gelihast
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6347; -- Young Wavethrasher
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6348; -- Wavethrasher
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 6349; -- Great Wavethrasher
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 6350; -- Makrinni Razorclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 6366; -- Kurzen Mindslave
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 6369; -- Coralshell Tortoise
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 6370; -- Makrinni Scrabbler
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 6372; -- Makrinni Snapclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 6375; -- Thunderhead Hippogryph
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 6377; -- Thunderhead Stagwing
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 6378; -- Thunderhead Skystormer
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 6379; -- Thunderhead Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 6380; -- Thunderhead Consort
UPDATE `creature_template` SET `MinMeleeDmg` = 22 WHERE `Entry` = 6390; -- Ulag the Cleaver
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6426; -- Anguished Dead
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6427; -- Haunting Phantasm
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6487; -- Arcanist Doan
UPDATE `creature_template` SET `MinMeleeDmg` = 166 WHERE `Entry` = 6489; -- Ironspine
UPDATE `creature_template` SET `MinMeleeDmg` = 174 WHERE `Entry` = 6490; -- Azshir the Sleepless
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 6493; -- Illusionary Phantasm
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 6497; -- Astor Hadren
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 6498; -- Devilsaur
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 6499; -- Ironhide Devilsaur
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 6500; -- Tyrant Devilsaur
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 6501; -- Stegodon
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 6502; -- Plated Stegodon
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 6503; -- Spiked Stegodon
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 6505; -- Ravasaur
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 6506; -- Ravasaur Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 6507; -- Ravasaur Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 6508; -- Venomhide Ravasaur
UPDATE `creature_template` SET `MinMeleeDmg` = 108 WHERE `Entry` = 6509; -- Bloodpetal Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 114 WHERE `Entry` = 6510; -- Bloodpetal Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 110 WHERE `Entry` = 6511; -- Bloodpetal Thresher
UPDATE `creature_template` SET `MinMeleeDmg` = 118 WHERE `Entry` = 6512; -- Bloodpetal Trapper
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6513; -- Un\'Goro Stomper
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6514; -- Un\'Goro Gorilla
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6516; -- Un\'Goro Thunderer
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6520; -- Scorching Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 6521; -- Living Blaze
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 6523; -- Dark Iron Rifleman
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6549; -- Demon of the Orb
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6551; -- Gorishi Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 149 WHERE `Entry` = 6552; -- Gorishi Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6553; -- Gorishi Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6554; -- Gorishi Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 6555; -- Gorishi Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 6556; -- Muculent Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 6557; -- Primal Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 6559; -- Glutinous Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 6560; -- Stone Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 6575; -- Scarlet Trainee
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 6581; -- Ravasaur Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 311 WHERE `Entry` = 6582; -- Clutchmother Zavas
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 6583; -- Gruff
UPDATE `creature_template` SET `MinMeleeDmg` = 303 WHERE `Entry` = 6585; -- Uhk\'loc
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 6606; -- Overseer Glibby
UPDATE `creature_template` SET `MinMeleeDmg` = 233 WHERE `Entry` = 6646; -- Monnos the Elder
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 6647; -- Magister Hawkhelm
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 6648; -- Antilos
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 6649; -- Lady Sesspira
UPDATE `creature_template` SET `MinMeleeDmg` = 288 WHERE `Entry` = 6650; -- General Fangferror
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 6651; -- Gatekeeper Rageroar
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 6652; -- Master Feardred
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 6668; -- Lord Cyrik Blackforge
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 6733; -- Stonevault Basher
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 6748; -- Water Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 6766; -- Ravenholdt Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 6768; -- Lord Jorach Ravenholdt
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 6771; -- Ravenholdt Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 6788; -- Den Mother
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 6789; -- Thistle Cub
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 6846; -- Defias Dockmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 6866; -- Defias Bodyguard
UPDATE `creature_template` SET `MinMeleeDmg` = 66 WHERE `Entry` = 6867; -- Tracking Hound
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 6910; -- Revelosh
UPDATE `creature_template` SET `MinMeleeDmg` = 26 WHERE `Entry` = 6911; -- Minion of Sethir
UPDATE `creature_template` SET `MinMeleeDmg` = 11 WHERE `Entry` = 6927; -- Defias Dockworker
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 6932; -- Swamp Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 7009; -- Arantir
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 7011; -- Earthen Rocksmasher
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 7012; -- Earthen Sculptor
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7015; -- Flagglemurk the Cruel
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7016; -- Lady Vespira
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7017; -- Lord Sinslayer
UPDATE `creature_template` SET `MinMeleeDmg` = 115 WHERE `Entry` = 7022; -- Venomlash Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7023; -- Obsidian Sentinel
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7025; -- Blackrock Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 7026; -- Blackrock Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 166 WHERE `Entry` = 7027; -- Blackrock Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 7028; -- Blackrock Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7029; -- Blackrock Battlemaster
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 7030; -- Shadowforge Geologist
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7031; -- Obsidian Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7033; -- Firegut Ogre
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 7034; -- Firegut Ogre Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7035; -- Firegut Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 7039; -- War Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7040; -- Black Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7041; -- Black Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7042; -- Flamescale Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7043; -- Flamescale Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 7044; -- Black Drake
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 7045; -- Scalding Drake
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 7047; -- Black Broodling
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 7048; -- Scalding Broodling
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7049; -- Flamescale Broodling
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 7050; -- Defias Drone
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 7052; -- Defias Tower Patroller
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 7055; -- Blackrock Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 7056; -- Defias Tower Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 7057; -- Digmaster Shovelphlange
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 7067; -- Venture Co. Drone
UPDATE `creature_template` SET `MinMeleeDmg` = 374 WHERE `Entry` = 7068; -- Condemned Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 460 WHERE `Entry` = 7069; -- Condemned Monk
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 7070; -- Condemned Cleric
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 7076; -- Earthen Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 47 WHERE `Entry` = 7077; -- Earthen Hallshaper
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 7078; -- Cleft Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 7079; -- Viscous Fallout
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7091; -- Shadowforge Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7092; -- Tainted Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 7093; -- Vile Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 7097; -- Ironbeak Owl
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7098; -- Ironbeak Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7099; -- Ironbeak Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7100; -- Warpwood Moss Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 7101; -- Warpwood Shredder
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7104; -- Dessecus
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 7105; -- Jadefire Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7106; -- Jadefire Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 7107; -- Jadefire Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7108; -- Jadefire Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 7109; -- Jadefire Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7110; -- Jadefire Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 7111; -- Jadefire Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 75 WHERE `Entry` = 7112; -- Jaedenar Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7113; -- Jaedenar Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 7114; -- Jaedenar Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 75 WHERE `Entry` = 7115; -- Jaedenar Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7118; -- Jaedenar Darkweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7120; -- Jaedenar Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7125; -- Jaedenar Hound
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7126; -- Jaedenar Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 7135; -- Infernal Bodyguard
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 7136; -- Infernal Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7137; -- Immolatus
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7138; -- Irontree Wanderer
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7139; -- Irontree Stomper
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7149; -- Withered Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 7153; -- Deadwood Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 7154; -- Deadwood Gardener
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 7155; -- Deadwood Pathfinder
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 7156; -- Deadwood Den Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 7157; -- Deadwood Avenger
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7158; -- Deadwood Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 7175; -- Stonevault Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7206; -- Ancient Stone Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 7228; -- Ironaya
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 7235; -- Gnarlpine Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7246; -- Sandfury Shadowhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7247; -- Sandfury Soul Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7267; -- Chief Ukorz Sandscalp
UPDATE `creature_template` SET `MinMeleeDmg` = 171 WHERE `Entry` = 7268; -- Sandfury Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 7269; -- Scarab
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7271; -- Witch Doctor Zum\'rah
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 7273; -- Gahz\'rilla
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7274; -- Sandfury Executioner
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 7275; -- Shadowpriest Sezz\'ziz
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 7287; -- Foreman Silixiz
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 7288; -- Grand Foreman Puzik Gallywix
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7290; -- Shadowforge Sharpshooter
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 7307; -- Venture Co. Lookout
UPDATE `creature_template` SET `MinMeleeDmg` = 33 WHERE `Entry` = 7308; -- Venture Co. Patroller
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7320; -- Stonevault Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7321; -- Stonevault Flameweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 7333; -- Withered Battle Boar
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7335; -- Death\'s Head Geomancer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7337; -- Death\'s Head Necromancer
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 7340; -- Skeletal Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7341; -- Skeletal Frostweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 199 WHERE `Entry` = 7342; -- Skeletal Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 7343; -- Splinterbone Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 7344; -- Splinterbone Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 7345; -- Splinterbone Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 7346; -- Splinterbone Centurion
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7347; -- Boneflayer Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7348; -- Thorn Eater Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 80 WHERE `Entry` = 7349; -- Tomb Fiend
UPDATE `creature_template` SET `MinMeleeDmg` = 177 WHERE `Entry` = 7351; -- Tomb Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7352; -- Frozen Soul
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7353; -- Freezing Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 7354; -- Ragglesnout
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 7355; -- Tuten\'kash
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 7356; -- Plaguemaw the Rotting
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 7357; -- Mordresh Fire Eye
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7358; -- Amnennar the Coldbringer
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7361; -- Grubbis
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7369; -- Deadwind Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 223 WHERE `Entry` = 7370; -- Restless Shade
UPDATE `creature_template` SET `MinMeleeDmg` = 147 WHERE `Entry` = 7371; -- Deadwind Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 7372; -- Deadwind Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7376; -- Sky Shadow
UPDATE `creature_template` SET `MinMeleeDmg` = 83 WHERE `Entry` = 7379; -- Deadwind Ogre Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 7396; -- Earthen Stonebreaker
UPDATE `creature_template` SET `MinMeleeDmg` = 59 WHERE `Entry` = 7397; -- Earthen Stonecarver
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 7404; -- Galak Flame Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 7405; -- Deadly Cleft Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 7428; -- Frostmaul Giant
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 7429; -- Frostmaul Preserver
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 7430; -- Frostsaber Cub
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 7431; -- Frostsaber
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 7432; -- Frostsaber Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 7433; -- Frostsaber Huntress
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 7434; -- Frostsaber Pride Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 460 WHERE `Entry` = 7435; -- Cobalt Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 460 WHERE `Entry` = 7436; -- Cobalt Scalebane
UPDATE `creature_template` SET `MinMeleeDmg` = 460 WHERE `Entry` = 7437; -- Cobalt Mageweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 168 WHERE `Entry` = 7438; -- Winterfall Ursa
UPDATE `creature_template` SET `MinMeleeDmg` = 91 WHERE `Entry` = 7439; -- Winterfall Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7440; -- Winterfall Den Watcher
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7441; -- Winterfall Totemic
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 7442; -- Winterfall Pathfinder
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7443; -- Shardtooth Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 7444; -- Shardtooth Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7445; -- Elder Shardtooth
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 7446; -- Rabid Shardtooth
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 7447; -- Fledgling Chillwind
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 7448; -- Chillwind Chimaera
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 7449; -- Chillwind Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 7450; -- Ragged Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 7451; -- Raging Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 7452; -- Crazed Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 7453; -- Moontouched Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7454; -- Berserk Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 7455; -- Winterspring Owl
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 7456; -- Winterspring Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 7457; -- Rogue Ice Thistle
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 7458; -- Ice Thistle Yeti
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 7459; -- Ice Thistle Matriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7460; -- Ice Thistle Patriarch
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7584; -- Wandering Forest Walker
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 7603; -- Leprous Assistant
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7604; -- Sergeant Bly
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7605; -- Raven
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7606; -- Oro Eyegouge
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 7607; -- Weegli Blastfuse
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7608; -- Murta Grimgut
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 7664; -- Razelikh the Defiler
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 7665; -- Grol the Destroyer
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7666; -- Archmage Allistarj
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 7667; -- Lady Sevine
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 7668; -- Servant of Razelikh
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7669; -- Servant of Grol
UPDATE `creature_template` SET `MinMeleeDmg` = 114 WHERE `Entry` = 7670; -- Servant of Allistarj
UPDATE `creature_template` SET `MinMeleeDmg` = 124 WHERE `Entry` = 7671; -- Servant of Sevine
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 7725; -- Grimtotem Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 56 WHERE `Entry` = 7726; -- Grimtotem Naturalist
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 7727; -- Grimtotem Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 7734; -- Ilifar
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 7735; -- Felcular
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 7738; -- Burning Servant
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 7774; -- Shay Leafrunner
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 7787; -- Sandfury Slave
UPDATE `creature_template` SET `MinMeleeDmg` = 108 WHERE `Entry` = 7788; -- Sandfury Drudge
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7789; -- Sandfury Cretin
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7795; -- Hydromancer Velratha
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7796; -- Nekrum Gutchewer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 7797; -- Ruuzlu
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7800; -- Mekgineer Thermaplugg
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 7803; -- Scorpid Duneburrower
UPDATE `creature_template` SET `MinMeleeDmg` = 125 WHERE `Entry` = 7808; -- Marauding Owlbeast
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 7809; -- Vilebranch Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 7847; -- Caliph Scorpidsting
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 7848; -- Lurking Feral Scar
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 7855; -- Southsea Pirate
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 7856; -- Southsea Freebooter
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 7857; -- Southsea Dock Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 7858; -- Southsea Swashbuckler
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7872; -- Death\'s Head Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7873; -- Razorfen Battleguard
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 7874; -- Razorfen Thornweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 7883; -- Andre Firebeard
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 7885; -- Spitelash Battlemaster
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 7886; -- Spitelash Enchantress
UPDATE `creature_template` SET `MinMeleeDmg` = 185 WHERE `Entry` = 7895; -- Ambassador Bloodrage
UPDATE `creature_template` SET `MinMeleeDmg` = 14 WHERE `Entry` = 7903; -- Jewel
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 7915; -- Walking Bomb
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 7977; -- Gammerita
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 7995; -- Vile Priestess Hexx
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 7996; -- Qiaga the Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 8023; -- Sharpbeak
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8127; -- Antu\'sul
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 8136; -- Lord Shalzaru
UPDATE `creature_template` SET `MinMeleeDmg` = 243 WHERE `Entry` = 8156; -- Servant of Antu\'sul
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 8196; -- Occulus
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 8197; -- Chronalis
UPDATE `creature_template` SET `MinMeleeDmg` = 242 WHERE `Entry` = 8199; -- Warleader Krazzilak
UPDATE `creature_template` SET `MinMeleeDmg` = 235 WHERE `Entry` = 8200; -- Jin\'Zallah the Sandbringer
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 8202; -- Cyclok the Mad
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 8204; -- Soriid the Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 8205; -- Haarka the Ravenous
UPDATE `creature_template` SET `MinMeleeDmg` = 248 WHERE `Entry` = 8207; -- Greater Firebird
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 8210; -- Razortalon
UPDATE `creature_template` SET `MinMeleeDmg` = 220 WHERE `Entry` = 8211; -- Old Cliff Jumper
UPDATE `creature_template` SET `MinMeleeDmg` = 270 WHERE `Entry` = 8212; -- The Reak
UPDATE `creature_template` SET `MinMeleeDmg` = 295 WHERE `Entry` = 8213; -- Ironback
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 8215; -- Grimungous
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 8216; -- Retherokk the Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8217; -- Mith\'rethis the Enchanter
UPDATE `creature_template` SET `MinMeleeDmg` = 240 WHERE `Entry` = 8218; -- Witherheart the Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 248 WHERE `Entry` = 8219; -- Zul\'arek Hatefowler
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 8236; -- Muck Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 58 WHERE `Entry` = 8276; -- Soaring Razorbeak
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 8277; -- Rekk\'tilac
UPDATE `creature_template` SET `MinMeleeDmg` = 295 WHERE `Entry` = 8278; -- Smoldar
UPDATE `creature_template` SET `MinMeleeDmg` = 257 WHERE `Entry` = 8279; -- Faulty War Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 257 WHERE `Entry` = 8280; -- Shleipnarr
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8282; -- Highlord Mastrogonde
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 8283; -- Slave Master Blackheart
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 8296; -- Mojo the Twisted
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 8297; -- Magronos the Unyielding
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 8298; -- Akubar the Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 295 WHERE `Entry` = 8299; -- Spiteflayer
UPDATE `creature_template` SET `MinMeleeDmg` = 295 WHERE `Entry` = 8300; -- Ravage
UPDATE `creature_template` SET `MinMeleeDmg` = 303 WHERE `Entry` = 8301; -- Clack the Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 270 WHERE `Entry` = 8302; -- Deatheye
UPDATE `creature_template` SET `MinMeleeDmg` = 280 WHERE `Entry` = 8303; -- Grunter
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 8304; -- Dreadscorn
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 8311; -- Slime Maggot
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8317; -- Atal\'ai Deathwalker\'s Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 108 WHERE `Entry` = 8318; -- Atal\'ai Slave
UPDATE `creature_template` SET `MinMeleeDmg` = 124 WHERE `Entry` = 8319; -- Nightmare Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 8324; -- Atal\'ai Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 8336; -- Hakkari Sapper
UPDATE `creature_template` SET `MinMeleeDmg` = 125 WHERE `Entry` = 8337; -- Dark Iron Steelshifter
UPDATE `creature_template` SET `MinMeleeDmg` = 141 WHERE `Entry` = 8338; -- Dark Iron Marksman
UPDATE `creature_template` SET `MinMeleeDmg` = 243 WHERE `Entry` = 8384; -- Deep Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 8400; -- Obsidion
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8408; -- Warlord Krellian
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 8409; -- Caravan Master Tset
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8419; -- Twilight Idolater
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 8437; -- Hakkari Minion
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8438; -- Hakkari Bloodkeeper
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 8440; -- Shade of Hakkar
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8447; -- Clunk
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 8477; -- Skeletal Servant
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8497; -- Nightmare Suppressor
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 8503; -- Gibblewilt
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8504; -- Dark Iron Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 8518; -- Rynthariel the Keymaster
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8519; -- Blighted Surge
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 8520; -- Plague Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 8521; -- Blighted Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8522; -- Plague Monstrosity
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 8523; -- Scourge Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 8525; -- Scourge Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8527; -- Scourge Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 8529; -- Scourge Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8530; -- Cannibal Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 8531; -- Gibbering Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8532; -- Diseased Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 8534; -- Putrid Gargoyle
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 8535; -- Putrid Shrieker
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 8540; -- Torn Screamer
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 8541; -- Hate Shrieker
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 8542; -- Death Singer
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8543; -- Stitched Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8544; -- Gangled Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 8545; -- Stitched Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 6 WHERE `Entry` = 8554; -- Chief Sharptusk Thornmantle
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 8555; -- Crypt Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 8556; -- Crypt Walker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8558; -- Crypt Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8560; -- Mossflayer Scout
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8561; -- Mossflayer Shadowhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 8562; -- Mossflayer Cannibal
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 8566; -- Dark Iron Lookout
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 8567; -- Glutton
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 8578; -- Magus Rimtori
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 8580; -- Atal\'alarion
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8585; -- Frost Spectre
UPDATE `creature_template` SET `MinMeleeDmg` = 86 WHERE `Entry` = 8596; -- Plaguehound Runt
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 8597; -- Plaguehound
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 8598; -- Frenzied Plaguehound
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 8600; -- Plaguebat
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 8601; -- Noxious Plaguebat
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 8602; -- Monstrous Plaguebat
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8603; -- Carrion Grub
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 8605; -- Carrion Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 8606; -- Living Decay
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 8607; -- Rotting Sludge
UPDATE `creature_template` SET `MinMeleeDmg` = 130 WHERE `Entry` = 8608; -- Angered Infernal
UPDATE `creature_template` SET `MinMeleeDmg` = 141 WHERE `Entry` = 8616; -- Infernal Servant
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 8636; -- Morta\'gya the Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 73 WHERE `Entry` = 8637; -- Dark Iron Watchman
UPDATE `creature_template` SET `MinMeleeDmg` = 130 WHERE `Entry` = 8656; -- Hukku\'s Voidwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 130 WHERE `Entry` = 8657; -- Hukku\'s Succubus
UPDATE `creature_template` SET `MinMeleeDmg` = 130 WHERE `Entry` = 8658; -- Hukku\'s Imp
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 8660; -- The Evalcharr
UPDATE `creature_template` SET `MinMeleeDmg` = 70 WHERE `Entry` = 8667; -- Gusting Vortex
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 8668; -- Felhound Tracker
UPDATE `creature_template` SET `MinMeleeDmg` = 1659 WHERE `Entry` = 8680; -- Massive Infernal
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 8717; -- Felguard Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 8718; -- Manahound
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8757; -- Shahiar
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8758; -- Zaman
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 8759; -- Mosshoof Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 8760; -- Mosshoof Stag
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 8761; -- Mosshoof Courser
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 8762; -- Timberweb Recluse
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 8763; -- Mistwing Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 8764; -- Mistwing Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 8766; -- Forest Ooze
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 8776; -- Emerald Dragon Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 8837; -- Muck Splash
UPDATE `creature_template` SET `MinMeleeDmg` = 103 WHERE `Entry` = 8876; -- Sandfury Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 8886; -- Deviate Python
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 8889; -- Anvilrage Overseer
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 8890; -- Anvilrage Warden
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8891; -- Anvilrage Guardsman
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8892; -- Anvilrage Footman
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8893; -- Anvilrage Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8894; -- Anvilrage Medic
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8895; -- Anvilrage Officer
UPDATE `creature_template` SET `MinMeleeDmg` = 136 WHERE `Entry` = 8896; -- Shadowforge Peasant
UPDATE `creature_template` SET `MinMeleeDmg` = 151 WHERE `Entry` = 8897; -- Doomforge Craftsman
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 8898; -- Anvilrage Marshal
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8899; -- Doomforge Dragoon
UPDATE `creature_template` SET `MinMeleeDmg` = 117 WHERE `Entry` = 8900; -- Doomforge Arcanasmith
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 8901; -- Anvilrage Reservist
UPDATE `creature_template` SET `MinMeleeDmg` = 149 WHERE `Entry` = 8902; -- Shadowforge Citizen
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 8903; -- Anvilrage Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 8904; -- Shadowforge Senator
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8907; -- Wrath Hammer Construct
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8908; -- Molten War Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 8909; -- Fireguard
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 8910; -- Blazing Fireguard
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8912; -- Twilight\'s Hammer Torturer
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8913; -- Twilight Emissary
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8914; -- Twilight Bodyguard
UPDATE `creature_template` SET `MinMeleeDmg` = 153 WHERE `Entry` = 8915; -- Twilight\'s Hammer Ambassador
UPDATE `creature_template` SET `MinMeleeDmg` = 254 WHERE `Entry` = 8921; -- Bloodhound
UPDATE `creature_template` SET `MinMeleeDmg` = 271 WHERE `Entry` = 8922; -- Bloodhound Mastiff
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8923; -- Panzor the Invincible
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 8924; -- The Behemoth
UPDATE `creature_template` SET `MinMeleeDmg` = 138 WHERE `Entry` = 8925; -- Dredge Worm
UPDATE `creature_template` SET `MinMeleeDmg` = 128 WHERE `Entry` = 8926; -- Deep Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 128 WHERE `Entry` = 8927; -- Dark Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8929; -- Princess Moira Bronzebeard
UPDATE `creature_template` SET `MinMeleeDmg` = 128 WHERE `Entry` = 8932; -- Borer Beetle
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 8933; -- Cave Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 8956; -- Angerclaw Bear
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 8957; -- Angerclaw Grizzly
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 8958; -- Angerclaw Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 81 WHERE `Entry` = 8959; -- Felpaw Wolf
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 8960; -- Felpaw Scavenger
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 8961; -- Felpaw Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 8976; -- Hematos
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 8979; -- Gruklash
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 8980; -- Firegut Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 8983; -- Golem Lord Argelmach
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 9016; -- Bael\'Gar
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9017; -- Lord Incendius
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9018; -- High Interrogator Gerstahn
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 9019; -- Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 9020; -- Commander Gor\'shak
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 9022; -- Dughal Stormwing
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 9024; -- Pyromancer Loregrain
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 9025; -- Lord Roccor
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 9026; -- Overmaster Pyron
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9027; -- Gorosh the Dervish
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 9028; -- Grizzle
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9029; -- Eviscerator
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9030; -- Ok\'thor the Breaker
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9031; -- Anub\'shiah
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 9032; -- Hedrum the Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9033; -- General Angerforge
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9034; -- Hate\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9035; -- Anger\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9036; -- Vile\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9037; -- Gloom\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9038; -- Seeth\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9039; -- Doom\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9040; -- Dope\'rel
UPDATE `creature_template` SET `MinMeleeDmg` = 318 WHERE `Entry` = 9041; -- Warder Stilgiss
UPDATE `creature_template` SET `MinMeleeDmg` = 294 WHERE `Entry` = 9042; -- Verek
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9043; -- Scarshield Grunt
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9044; -- Scarshield Sentry
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9045; -- Scarshield Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9046; -- Scarshield Quartermaster
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9056; -- Fineous Darkvire
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 9083; -- Razal\'blade
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 9085; -- Initiate Amakkar
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9096; -- Rage Talon Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9097; -- Scarshield Legionnaire
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9098; -- Scarshield Spellbinder
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9156; -- Ambassador Flamelash
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 9162; -- Young Diemetradon
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 9163; -- Diemetradon
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9164; -- Elder Diemetradon
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 9165; -- Fledgling Pterrordax
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 9166; -- Pterrordax
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 9167; -- Frenzied Pterrordax
UPDATE `creature_template` SET `MinMeleeDmg` = 282 WHERE `Entry` = 9176; -- Gor\'tesh
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 9178; -- Burning Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 9196; -- Highlord Omokk
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9197; -- Spirestone Battle Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9198; -- Spirestone Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9199; -- Spirestone Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9200; -- Spirestone Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9201; -- Spirestone Ogre Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9216; -- Spirestone Warlord
UPDATE `creature_template` SET `MinMeleeDmg` = 318 WHERE `Entry` = 9217; -- Spirestone Lord Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9218; -- Spirestone Battle Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 318 WHERE `Entry` = 9219; -- Spirestone Butcher
UPDATE `creature_template` SET `MinMeleeDmg` = 491 WHERE `Entry` = 9236; -- Shadow Hunter Vosh\'gajin
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9237; -- War Master Voone
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9239; -- Smolderthorn Mystic
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9240; -- Smolderthorn Shadow Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9241; -- Smolderthorn Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9257; -- Scarshield Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9258; -- Scarshield Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9259; -- Firebrand Grunt
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 9260; -- Firebrand Legionnaire
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9261; -- Firebrand Darkweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9262; -- Firebrand Invoker
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 9263; -- Firebrand Dreadweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 9264; -- Firebrand Pyromancer
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9265; -- Smolderthorn Shadow Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9266; -- Smolderthorn Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9267; -- Smolderthorn Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9268; -- Smolderthorn Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9269; -- Smolderthorn Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 82 WHERE `Entry` = 9318; -- Incendosaur
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9319; -- Houndmaster Grebmar
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 9336; -- Boss Copperplug
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9376; -- Blazerunner
UPDATE `creature_template` SET `MinMeleeDmg` = 108 WHERE `Entry` = 9396; -- Ground Pounder
UPDATE `creature_template` SET `MinMeleeDmg` = 76 WHERE `Entry` = 9397; -- Living Storm
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9398; -- Twilight\'s Hammer Executioner
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 9416; -- Scarshield Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9437; -- Dark Keeper Vorfalk
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9438; -- Dark Keeper Bethek
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9439; -- Dark Keeper Uggel
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9441; -- Dark Keeper Zimrel
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9442; -- Dark Keeper Ofgut
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9443; -- Dark Keeper Pelver
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9445; -- Dark Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9447; -- Scarlet Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9448; -- Scarlet Praetorian
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9449; -- Scarlet Cleric
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9450; -- Scarlet Curate
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9451; -- Scarlet Archmage
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9452; -- Scarlet Enchanter
UPDATE `creature_template` SET `MinMeleeDmg` = 138 WHERE `Entry` = 9453; -- Aquementas
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9454; -- Xavathras
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 9456; -- Warlord Krom\'zar
UPDATE `creature_template` SET `MinMeleeDmg` = 385 WHERE `Entry` = 9460; -- Gadgetzan Bruiser
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 9461; -- Frenzied Black Drake
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 9462; -- Chieftain Bloodmaw
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 9464; -- Overlord Ror
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9476; -- Watchman Doomgrip
UPDATE `creature_template` SET `MinMeleeDmg` = 116 WHERE `Entry` = 9498; -- Gorishi Grub
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9499; -- Plugger Spazzring
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 9500; -- Mistress Nagmara
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9502; -- Phalanx
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 9516; -- Lord Banehollow
UPDATE `creature_template` SET `MinMeleeDmg` = 72 WHERE `Entry` = 9517; -- Shadow Lord Fel\'dan
UPDATE `creature_template` SET `MinMeleeDmg` = 90 WHERE `Entry` = 9518; -- Rakaiah
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9520; -- Grark Lorkrub
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 9522; -- Blackrock Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9541; -- Blackbreath Crony
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 9543; -- Ribbly Screwspigot
UPDATE `creature_template` SET `MinMeleeDmg` = 135 WHERE `Entry` = 9545; -- Grim Patron
UPDATE `creature_template` SET `MinMeleeDmg` = 115 WHERE `Entry` = 9547; -- Guzzling Patron
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 9556; -- Felhound Minion
UPDATE `creature_template` SET `MinMeleeDmg` = 742 WHERE `Entry` = 9568; -- Overlord Wyrmthalak
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9583; -- Bloodaxe Veteran
UPDATE `creature_template` SET `MinMeleeDmg` = 340 WHERE `Entry` = 9596; -- Bannok Grimaxe
UPDATE `creature_template` SET `MinMeleeDmg` = 141 WHERE `Entry` = 9598; -- Arei
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 9601; -- Treant Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 9602; -- Hahk\'Zor
UPDATE `creature_template` SET `MinMeleeDmg` = 311 WHERE `Entry` = 9604; -- Gorgon\'och
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 9605; -- Blackrock Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9622; -- U\'cha
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 9623; -- A-Me 01
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 9678; -- Shill Dinger
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 9690; -- Ember Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 9691; -- Venomtip Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9692; -- Bloodaxe Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9693; -- Bloodaxe Evoker
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 9694; -- Slavering Ember Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9695; -- Deathlash Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 273 WHERE `Entry` = 9696; -- Bloodaxe Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 116 WHERE `Entry` = 9697; -- Giant Ember Worg
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 9698; -- Firetail Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 9701; -- Spire Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 132 WHERE `Entry` = 9708; -- Burning Imp
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9716; -- Bloodaxe Warmonger
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9717; -- Bloodaxe Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 327 WHERE `Entry` = 9718; -- Ghok Bashguud
UPDATE `creature_template` SET `MinMeleeDmg` = 340 WHERE `Entry` = 9736; -- Quartermaster Zigris
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 9776; -- Flamekin Spitter
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 9777; -- Flamekin Sprite
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 9778; -- Flamekin Torcher
UPDATE `creature_template` SET `MinMeleeDmg` = 29 WHERE `Entry` = 9779; -- Flamekin Rager
UPDATE `creature_template` SET `MinMeleeDmg` = 635 WHERE `Entry` = 9816; -- Pyroguard Emberseer
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 9817; -- Blackhand Dreadweaver
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9818; -- Blackhand Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 9819; -- Blackhand Veteran
UPDATE `creature_template` SET `MinMeleeDmg` = 109 WHERE `Entry` = 9860; -- Salia
UPDATE `creature_template` SET `MinMeleeDmg` = 84 WHERE `Entry` = 9861; -- Moora
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9862; -- Jaedenar Legionnaire
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 9877; -- Prince Xavalis
UPDATE `creature_template` SET `MinMeleeDmg` = 87 WHERE `Entry` = 9878; -- Entropic Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 9916; -- Jarquia
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 9938; -- Magmus
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 9956; -- Shadowforge Flame Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 141 WHERE `Entry` = 10040; -- Gorishi Hive Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 10041; -- Gorishi Hive Queen
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 10042; -- Corrupted Saber
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 10043; -- Ribbly\'s Crony
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10076; -- High Priestess of Thaurissan
UPDATE `creature_template` SET `MinMeleeDmg` = 456 WHERE `Entry` = 10077; -- Deathmaw
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 10078; -- Terrorspark
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 10080; -- Sandarr Dunereaver
UPDATE `creature_template` SET `MinMeleeDmg` = 235 WHERE `Entry` = 10082; -- Zerillis
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10083; -- Rage Talon Flamescale
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 10096; -- High Justice Grimstone
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10119; -- Volchan
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 10120; -- Vault Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 10161; -- Rookery Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 154 WHERE `Entry` = 10177; -- Spire Scarab
UPDATE `creature_template` SET `MinMeleeDmg` = 1680 WHERE `Entry` = 10184; -- Onyxia
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10196; -- General Colbatann
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 10197; -- Mezzir the Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 347 WHERE `Entry` = 10200; -- Rak\'shiri
UPDATE `creature_template` SET `MinMeleeDmg` = 360 WHERE `Entry` = 10201; -- Lady Hederine
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 10202; -- Azurous
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10204; -- Misha
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10220; -- Halycon
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 10221; -- Bloodaxe Worg Pup
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10258; -- Rookery Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 232 WHERE `Entry` = 10261; -- Burning Felhound
UPDATE `creature_template` SET `MinMeleeDmg` = 318 WHERE `Entry` = 10263; -- Burning Felguard
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10264; -- Solakar Flamewreath
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10268; -- Gizrul the Slavener
UPDATE `creature_template` SET `MinMeleeDmg` = 300 WHERE `Entry` = 10299; -- Scarshield Infiltrator
UPDATE `creature_template` SET `MinMeleeDmg` = 209 WHERE `Entry` = 10316; -- Blackhand Incarcerator
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10317; -- Blackhand Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10318; -- Blackhand Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10319; -- Blackhand Iron Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10321; -- Emberstrife
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 10323; -- Murkdeep
UPDATE `creature_template` SET `MinMeleeDmg` = 549 WHERE `Entry` = 10339; -- Gyth
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 10356; -- Bayne
UPDATE `creature_template` SET `MinMeleeDmg` = 50 WHERE `Entry` = 10358; -- Fellicent\'s Shade
UPDATE `creature_template` SET `MinMeleeDmg` = 1101 WHERE `Entry` = 10363; -- General Drakkisath
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10366; -- Rage Talon Dragon Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10371; -- Rage Talon Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10372; -- Rage Talon Fire Tongue
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 10373; -- Xabraxxis
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10374; -- Spire Spider
UPDATE `creature_template` SET `MinMeleeDmg` = 108 WHERE `Entry` = 10375; -- Spire Spiderling
UPDATE `creature_template` SET `MinMeleeDmg` = 514 WHERE `Entry` = 10376; -- Crystal Fang
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10382; -- Mangled Cadaver
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10384; -- Spectral Citizen
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 10388; -- Spiteful Phantom
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 10389; -- Wrath Phantom
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 10390; -- Skeletal Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 171 WHERE `Entry` = 10391; -- Skeletal Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 327 WHERE `Entry` = 10393; -- Skul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10405; -- Plague Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10406; -- Ghoul Ravener
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10407; -- Fleshflayer Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10408; -- Rockwing Gargoyle
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10409; -- Rockwing Screecher
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10412; -- Crypt Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10413; -- Crypt Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10414; -- Patchwork Horror
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10416; -- Bile Spewer
UPDATE `creature_template` SET `MinMeleeDmg` = 384 WHERE `Entry` = 10417; -- Venom Belcher
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10418; -- Crimson Guardsman
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10419; -- Crimson Conjuror
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10420; -- Crimson Initiate
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10421; -- Crimson Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10422; -- Crimson Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10423; -- Crimson Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10424; -- Crimson Gallant
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10425; -- Crimson Battle Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10426; -- Crimson Inquisitor
UPDATE `creature_template` SET `MinMeleeDmg` = 2064 WHERE `Entry` = 10429; -- Warchief Rend Blackhand
UPDATE `creature_template` SET `MinMeleeDmg` = 1101 WHERE `Entry` = 10430; -- The Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10432; -- Vectus
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10433; -- Marduk Blackpool
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 10435; -- Magistrate Barthilas
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10436; -- Baroness Anastari
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10437; -- Nerub\'enkan
UPDATE `creature_template` SET `MinMeleeDmg` = 605 WHERE `Entry` = 10438; -- Maleki the Pallid
UPDATE `creature_template` SET `MinMeleeDmg` = 534 WHERE `Entry` = 10439; -- Ramstein the Gorger
UPDATE `creature_template` SET `MinMeleeDmg` = 273 WHERE `Entry` = 10442; -- Chromatic Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10447; -- Chromatic Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10463; -- Shrieking Banshee
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10464; -- Wailing Banshee
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 10469; -- Scholomance Adept
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10470; -- Scholomance Neophyte
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10471; -- Scholomance Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 10472; -- Scholomance Occultist
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 10475; -- Scholomance Student
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10476; -- Scholomance Necrolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10477; -- Scholomance Necromancer
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10478; -- Splintered Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 165 WHERE `Entry` = 10479; -- Skulking Corpse
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 10481; -- Reanimated Corpse
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 10485; -- Risen Aberration
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10486; -- Risen Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10487; -- Risen Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10488; -- Risen Construct
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10489; -- Risen Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10491; -- Risen Bonewarder
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10495; -- Diseased Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 10497; -- Ragged Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10498; -- Spectral Tutor
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10499; -- Spectral Researcher
UPDATE `creature_template` SET `MinMeleeDmg` = 380 WHERE `Entry` = 10500; -- Spectral Teacher
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10502; -- Lady Illucia Barov
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 10503; -- Jandice Barov
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10504; -- Lord Alexei Barov
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10505; -- Instructor Malicia
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10507; -- The Ravenian
UPDATE `creature_template` SET `MinMeleeDmg` = 606 WHERE `Entry` = 10508; -- Ras Frostwhisper
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 10516; -- The Unforgiven
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 10536; -- Plagued Maggot
UPDATE `creature_template` SET `MinMeleeDmg` = 318 WHERE `Entry` = 10558; -- Hearthsinger Forresten
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 10559; -- Lady Vespia
UPDATE `creature_template` SET `MinMeleeDmg` = 1673 WHERE `Entry` = 10579; -- Kirtonos the Herald (Spell Visual)
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 10580; -- Fetid Zombie
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 10581; -- Young Arikara
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10584; -- Urok Doomhowl
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10596; -- Mother Smolderweb
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 10601; -- Urok Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10602; -- Urok Ogre Magus
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 10605; -- Scarlet Medic
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10608; -- Scarlet Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 10617; -- Galak Messenger
UPDATE `creature_template` SET `MinMeleeDmg` = 221 WHERE `Entry` = 10619; -- Glacier
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 10639; -- Rorgish Jowl
UPDATE `creature_template` SET `MinMeleeDmg` = 123 WHERE `Entry` = 10640; -- Oakpaw
UPDATE `creature_template` SET `MinMeleeDmg` = 123 WHERE `Entry` = 10642; -- Eck\'alom
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 10643; -- Mugglefin
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 10644; -- Mist Howler
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 10647; -- Prince Raze
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 10648; -- Xavaric
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 10659; -- Cobalt Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 89 WHERE `Entry` = 10660; -- Cobalt Broodling
UPDATE `creature_template` SET `MinMeleeDmg` = 94 WHERE `Entry` = 10661; -- Spell Eater
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10662; -- Spellmaw
UPDATE `creature_template` SET `MinMeleeDmg` = 460 WHERE `Entry` = 10663; -- Manaclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 10683; -- Rookery Hatcher
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 10699; -- Carrion Scarab
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10737; -- Shy-Rotam
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10738; -- High Chief Winterfall
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10741; -- Sian-Rotam
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10742; -- Blackhand Dragon Handler
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 10756; -- Scalding Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 10757; -- Boiling Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 38 WHERE `Entry` = 10758; -- Grimtotem Bandit
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 10759; -- Grimtotem Stomper
UPDATE `creature_template` SET `MinMeleeDmg` = 46 WHERE `Entry` = 10761; -- Grimtotem Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 10762; -- Blackhand Thug
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 10801; -- Jabbering Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 10802; -- Hitah\'ya the Keeper
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 10806; -- Ursius
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 10807; -- Brumeran
UPDATE `creature_template` SET `MinMeleeDmg` = 327 WHERE `Entry` = 10808; -- Timmy the Cruel
UPDATE `creature_template` SET `MinMeleeDmg` = 490 WHERE `Entry` = 10809; -- Stonespine
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10811; -- Archivist Galford
UPDATE `creature_template` SET `MinMeleeDmg` = 576 WHERE `Entry` = 10812; -- Grand Crusader Dathrohan
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10813; -- Balnazzar
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10814; -- Chromatic Elite Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 10816; -- Wandering Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 320 WHERE `Entry` = 10817; -- Duggan Wildhammer
UPDATE `creature_template` SET `MinMeleeDmg` = 338 WHERE `Entry` = 10821; -- Hed\'mush the Rotting
UPDATE `creature_template` SET `MinMeleeDmg` = 347 WHERE `Entry` = 10822; -- Warlord Thresh\'jin
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 10823; -- Zul\'Brin Warpbranch
UPDATE `creature_template` SET `MinMeleeDmg` = 546 WHERE `Entry` = 10824; -- Ranger Lord Hawkspear
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 10825; -- Gish the Unmoving
UPDATE `creature_template` SET `MinMeleeDmg` = 338 WHERE `Entry` = 10826; -- Lord Darkscythe
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 10827; -- Deathspeaker Selendre
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 10828; -- High General Abbendis
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 10836; -- Farmer Dalson
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 10839; -- Argent Officer Garush
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 10840; -- Argent Officer Pureheart
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 10876; -- Undead Scarab
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 10899; -- Goraluk Anvilcrack
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 10901; -- Lorekeeper Polkelt
UPDATE `creature_template` SET `MinMeleeDmg` = 168 WHERE `Entry` = 10916; -- Winterfall Runner
UPDATE `creature_template` SET `MinMeleeDmg` = 91 WHERE `Entry` = 10919; -- Shatterspear Troll
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 10938; -- Redpath the Corrupted
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10946; -- Horgus the Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 10947; -- Darrowshire Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 10948; -- Darrowshire Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 10951; -- Marauding Corpse
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 10952; -- Marauding Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 10953; -- Servant of Horgus
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 10954; -- Bloodletter
UPDATE `creature_template` SET `MinMeleeDmg` = 60 WHERE `Entry` = 10979; -- Scarlet Hound
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 10992; -- Enraged Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 10997; -- Cannon Master Willey
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11022; -- Alexi Barov
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 11024; -- Della
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 11030; -- Mindless Undead
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11032; -- Malor the Zealous
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 11039; -- Duke Nicholas Zverenhoff
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11043; -- Crimson Monk
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 11054; -- Crimson Rifleman
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 11055; -- Shadow Priestess Vandis
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 11058; -- Fras Siabi
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 11064; -- Darrowshire Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 11075; -- Cauldron Lord Bilemaw
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 11076; -- Cauldron Lord Razarch
UPDATE `creature_template` SET `MinMeleeDmg` = 141 WHERE `Entry` = 11077; -- Cauldron Lord Malvinious
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 11078; -- Cauldron Lord Soulwrath
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11120; -- Crimson Hammersmith
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 11141; -- Spirit of Trey Lightforge
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11143; -- Postmaster Malown
UPDATE `creature_template` SET `MinMeleeDmg` = 91 WHERE `Entry` = 11196; -- Shatterspear Drummer
UPDATE `creature_template` SET `MinMeleeDmg` = 232 WHERE `Entry` = 11197; -- Mindless Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 11198; -- Broken Exile
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11257; -- Scholomance Handler
UPDATE `creature_template` SET `MinMeleeDmg` = 2 WHERE `Entry` = 11258; -- Frail Skeleton
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11261; -- Doctor Theolen Krastinov
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 11262; -- Onyxian Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 232 WHERE `Entry` = 11263; -- Spectral Projection
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 11284; -- Dark Shade
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 11285; -- Rory
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 11288; -- Spectral Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11289; -- Spectral Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 11290; -- Mossflayer Zombie
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 11296; -- Darrowshire Poltergeist
UPDATE `creature_template` SET `MinMeleeDmg` = 61 WHERE `Entry` = 11318; -- Ragefire Trogg
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 11320; -- Earthborer
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 11321; -- Molten Elemental
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 11322; -- Searing Blade Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 11323; -- Searing Blade Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 11324; -- Searing Blade Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 11338; -- Hakkari Shadowcaster
UPDATE `creature_template` SET `MinMeleeDmg` = 598 WHERE `Entry` = 11339; -- Hakkari Shadow Hunter
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 11340; -- Hakkari Blood Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 11346; -- Hakkari Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11347; -- Zealot Lor\'Khan
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11348; -- Zealot Zath
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11350; -- Gurubashi Axe Thrower
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11351; -- Gurubashi Headhunter
UPDATE `creature_template` SET `MinMeleeDmg` = 598 WHERE `Entry` = 11352; -- Gurubashi Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11353; -- Gurubashi Blood Drinker
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11355; -- Gurubashi Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 11356; -- Gurubashi Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 1294 WHERE `Entry` = 11359; -- Soulflayer
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 11360; -- Zulian Cub
UPDATE `creature_template` SET `MinMeleeDmg` = 424 WHERE `Entry` = 11361; -- Zulian Tiger
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11365; -- Zulian Panther
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 11368; -- Bloodseeker Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 681 WHERE `Entry` = 11370; -- Razzashi Broodwidow
UPDATE `creature_template` SET `MinMeleeDmg` = 424 WHERE `Entry` = 11371; -- Razzashi Serpent
UPDATE `creature_template` SET `MinMeleeDmg` = 446 WHERE `Entry` = 11372; -- Razzashi Adder
UPDATE `creature_template` SET `MinMeleeDmg` = 635 WHERE `Entry` = 11373; -- Razzashi Cobra
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11374; -- Hooktooth Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 1772 WHERE `Entry` = 11380; -- Jin\'do the Hexxer
UPDATE `creature_template` SET `MinMeleeDmg` = 2381 WHERE `Entry` = 11382; -- Bloodlord Mandokir
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11383; -- High Priestess Hai\'watna
UPDATE `creature_template` SET `MinMeleeDmg` = 380 WHERE `Entry` = 11387; -- Sandfury Speaker
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 11388; -- Witherbark Speaker
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11389; -- Bloodscalp Speaker
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11390; -- Skullsplitter Speaker
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 11391; -- Vilebranch Speaker
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 11437; -- Minor Infernal
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11440; -- Gordok Enforcer
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11441; -- Gordok Brute
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11442; -- Gordok Mauler
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11443; -- Gordok Ogre-Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11444; -- Gordok Mage-Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11445; -- Gordok Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11446; -- Gordok Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11447; -- Mushgog
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11448; -- Gordok Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11450; -- Gordok Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11451; -- Wildspawn Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11452; -- Wildspawn Rogue
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11453; -- Wildspawn Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11454; -- Wildspawn Betrayer
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11455; -- Wildspawn Felsworn
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11456; -- Wildspawn Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11457; -- Wildspawn Hellcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11458; -- Petrified Treant
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11459; -- Ironbark Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 20 WHERE `Entry` = 11460; -- Alzzin\'s Minion
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11461; -- Warpwood Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 11462; -- Warpwood Treant
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11464; -- Warpwood Tangler
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11465; -- Warpwood Stomper
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11467; -- Tsu\'zee
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11469; -- Eldreth Seether
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11470; -- Eldreth Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11471; -- Eldreth Apparition
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11472; -- Eldreth Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11473; -- Eldreth Spectre
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11475; -- Eldreth Phantasm
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11476; -- Skeletal Highborne
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 11477; -- Rotting Highborne
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11480; -- Arcane Aberration
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11483; -- Mana Remnant
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11487; -- Magister Kalendris
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11488; -- Illyanna Ravenoak
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11490; -- Zevrim Thornhoof
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11492; -- Alzzin the Wildshaper
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11496; -- Immol\'thar
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11497; -- The Razza
UPDATE `creature_template` SET `MinMeleeDmg` = 380 WHERE `Entry` = 11498; -- Skarr the Unbreakable
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11517; -- Oggleflint
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 11518; -- Jergosh the Invoker
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 11519; -- Bazzalan
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11551; -- Necrofiend
UPDATE `creature_template` SET `MinMeleeDmg` = 88 WHERE `Entry` = 11560; -- Magrami Spectre
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 11562; -- Drysnap Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 48 WHERE `Entry` = 11563; -- Drysnap Pincer
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11582; -- Scholomance Dark Summoner
UPDATE `creature_template` SET `MinMeleeDmg` = 3333 WHERE `Entry` = 11583; -- Nefarian
UPDATE `creature_template` SET `MinMeleeDmg` = 165 WHERE `Entry` = 11598; -- Risen Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 11611; -- Cavalier Durgen
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 11614; -- Bloodshot
UPDATE `creature_template` SET `MinMeleeDmg` = 41 WHERE `Entry` = 11620; -- Spectral Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11622; -- Rattlegore
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 11685; -- Maraudine Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 20 WHERE `Entry` = 11690; -- Gnarlpine Instigator
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11698; -- Hive\'Ashi Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 11713; -- Blackwood Tracker
UPDATE `creature_template` SET `MinMeleeDmg` = 40 WHERE `Entry` = 11714; -- Marosh the Devious
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11721; -- Hive\'Ashi Worker
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 11722; -- Hive\'Ashi Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11723; -- Hive\'Ashi Sandstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 11724; -- Hive\'Ashi Swarmer
UPDATE `creature_template` SET `MinMeleeDmg` = 372 WHERE `Entry` = 11725; -- Hive\'Zora Waywatcher
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 11726; -- Hive\'Zora Tunneler
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11727; -- Hive\'Zora Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11728; -- Hive\'Zora Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11729; -- Hive\'Zora Hive Sister
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11730; -- Hive\'Regal Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11731; -- Hive\'Regal Burrower
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11732; -- Hive\'Regal Spitfire
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 11733; -- Hive\'Regal Slavemaker
UPDATE `creature_template` SET `MinMeleeDmg` = 380 WHERE `Entry` = 11734; -- Hive\'Regal Hive Lord
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 11735; -- Stonelash Scorpid
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 11736; -- Stonelash Pincer
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11737; -- Stonelash Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 11738; -- Sand Skitterer
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 11739; -- Rock Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 11740; -- Dredge Striker
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11741; -- Dredge Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 11744; -- Dust Stormer
UPDATE `creature_template` SET `MinMeleeDmg` = 100 WHERE `Entry` = 11745; -- Cyclone Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 11746; -- Desert Rumbler
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11747; -- Desert Rager
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 11777; -- Shadowshard Rumbler
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 11778; -- Shadowshard Smasher
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 11781; -- Ambershard Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 11782; -- Ambershard Destroyer
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 11783; -- Theradrim Shardling
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 11784; -- Theradrim Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 132 WHERE `Entry` = 11785; -- Ambereye Basilisk
UPDATE `creature_template` SET `MinMeleeDmg` = 154 WHERE `Entry` = 11786; -- Ambereye Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 11787; -- Rock Borer
UPDATE `creature_template` SET `MinMeleeDmg` = 221 WHERE `Entry` = 11788; -- Rock Worm
UPDATE `creature_template` SET `MinMeleeDmg` = 79 WHERE `Entry` = 11789; -- Deep Borer
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 11790; -- Putridus Satyr
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 11791; -- Putridus Trickster
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 11792; -- Putridus Shadowstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 11793; -- Celebrian Dryad
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 11794; -- Sister of Celebrian
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 11803; -- Twilight Keeper Exeter
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 11804; -- Twilight Keeper Havunth
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 11830; -- Hakkari Priest
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 11831; -- Hakkari Witch Doctor
UPDATE `creature_template` SET `MinMeleeDmg` = 27 WHERE `Entry` = 11858; -- Grundig Darkcloud
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 11873; -- Spectral Attendant
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 11880; -- Twilight Avenger
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 11881; -- Twilight Geolord
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 11882; -- Twilight Stonecaller
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 11883; -- Twilight Master
UPDATE `creature_template` SET `MinMeleeDmg` = 150 WHERE `Entry` = 11886; -- Mercutio Filthgorger
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 11887; -- Crypt Robber
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 11896; -- Borelgore
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 11897; -- Duskwing
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 11910; -- Grimtotem Ruffian
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 11911; -- Grimtotem Mercenary
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 11913; -- Grimtotem Sorcerer
UPDATE `creature_template` SET `MinMeleeDmg` = 74 WHERE `Entry` = 11920; -- Goggeroc
UPDATE `creature_template` SET `MinMeleeDmg` = 127 WHERE `Entry` = 11956; -- Great Bear Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 127 WHERE `Entry` = 11957; -- Great Cat Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 11981; -- Flamegor
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 11983; -- Firemaw
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 12017; -- Broodlord Lashlayer
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 12037; -- Ursol\'lok
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 12046; -- Gor\'marok the Ravager
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 12116; -- Priestess of Elune
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 12121; -- Drakan
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 12122; -- Duros
UPDATE `creature_template` SET `MinMeleeDmg` = 577 WHERE `Entry` = 12128; -- Crimson Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 380 WHERE `Entry` = 12129; -- Onyxian Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 12138; -- Lunaclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 600 WHERE `Entry` = 12140; -- Guardian of Elune
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 12199; -- Shade of Ambermoon
UPDATE `creature_template` SET `MinMeleeDmg` = 344 WHERE `Entry` = 12201; -- Princess Theradras
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 12203; -- Landslide
UPDATE `creature_template` SET `MinMeleeDmg` = 116 WHERE `Entry` = 12204; -- Spitelash Raider
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 12205; -- Spitelash Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12206; -- Primordial Behemoth
UPDATE `creature_template` SET `MinMeleeDmg` = 243 WHERE `Entry` = 12207; -- Thessala Hydra
UPDATE `creature_template` SET `MinMeleeDmg` = 154 WHERE `Entry` = 12208; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 12216; -- Poison Sprite
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 12217; -- Corruptor
UPDATE `creature_template` SET `MinMeleeDmg` = 63 WHERE `Entry` = 12218; -- Vile Larva
UPDATE `creature_template` SET `MinMeleeDmg` = 229 WHERE `Entry` = 12219; -- Barbed Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 12220; -- Constrictor Vine
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12221; -- Noxious Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12222; -- Creeping Sludge
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12223; -- Cavern Lurker
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12224; -- Cavern Shambler
UPDATE `creature_template` SET `MinMeleeDmg` = 284 WHERE `Entry` = 12225; -- Celebras the Cursed
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 12236; -- Lord Vyletongue
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 12237; -- Meshlok the Harvester
UPDATE `creature_template` SET `MinMeleeDmg` = 208 WHERE `Entry` = 12239; -- Spirit of Gelk
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 12240; -- Spirit of Kolk
UPDATE `creature_template` SET `MinMeleeDmg` = 215 WHERE `Entry` = 12241; -- Spirit of Magra
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 12242; -- Spirit of Maraudos
UPDATE `creature_template` SET `MinMeleeDmg` = 243 WHERE `Entry` = 12243; -- Spirit of Veng
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 12248; -- Infiltrator Hameya
UPDATE `creature_template` SET `MinMeleeDmg` = 95 WHERE `Entry` = 12250; -- Zaeldarr the Outcast
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 12258; -- Razorlash
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 12262; -- Ziggurat Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 12263; -- Slaughterhouse Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 35 WHERE `Entry` = 12319; -- Burning Blade Toxicologist
UPDATE `creature_template` SET `MinMeleeDmg` = 30 WHERE `Entry` = 12320; -- Burning Blade Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 32 WHERE `Entry` = 12321; -- Stormscale Toxicologist
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 12337; -- Crimson Courier
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 12339; -- Demetria
UPDATE `creature_template` SET `MinMeleeDmg` = 44 WHERE `Entry` = 12347; -- Enraged Reef Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 154 WHERE `Entry` = 12352; -- Scarlet Trooper
UPDATE `creature_template` SET `MinMeleeDmg` = 85 WHERE `Entry` = 12369; -- Lord Kragaru
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 12377; -- Wailing Spectre
UPDATE `creature_template` SET `MinMeleeDmg` = 91 WHERE `Entry` = 12387; -- Large Vile Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 12396; -- Doomguard Commander
UPDATE `creature_template` SET `MinMeleeDmg` = 1914 WHERE `Entry` = 12397; -- Lord Kazzak
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 12416; -- Blackwing Legionnaire
UPDATE `creature_template` SET `MinMeleeDmg` = 177 WHERE `Entry` = 12418; -- Gordok Hyena
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 12420; -- Blackwing Mage
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 12422; -- Death Talon Dragonspawn
UPDATE `creature_template` SET `MinMeleeDmg` = 19 WHERE `Entry` = 12431; -- Gorefang
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 12435; -- Razorgore the Untamed
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12457; -- Blackwing Spellbinder
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 12458; -- Blackwing Taskmaster
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12459; -- Blackwing Warlock
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12460; -- Death Talon Wyrmguard
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12461; -- Death Talon Overseer
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12463; -- Death Talon Flamescale
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12464; -- Death Talon Seether
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12465; -- Death Talon Wyrmkin
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 12467; -- Death Talon Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 12468; -- Death Talon Hatcher
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 12474; -- Emeraldon Boughguard
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 12475; -- Emeraldon Tree Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 12476; -- Emeraldon Oracle
UPDATE `creature_template` SET `MinMeleeDmg` = 585 WHERE `Entry` = 12496; -- Dreamtracker
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 12497; -- Dreamroarer
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 12498; -- Dreamstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 12557; -- Grethok the Controller
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 12579; -- Bloodfury Ripper
UPDATE `creature_template` SET `MinMeleeDmg` = 49 WHERE `Entry` = 12678; -- Ursangous
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 12739; -- Onyxia\'s Elite Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 576 WHERE `Entry` = 12800; -- Chimaerok
UPDATE `creature_template` SET `MinMeleeDmg` = 605 WHERE `Entry` = 12801; -- Arcane Chimaerok
UPDATE `creature_template` SET `MinMeleeDmg` = 576 WHERE `Entry` = 12802; -- Chimaerok Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 12803; -- Lord Lakmaeran
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 12836; -- Wandering Protector
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 12860; -- Duriel Moonfire
UPDATE `creature_template` SET `MinMeleeDmg` = 193 WHERE `Entry` = 12865; -- Ambassador Malcin
UPDATE `creature_template` SET `MinMeleeDmg` = 134 WHERE `Entry` = 12876; -- Baron Aquanis
UPDATE `creature_template` SET `MinMeleeDmg` = 399 WHERE `Entry` = 12899; -- Axtroz
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 12902; -- Lorgus Jett
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 12918; -- Chief Murgut
UPDATE `creature_template` SET `MinMeleeDmg` = 52 WHERE `Entry` = 12940; -- Vorsha the Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 34 WHERE `Entry` = 13019; -- Burning Blade Seer
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 13020; -- Vaelastrasz the Corrupt
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 13021; -- Warpwood Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 70 WHERE `Entry` = 13022; -- Whip Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 294 WHERE `Entry` = 13036; -- Gordok Mastiff
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 13118; -- Crimson Bodyguard
UPDATE `creature_template` SET `MinMeleeDmg` = 161 WHERE `Entry` = 13136; -- Hive\'Ashi Drone
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13141; -- Deeprot Stomper
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13142; -- Deeprot Tangler
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 13157; -- Makasgar
UPDATE `creature_template` SET `MinMeleeDmg` = 17 WHERE `Entry` = 13158; -- Lieutenant Sanders
UPDATE `creature_template` SET `MinMeleeDmg` = 93 WHERE `Entry` = 13160; -- Carrion Swarmer
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 13196; -- Phase Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 13197; -- Fel Lash
UPDATE `creature_template` SET `MinMeleeDmg` = 98 WHERE `Entry` = 13276; -- Wildspawn Imp
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 13280; -- Hydrospawn
UPDATE `creature_template` SET `MinMeleeDmg` = 276 WHERE `Entry` = 13282; -- Noxxion
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 13285; -- Death Lash
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 13301; -- Hive\'Ashi Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 13323; -- Subterranean Diemetradon
UPDATE `creature_template` SET `MinMeleeDmg` = 128 WHERE `Entry` = 13456; -- Noxxion\'s Spawn
UPDATE `creature_template` SET `MinMeleeDmg` = 213 WHERE `Entry` = 13533; -- Spewed Larva
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 13596; -- Rotgrip
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 13599; -- Stolid Snapjaw
UPDATE `creature_template` SET `MinMeleeDmg` = 292 WHERE `Entry` = 13601; -- Tinkerer Gizlock
UPDATE `creature_template` SET `MinMeleeDmg` = 164 WHERE `Entry` = 13602; -- The Abominable Greench
UPDATE `creature_template` SET `MinMeleeDmg` = 251 WHERE `Entry` = 13696; -- Noxxious Scion
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13718; -- The Nameless Prophet
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 13736; -- Noxxious Essence
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13738; -- Veng
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 13739; -- Maraudos
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13740; -- Magra
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 13741; -- Gelk
UPDATE `creature_template` SET `MinMeleeDmg` = 64 WHERE `Entry` = 13743; -- Corrupt Force of Nature
UPDATE `creature_template` SET `MinMeleeDmg` = 57 WHERE `Entry` = 13836; -- Burning Blade Nightmare
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 13896; -- Scalebeard
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 13996; -- Blackwing Technician
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 14020; -- Chromaggus
UPDATE `creature_template` SET `MinMeleeDmg` = 319 WHERE `Entry` = 14023; -- Corrupted Green Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 319 WHERE `Entry` = 14024; -- Corrupted Blue Whelp
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14101; -- Enraged Felguard
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 14123; -- Steeljaw Snapper
UPDATE `creature_template` SET `MinMeleeDmg` = 178 WHERE `Entry` = 14221; -- Gravis Slipknot
UPDATE `creature_template` SET `MinMeleeDmg` = 153 WHERE `Entry` = 14223; -- Cranky Benj
UPDATE `creature_template` SET `MinMeleeDmg` = 220 WHERE `Entry` = 14224; -- 7:XT
UPDATE `creature_template` SET `MinMeleeDmg` = 157 WHERE `Entry` = 14225; -- Prince Kellen
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 14227; -- Hissperak
UPDATE `creature_template` SET `MinMeleeDmg` = 191 WHERE `Entry` = 14230; -- Burgle Eye
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 14231; -- Drogoth the Roamer
UPDATE `creature_template` SET `MinMeleeDmg` = 191 WHERE `Entry` = 14232; -- Dart
UPDATE `creature_template` SET `MinMeleeDmg` = 197 WHERE `Entry` = 14233; -- Ripscale
UPDATE `creature_template` SET `MinMeleeDmg` = 225 WHERE `Entry` = 14235; -- The Rot
UPDATE `creature_template` SET `MinMeleeDmg` = 257 WHERE `Entry` = 14236; -- Lord Angler
UPDATE `creature_template` SET `MinMeleeDmg` = 220 WHERE `Entry` = 14237; -- Oozeworm
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14241; -- Ironbark the Redeemed
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14261; -- Blue Drakonid
UPDATE `creature_template` SET `MinMeleeDmg` = 239 WHERE `Entry` = 14262; -- Green Drakonid
UPDATE `creature_template` SET `MinMeleeDmg` = 239 WHERE `Entry` = 14264; -- Red Drakonid
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14265; -- Black Drakonid
UPDATE `creature_template` SET `MinMeleeDmg` = 112 WHERE `Entry` = 14267; -- Emogg the Crusher
UPDATE `creature_template` SET `MinMeleeDmg` = 24 WHERE `Entry` = 14268; -- Lord Condar
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 14269; -- Seeker Aqualon
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 14270; -- Squiddic
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 14271; -- Ribchaser
UPDATE `creature_template` SET `MinMeleeDmg` = 97 WHERE `Entry` = 14272; -- Snarlflare
UPDATE `creature_template` SET `MinMeleeDmg` = 111 WHERE `Entry` = 14273; -- Boulderheart
UPDATE `creature_template` SET `MinMeleeDmg` = 140 WHERE `Entry` = 14276; -- Scargil
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 14277; -- Lady Zephris
UPDATE `creature_template` SET `MinMeleeDmg` = 127 WHERE `Entry` = 14278; -- Ro\'Bark
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 14279; -- Creepthess
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 14280; -- Big Samras
UPDATE `creature_template` SET `MinMeleeDmg` = 106 WHERE `Entry` = 14281; -- Jimmy the Bleeder
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14302; -- Chromatic Drakonid
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 14303; -- Petrified Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 14308; -- Ferra
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14321; -- Guard Fengus
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14322; -- Stomper Kreeg
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14323; -- Guard Slip\'kik
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 14324; -- Cho\'Rush the Observer
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 14325; -- Captain Kromcrush
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14326; -- Guard Mol\'dar
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14327; -- Lethtendris
UPDATE `creature_template` SET `MinMeleeDmg` = 270 WHERE `Entry` = 14339; -- Death Howl
UPDATE `creature_template` SET `MinMeleeDmg` = 329 WHERE `Entry` = 14340; -- Alshirr Banebreath
UPDATE `creature_template` SET `MinMeleeDmg` = 295 WHERE `Entry` = 14342; -- Ragepaw
UPDATE `creature_template` SET `MinMeleeDmg` = 263 WHERE `Entry` = 14344; -- Mongress
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14349; -- Pimgib
UPDATE `creature_template` SET `MinMeleeDmg` = 21 WHERE `Entry` = 14350; -- Hydroling
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14351; -- Gordok Bushwacker
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 14353; -- Mizzle the Crafty
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 14354; -- Pusillin
UPDATE `creature_template` SET `MinMeleeDmg` = 25 WHERE `Entry` = 14356; -- Sawfin Frenzy
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 14372; -- Winterfall Ambusher
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 14388; -- Rogue Black Drake
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 14397; -- Mana Burst
UPDATE `creature_template` SET `MinMeleeDmg` = 361 WHERE `Entry` = 14398; -- Eldreth Darter
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 14399; -- Arcane Torrent
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 14400; -- Arcane Feedback
UPDATE `creature_template` SET `MinMeleeDmg` = 559 WHERE `Entry` = 14401; -- Master Elemental Shaper Krixix
UPDATE `creature_template` SET `MinMeleeDmg` = 42 WHERE `Entry` = 14424; -- Mirelow
UPDATE `creature_template` SET `MinMeleeDmg` = 39 WHERE `Entry` = 14425; -- Gnawbone
UPDATE `creature_template` SET `MinMeleeDmg` = 45 WHERE `Entry` = 14426; -- Harb Foulmountain
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 14428; -- Uruson
UPDATE `creature_template` SET `MinMeleeDmg` = 77 WHERE `Entry` = 14429; -- Grimmaw
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 14430; -- Duskstalker
UPDATE `creature_template` SET `MinMeleeDmg` = 43 WHERE `Entry` = 14433; -- Sludginn
UPDATE `creature_template` SET `MinMeleeDmg` = 269 WHERE `Entry` = 14445; -- Lord Captain Wyrmak
UPDATE `creature_template` SET `MinMeleeDmg` = 240 WHERE `Entry` = 14446; -- Fingat
UPDATE `creature_template` SET `MinMeleeDmg` = 225 WHERE `Entry` = 14447; -- Gilmorian
UPDATE `creature_template` SET `MinMeleeDmg` = 225 WHERE `Entry` = 14448; -- Molt Thorn
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 14456; -- Blackwing Guardsman
UPDATE `creature_template` SET `MinMeleeDmg` = 588 WHERE `Entry` = 14471; -- Setis
UPDATE `creature_template` SET `MinMeleeDmg` = 338 WHERE `Entry` = 14472; -- Gretheer
UPDATE `creature_template` SET `MinMeleeDmg` = 605 WHERE `Entry` = 14473; -- Lapress
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 14474; -- Zora
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14475; -- Rex Ashil
UPDATE `creature_template` SET `MinMeleeDmg` = 347 WHERE `Entry` = 14477; -- Grubthor
UPDATE `creature_template` SET `MinMeleeDmg` = 355 WHERE `Entry` = 14478; -- Huricanian
UPDATE `creature_template` SET `MinMeleeDmg` = 546 WHERE `Entry` = 14479; -- Twilight Lord Everun
UPDATE `creature_template` SET `MinMeleeDmg` = 62 WHERE `Entry` = 14482; -- Xorothian Imp
UPDATE `creature_template` SET `MinMeleeDmg` = 65 WHERE `Entry` = 14486; -- Scourge Footsoldier
UPDATE `creature_template` SET `MinMeleeDmg` = 184 WHERE `Entry` = 14487; -- Gluggle
UPDATE `creature_template` SET `MinMeleeDmg` = 191 WHERE `Entry` = 14488; -- Roloch
UPDATE `creature_template` SET `MinMeleeDmg` = 351 WHERE `Entry` = 14489; -- Scourge Archer
UPDATE `creature_template` SET `MinMeleeDmg` = 235 WHERE `Entry` = 14490; -- Rippa
UPDATE `creature_template` SET `MinMeleeDmg` = 220 WHERE `Entry` = 14492; -- Verifonix
UPDATE `creature_template` SET `MinMeleeDmg` = 576 WHERE `Entry` = 14502; -- Xorothian Dreadsteed
UPDATE `creature_template` SET `MinMeleeDmg` = 252 WHERE `Entry` = 14503; -- The Cleaner
UPDATE `creature_template` SET `MinMeleeDmg` = 598 WHERE `Entry` = 14506; -- Lord Hel\'nurath
UPDATE `creature_template` SET `MinMeleeDmg` = 1835 WHERE `Entry` = 14507; -- High Priest Venoxis
UPDATE `creature_template` SET `MinMeleeDmg` = 2298 WHERE `Entry` = 14509; -- High Priest Thekal
UPDATE `creature_template` SET `MinMeleeDmg` = 1835 WHERE `Entry` = 14510; -- High Priestess Mar\'li
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 14511; -- Shadowed Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 14512; -- Corrupted Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 14513; -- Malicious Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 14514; -- Banal Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 2001 WHERE `Entry` = 14515; -- High Priestess Arlokk
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14516; -- Death Knight Darkreaver
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14518; -- Aspect of Banality
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14519; -- Aspect of Corruption
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14520; -- Aspect of Malice
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14521; -- Aspect of Shadow
UPDATE `creature_template` SET `MinMeleeDmg` = 92 WHERE `Entry` = 14523; -- Ulathek
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 14530; -- Solenor the Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 14531; -- Artorius the Amiable
UPDATE `creature_template` SET `MinMeleeDmg` = 354 WHERE `Entry` = 14532; -- Razzashi Venombrood
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 14533; -- Simone the Seductress
UPDATE `creature_template` SET `MinMeleeDmg` = 517 WHERE `Entry` = 14535; -- Artorius the Doombringer
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 14538; -- Precious the Devourer
UPDATE `creature_template` SET `MinMeleeDmg` = 206 WHERE `Entry` = 14564; -- Terrordale Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 181 WHERE `Entry` = 14601; -- Ebonroc
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 14605; -- Bone Construct
UPDATE `creature_template` SET `MinMeleeDmg` = 259 WHERE `Entry` = 14621; -- Overseer Maltorius
UPDATE `creature_template` SET `MinMeleeDmg` = 31 WHERE `Entry` = 14682; -- Sever
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 14684; -- Balzaphon
UPDATE `creature_template` SET `MinMeleeDmg` = 51 WHERE `Entry` = 14686; -- Lady Falther\'ess
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 14690; -- Revanchion
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 14695; -- Lord Blackwood
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 14715; -- Silverwing Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 120 WHERE `Entry` = 14748; -- Vilebranch Kidnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14750; -- Gurubashi Bat Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 310 WHERE `Entry` = 14781; -- Captain Shatterskull
UPDATE `creature_template` SET `MinMeleeDmg` = 568 WHERE `Entry` = 14821; -- Razzashi Raptor
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 14825; -- Withered Mistress
UPDATE `creature_template` SET `MinMeleeDmg` = 5238 WHERE `Entry` = 14834; -- Hakkar
UPDATE `creature_template` SET `MinMeleeDmg` = 389 WHERE `Entry` = 14861; -- Blood Steward of Kirtonos
UPDATE `creature_template` SET `MinMeleeDmg` = 1650 WHERE `Entry` = 14862; -- Emissary Roman\'khan
UPDATE `creature_template` SET `MinMeleeDmg` = 197 WHERE `Entry` = 14880; -- Razzashi Skitterer
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14882; -- Atal\'ai Mistress
UPDATE `creature_template` SET `MinMeleeDmg` = 571 WHERE `Entry` = 14883; -- Voodoo Slave
UPDATE `creature_template` SET `MinMeleeDmg` = 3391 WHERE `Entry` = 14888; -- Lethon
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 14986; -- Shade of Jin\'do
UPDATE `creature_template` SET `MinMeleeDmg` = 2030 WHERE `Entry` = 14988; -- Ohgan
UPDATE `creature_template` SET `MinMeleeDmg` = 7 WHERE `Entry` = 15009; -- Voodoo Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 221 WHERE `Entry` = 15041; -- Spawn of Mar\'li
UPDATE `creature_template` SET `MinMeleeDmg` = 424 WHERE `Entry` = 15043; -- Zulian Crocolisk
UPDATE `creature_template` SET `MinMeleeDmg` = 239 WHERE `Entry` = 15067; -- Zulian Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 339 WHERE `Entry` = 15068; -- Zulian Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 15080; -- Servant of the Hand
UPDATE `creature_template` SET `MinMeleeDmg` = 1649 WHERE `Entry` = 15082; -- Gri\'lek
UPDATE `creature_template` SET `MinMeleeDmg` = 1529 WHERE `Entry` = 15083; -- Hazza\'rah
UPDATE `creature_template` SET `MinMeleeDmg` = 1276 WHERE `Entry` = 15084; -- Renataki
UPDATE `creature_template` SET `MinMeleeDmg` = 2345 WHERE `Entry` = 15085; -- Wushoolay
UPDATE `creature_template` SET `MinMeleeDmg` = 252 WHERE `Entry` = 15088; -- Booty Bay Elite
UPDATE `creature_template` SET `MinMeleeDmg` = 221 WHERE `Entry` = 15101; -- Zulian Prowler
UPDATE `creature_template` SET `MinMeleeDmg` = 1623 WHERE `Entry` = 15114; -- Gahz\'ranka
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 15117; -- Chained Spirit
UPDATE `creature_template` SET `MinMeleeDmg` = 528 WHERE `Entry` = 15146; -- Mad Voidwalker
UPDATE `creature_template` SET `MinMeleeDmg` = 485 WHERE `Entry` = 15162; -- Scarlet Inquisitor
UPDATE `creature_template` SET `MinMeleeDmg` = 236 WHERE `Entry` = 15163; -- Nightmare Illusion
UPDATE `creature_template` SET `MinMeleeDmg` = 109 WHERE `Entry` = 15172; -- Glibb
UPDATE `creature_template` SET `MinMeleeDmg` = 316 WHERE `Entry` = 15196; -- Deathclasp
UPDATE `creature_template` SET `MinMeleeDmg` = 75 WHERE `Entry` = 15200; -- Twilight Keeper Mayna
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 15201; -- Twilight Flamereaver
UPDATE `creature_template` SET `MinMeleeDmg` = 102 WHERE `Entry` = 15202; -- Vyral the Vile
UPDATE `creature_template` SET `MinMeleeDmg` = 1549 WHERE `Entry` = 15203; -- Prince Skaldrenox
UPDATE `creature_template` SET `MinMeleeDmg` = 1429 WHERE `Entry` = 15204; -- High Marshal Whirlaxis
UPDATE `creature_template` SET `MinMeleeDmg` = 1889 WHERE `Entry` = 15205; -- Baron Kazum
UPDATE `creature_template` SET `MinMeleeDmg` = 281 WHERE `Entry` = 15207; -- The Duke of Fathoms
UPDATE `creature_template` SET `MinMeleeDmg` = 281 WHERE `Entry` = 15208; -- The Duke of Shards
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 15213; -- Twilight Overlord
UPDATE `creature_template` SET `MinMeleeDmg` = 281 WHERE `Entry` = 15220; -- The Duke of Zephyrs
UPDATE `creature_template` SET `MinMeleeDmg` = 349 WHERE `Entry` = 15229; -- Vekniss Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15230; -- Vekniss Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15233; -- Vekniss Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15235; -- Vekniss Stinger
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15236; -- Vekniss Wasp
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15240; -- Vekniss Hive Crawler
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15246; -- Qiraji Mindslayer
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15247; -- Qiraji Brainwasher
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15249; -- Qiraji Lasher
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15250; -- Qiraji Slayer
UPDATE `creature_template` SET `MinMeleeDmg` = 445 WHERE `Entry` = 15252; -- Qiraji Champion
UPDATE `creature_template` SET `MinMeleeDmg` = 2085 WHERE `Entry` = 15263; -- The Prophet Skeram
UPDATE `creature_template` SET `MinMeleeDmg` = 801 WHERE `Entry` = 15264; -- Anubisath Sentinel
UPDATE `creature_template` SET `MinMeleeDmg` = 3360 WHERE `Entry` = 15275; -- Emperor Vek\'nilash
UPDATE `creature_template` SET `MinMeleeDmg` = 3127 WHERE `Entry` = 15276; -- Emperor Vek\'lor
UPDATE `creature_template` SET `MinMeleeDmg` = 360 WHERE `Entry` = 15277; -- Anubisath Defender
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 15286; -- Xil\'xix
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 15288; -- Aluntir
UPDATE `creature_template` SET `MinMeleeDmg` = 544 WHERE `Entry` = 15290; -- Arakis
UPDATE `creature_template` SET `MinMeleeDmg` = 99 WHERE `Entry` = 15293; -- Aendel Windspear
UPDATE `creature_template` SET `MinMeleeDmg` = 2385 WHERE `Entry` = 15299; -- Viscidus
UPDATE `creature_template` SET `MinMeleeDmg` = 213 WHERE `Entry` = 15300; -- Vekniss Drone
UPDATE `creature_template` SET `MinMeleeDmg` = 1889 WHERE `Entry` = 15305; -- Lord Skwol
UPDATE `creature_template` SET `MinMeleeDmg` = 239 WHERE `Entry` = 15308; -- Twilight Prophet
UPDATE `creature_template` SET `MinMeleeDmg` = 395 WHERE `Entry` = 15311; -- Anubisath Warder
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 15316; -- Qiraji Scarab
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 15317; -- Qiraji Scorpion
UPDATE `creature_template` SET `MinMeleeDmg` = 3127 WHERE `Entry` = 15380; -- Arygos
UPDATE `creature_template` SET `MinMeleeDmg` = 340 WHERE `Entry` = 15424; -- Anubisath Conqueror
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 15449; -- Hive\'Zora Abomination
UPDATE `creature_template` SET `MinMeleeDmg` = 1535 WHERE `Entry` = 15491; -- Eranikus WHERE `Entry` = Tyrant of the Dream
UPDATE `creature_template` SET `MinMeleeDmg` = 2801 WHERE `Entry` = 15509; -- Princess Huhuran
UPDATE `creature_template` SET `MinMeleeDmg` = 2241 WHERE `Entry` = 15510; -- Fankriss the Unyielding
UPDATE `creature_template` SET `MinMeleeDmg` = 3500 WHERE `Entry` = 15511; -- Lord Kri
UPDATE `creature_template` SET `MinMeleeDmg` = 2017 WHERE `Entry` = 15516; -- Battleguard Sartura
UPDATE `creature_template` SET `MinMeleeDmg` = 5293 WHERE `Entry` = 15517; -- Ouro
UPDATE `creature_template` SET `MinMeleeDmg` = 1469 WHERE `Entry` = 15527; -- Mana Fiend
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 15535; -- Chief Sharpclaw
UPDATE `creature_template` SET `MinMeleeDmg` = 166 WHERE `Entry` = 15541; -- Twilight Marauder Morna
UPDATE `creature_template` SET `MinMeleeDmg` = 101 WHERE `Entry` = 15542; -- Twilight Marauder
UPDATE `creature_template` SET `MinMeleeDmg` = 2241 WHERE `Entry` = 15543; -- Princess Yauj
UPDATE `creature_template` SET `MinMeleeDmg` = 2519 WHERE `Entry` = 15544; -- Vem
UPDATE `creature_template` SET `MinMeleeDmg` = 340 WHERE `Entry` = 15554; -- Number Two
UPDATE `creature_template` SET `MinMeleeDmg` = 3360 WHERE `Entry` = 15571; -- Maws
UPDATE `creature_template` SET `MinMeleeDmg` = 639 WHERE `Entry` = 15591; -- Minion of Weavil
UPDATE `creature_template` SET `MinMeleeDmg` = 1469 WHERE `Entry` = 15620; -- Hive\'Regal Hunter-Killer
UPDATE `creature_template` SET `MinMeleeDmg` = 345 WHERE `Entry` = 15623; -- Xandivious
UPDATE `creature_template` SET `MinMeleeDmg` = 345 WHERE `Entry` = 15629; -- Nightmare Phantasm
UPDATE `creature_template` SET `MinMeleeDmg` = 1225 WHERE `Entry` = 15630; -- Spawn of Fankriss
UPDATE `creature_template` SET `MinMeleeDmg` = 78 WHERE `Entry` = 15685; -- Southsea Kidnapper
UPDATE `creature_template` SET `MinMeleeDmg` = 129 WHERE `Entry` = 15720; -- Timbermaw Ancestor
UPDATE `creature_template` SET `MinMeleeDmg` = 113 WHERE `Entry` = 15727; -- C\'Thun
UPDATE `creature_template` SET `MinMeleeDmg` = 1995 WHERE `Entry` = 15740; -- Colossus of Zora
UPDATE `creature_template` SET `MinMeleeDmg` = 1995 WHERE `Entry` = 15741; -- Colossus of Regal
UPDATE `creature_template` SET `MinMeleeDmg` = 1995 WHERE `Entry` = 15742; -- Colossus of Ashi
UPDATE `creature_template` SET `MinMeleeDmg` = 509 WHERE `Entry` = 15743; -- Colossal Anubisath Warbringer
UPDATE `creature_template` SET `MinMeleeDmg` = 10 WHERE `Entry` = 15751; -- Anubisath Warbringer
UPDATE `creature_template` SET `MinMeleeDmg` = 457 WHERE `Entry` = 15752; -- Silithid Flayer
UPDATE `creature_template` SET `MinMeleeDmg` = 323 WHERE `Entry` = 15754; -- Greater Anubisath Warbringer
UPDATE `creature_template` SET `MinMeleeDmg` = 96 WHERE `Entry` = 15775; -- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 15863; -- Darkspear Shaman
UPDATE `creature_template` SET `MinMeleeDmg` = 6300 WHERE `Entry` = 15929; -- Stalagg
UPDATE `creature_template` SET `MinMeleeDmg` = 6300 WHERE `Entry` = 15930; -- Feugen
UPDATE `creature_template` SET `MinMeleeDmg` = 4480 WHERE `Entry` = 15931; -- Grobbulus
UPDATE `creature_template` SET `MinMeleeDmg` = 4032 WHERE `Entry` = 15932; -- Gluth
UPDATE `creature_template` SET `MinMeleeDmg` = 5601 WHERE `Entry` = 15936; -- Heigan the Unclean
UPDATE `creature_template` SET `MinMeleeDmg` = 5601 WHERE `Entry` = 15952; -- Maexxna
UPDATE `creature_template` SET `MinMeleeDmg` = 5601 WHERE `Entry` = 15953; -- Grand Widow Faerlina
UPDATE `creature_template` SET `MinMeleeDmg` = 5601 WHERE `Entry` = 15954; -- Noth the Plaguebringer
UPDATE `creature_template` SET `MinMeleeDmg` = 3919 WHERE `Entry` = 15956; -- Anub\'Rekhan
UPDATE `creature_template` SET `MinMeleeDmg` = 2075 WHERE `Entry` = 15974; -- Dread Creeper
UPDATE `creature_template` SET `MinMeleeDmg` = 2075 WHERE `Entry` = 15975; -- Carrion Spinner
UPDATE `creature_template` SET `MinMeleeDmg` = 3050 WHERE `Entry` = 15976; -- Venom Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 2965 WHERE `Entry` = 15978; -- Crypt Reaver
UPDATE `creature_template` SET `MinMeleeDmg` = 1100 WHERE `Entry` = 15980; -- Naxxramas Cultist
UPDATE `creature_template` SET `MinMeleeDmg` = 1100 WHERE `Entry` = 15981; -- Naxxramas Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 370 WHERE `Entry` = 15984; -- Sartura\'s Royal Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 7058 WHERE `Entry` = 15989; -- Sapphiron
UPDATE `creature_template` SET `MinMeleeDmg` = 5601 WHERE `Entry` = 16011; -- Loatheb
UPDATE `creature_template` SET `MinMeleeDmg` = 2075 WHERE `Entry` = 16017; -- Patchwork Golem
UPDATE `creature_template` SET `MinMeleeDmg` = 2075 WHERE `Entry` = 16018; -- Bile Retcher
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16020; -- Mad Scientist
UPDATE `creature_template` SET `MinMeleeDmg` = 2075 WHERE `Entry` = 16021; -- Living Monstrosity
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16022; -- Surgical Assistant
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16024; -- Embalming Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16025; -- Stitched Spewer
UPDATE `creature_template` SET `MinMeleeDmg` = 464 WHERE `Entry` = 16027; -- Living Poison
UPDATE `creature_template` SET `MinMeleeDmg` = 8195 WHERE `Entry` = 16028; -- Patchwerk
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16029; -- Sludge Belcher
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16034; -- Plague Beast
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16036; -- Frenzied Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16037; -- Plagued Bat
UPDATE `creature_template` SET `MinMeleeDmg` = 1529 WHERE `Entry` = 16042; -- Lord Valthalak
UPDATE `creature_template` SET `MinMeleeDmg` = 146 WHERE `Entry` = 16043; -- Magma Lord Bokk
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16050; -- Rotfang
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16051; -- Snokh Blackspine
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16052; -- Malgen Longspear
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16054; -- Rezznik
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16055; -- Va\'jashni
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16056; -- Diseased Maggot
UPDATE `creature_template` SET `MinMeleeDmg` = 1325 WHERE `Entry` = 16057; -- Rotting Maggot
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16058; -- Volida
UPDATE `creature_template` SET `MinMeleeDmg` = 442 WHERE `Entry` = 16059; -- Theldren
UPDATE `creature_template` SET `MinMeleeDmg` = 2866 WHERE `Entry` = 16060; -- Gothik the Harvester
UPDATE `creature_template` SET `MinMeleeDmg` = 17641 WHERE `Entry` = 16061; -- Instructor Razuvious
UPDATE `creature_template` SET `MinMeleeDmg` = 2687 WHERE `Entry` = 16062; -- Highlord Mograine
UPDATE `creature_template` SET `MinMeleeDmg` = 3919 WHERE `Entry` = 16063; -- Sir Zeliek
UPDATE `creature_template` SET `MinMeleeDmg` = 3919 WHERE `Entry` = 16065; -- Lady Blaumeux
UPDATE `creature_template` SET `MinMeleeDmg` = 127 WHERE `Entry` = 16066; -- Spectral Assassin
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16067; -- Deathcharger Steed
UPDATE `creature_template` SET `MinMeleeDmg` = 474 WHERE `Entry` = 16080; -- Mor Grayhoof
UPDATE `creature_template` SET `MinMeleeDmg` = 328 WHERE `Entry` = 16097; -- Isalien
UPDATE `creature_template` SET `MinMeleeDmg` = 335 WHERE `Entry` = 16098; -- Empyrean
UPDATE `creature_template` SET `MinMeleeDmg` = 689 WHERE `Entry` = 16101; -- Jarien
UPDATE `creature_template` SET `MinMeleeDmg` = 689 WHERE `Entry` = 16102; -- Sothos
UPDATE `creature_template` SET `MinMeleeDmg` = 176 WHERE `Entry` = 16103; -- Spirit of Jarien
UPDATE `creature_template` SET `MinMeleeDmg` = 192 WHERE `Entry` = 16104; -- Spirit of Sothos
UPDATE `creature_template` SET `MinMeleeDmg` = 107 WHERE `Entry` = 16117; -- Plagued Swine
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 16119; -- Bone Minion
UPDATE `creature_template` SET `MinMeleeDmg` = 2590 WHERE `Entry` = 16125; -- Unrelenting Deathknight
UPDATE `creature_template` SET `MinMeleeDmg` = 2253 WHERE `Entry` = 16126; -- Unrelenting Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16127; -- Spectral Trainee
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 16141; -- Ghoul Berserker
UPDATE `creature_template` SET `MinMeleeDmg` = 0 WHERE `Entry` = 16143; -- Shadow of Doom
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16145; -- Deathknight Captain
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16146; -- Deathknight
UPDATE `creature_template` SET `MinMeleeDmg` = 2640 WHERE `Entry` = 16148; -- Spectral Deathknight
UPDATE `creature_template` SET `MinMeleeDmg` = 2241 WHERE `Entry` = 16150; -- Spectral Rider
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16154; -- Risen Deathknight
UPDATE `creature_template` SET `MinMeleeDmg` = 1609 WHERE `Entry` = 16157; -- Doom Touched Warrior
UPDATE `creature_template` SET `MinMeleeDmg` = 1265 WHERE `Entry` = 16163; -- Deathknight Cavalier
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16165; -- Necro Knight
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16167; -- Bony Construct
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16168; -- Stoneskin Gargoyle
UPDATE `creature_template` SET `MinMeleeDmg` = 413 WHERE `Entry` = 16184; -- Nerubian Overseer
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16193; -- Skeletal Smith
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16194; -- Unholy Axe
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16215; -- Unholy Staff
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16216; -- Unholy Swords
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16243; -- Plague Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16244; -- Infectious Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 186 WHERE `Entry` = 16284; -- Argent Medic
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16290; -- Fallout Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16297; -- Mutated Grub
UPDATE `creature_template` SET `MinMeleeDmg` = 104 WHERE `Entry` = 16299; -- Skeletal Shocktrooper
UPDATE `creature_template` SET `MinMeleeDmg` = 288 WHERE `Entry` = 16359; -- Argent Messenger
UPDATE `creature_template` SET `MinMeleeDmg` = 839 WHERE `Entry` = 16368; -- Necropolis Acolyte
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16375; -- Sewage Slime
UPDATE `creature_template` SET `MinMeleeDmg` = 162 WHERE `Entry` = 16379; -- Spirit of the Damned
UPDATE `creature_template` SET `MinMeleeDmg` = 162 WHERE `Entry` = 16380; -- Bone Witch
UPDATE `creature_template` SET `MinMeleeDmg` = 747 WHERE `Entry` = 16387; -- Atiesh
UPDATE `creature_template` SET `MinMeleeDmg` = 68 WHERE `Entry` = 16399; -- Bloodsail Traitor
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 16422; -- Skeletal Soldier
UPDATE `creature_template` SET `MinMeleeDmg` = 9 WHERE `Entry` = 16423; -- Spectral Apparition
UPDATE `creature_template` SET `MinMeleeDmg` = 800 WHERE `Entry` = 16427; -- Soldier of the Frozen Wastes
UPDATE `creature_template` SET `MinMeleeDmg` = 166 WHERE `Entry` = 16429; -- Soul Weaver
UPDATE `creature_template` SET `MinMeleeDmg` = 13 WHERE `Entry` = 16438; -- Skeletal Trooper
UPDATE `creature_template` SET `MinMeleeDmg` = 4389 WHERE `Entry` = 16441; -- Guardian of Icecrown
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16446; -- Plagued Gargoyle
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16447; -- Plagued Ghoul
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16448; -- Plagued Deathhound
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16449; -- Spirit of Naxxramas
UPDATE `creature_template` SET `MinMeleeDmg` = 1795 WHERE `Entry` = 16451; -- Deathknight Vindicator
UPDATE `creature_template` SET `MinMeleeDmg` = 1414 WHERE `Entry` = 16452; -- Necro Knight Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16453; -- Necro Stalker
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16505; -- Naxxramas Follower
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16506; -- Naxxramas Worshipper
UPDATE `creature_template` SET `MinMeleeDmg` = 1770 WHERE `Entry` = 16573; -- Crypt Guard
UPDATE `creature_template` SET `MinMeleeDmg` = 2745 WHERE `Entry` = 16803; -- Deathknight Understudy
UPDATE `creature_template` SET `MinMeleeDmg` = 1953 WHERE `Entry` = 16981; -- Plagued Guardian
UPDATE `creature_template` SET `MinMeleeDmg` = 158 WHERE `Entry` = 17055; -- Maexxna Spiderling


-- #################################
-- Specific MaxMeleeDmg revert
-- backport from pre 0745
-- #################################

UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3; -- Flesh Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 30; -- Forest Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 43; -- Mine Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 48; -- Skeletal Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 12 WHERE `Entry` = 60; -- Ruklar the Trapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 79; -- Narg the Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 92; -- Rock Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 94; -- Defias Cutpurse
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 97; -- Riverpaw Runt
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 98; -- Riverpaw Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 99; -- Morgaine the Sly
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 100; -- Gruff Swiftbite
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 113; -- Stonetusk Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 114; -- Harvest Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 115; -- Harvest Reaper
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 116; -- Defias Bandit
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 119; -- Longsnout
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 121; -- Defias Pathstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 122; -- Defias Highwayman
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 123; -- Riverpaw Mongrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 124; -- Riverpaw Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 125; -- Riverpaw Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 126; -- Murloc Coastrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 127; -- Murloc Tidehunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 154; -- Greater Fleshripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 157; -- Goretusk
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 171; -- Murloc Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 193; -- Blue Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 199; -- Young Fleshripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 202; -- Skeletal Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 203; -- Skeletal Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 205; -- Nightbane Dark Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 206; -- Nightbane Vile Fang
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 210; -- Bone Chewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 212; -- Splinter Fist Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 213; -- Starving Dire Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 215; -- Defias Night Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 217; -- Venom Web Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 232; -- Farmer Ray
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 285; -- Murloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 2 WHERE `Entry` = 299; -- Young Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 300; -- Zzarc\' Vul
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 314; -- Eliza
UPDATE `creature_template` SET `MaxMeleeDmg` = 72 WHERE `Entry` = 315; -- Stalvan Mistmantle
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 327; -- Goldtooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 330; -- Princess
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 334; -- Gath\'Ilzogg
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 335; -- Singe
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 345; -- Bellygrub
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 391; -- Old Murk-Eye
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 397; -- Morganth
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 412; -- Stitches
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 422; -- Murloc Flesheater
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 423; -- Redridge Mongrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 424; -- Redridge Poacher
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 426; -- Redridge Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 428; -- Dire Condor
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 429; -- Shadowhide Darkweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 430; -- Redridge Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 431; -- Shadowhide Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 432; -- Shadowhide Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 433; -- Shadowhide Gnoll
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 435; -- Blackrock Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 436; -- Blackrock Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 437; -- Blackrock Renegade
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 440; -- Blackrock Grunt
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 441; -- Black Dragon Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 442; -- Tarantula
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 445; -- Redridge Alpha
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 446; -- Redridge Basher
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 448; -- Hogger
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 449; -- Defias Knuckleduster
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 450; -- Defias Renegade Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 452; -- Riverpaw Bandit
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 453; -- Riverpaw Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 454; -- Young Goretusk
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 456; -- Murloc Minor Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 458; -- Murloc Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 462; -- Vultros
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 472; -- Fedfennel
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 474; -- Defias Rogue Wizard
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 481; -- Defias Footpad
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 485; -- Blackrock Outrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 500; -- Riverpaw Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 501; -- Riverpaw Herbalist
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 502; -- Benny Blaanco
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 503; -- Lord Malathrom
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 504; -- Defias Trapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 505; -- Greater Tarantula
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 506; -- Sergeant Brashclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 507; -- Fenros
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 511; -- Insane Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 513; -- Murloc Netter
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 517; -- Murloc Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 518; -- Yowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 519; -- Slark
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 520; -- Brack
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 521; -- Lupos
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 522; -- Mor\'Ladim
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 524; -- Rockhide Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 531; -- Skeletal Fiend
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 533; -- Nightbane Shadow Weaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 534; -- Nefaru
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 539; -- Pygmy Venom Web Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 544; -- Murloc Nightcrawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 545; -- Murloc Tidecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 547; -- Great Goretusk
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 548; -- Murloc Minor Tidecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 550; -- Defias Messenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 565; -- Rabid Dire Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 568; -- Shadowhide Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 569; -- Green Recluse
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 570; -- Brain Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 572; -- Leprithus
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 573; -- Foe Reaper 4000
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 574; -- Naraxis
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 575; -- Fire Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 578; -- Murloc Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 579; -- Shadowhide Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 580; -- Redridge Drudger
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 583; -- Defias Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 587; -- Bloodscalp Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 588; -- Bloodscalp Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 589; -- Defias Pillager
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 590; -- Defias Looter
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 594; -- Defias Henchman
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 595; -- Bloodscalp Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 597; -- Bloodscalp Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 598; -- Defias Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 599; -- Marisa du\'Paige
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 604; -- Plague Spreader
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 615; -- Blackrock Tracker
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 616; -- Chatter
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 619; -- Defias Conjurer
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 622; -- Goblin Engineer
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 623; -- Skeletal Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 626; -- Foreman Thistlenettle
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 628; -- Black Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 634; -- Defias Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 636; -- Defias Blackguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 639; -- Edwin VanCleef
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 642; -- Sneed\'s Shredder
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 643; -- Sneed
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 644; -- Rhahk\'Zor
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 645; -- Cookie
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 646; -- Mr. Smite
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 647; -- Captain Greenskin
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 657; -- Defias Pirate
UPDATE `creature_template` SET `MaxMeleeDmg` = 59 WHERE `Entry` = 660; -- Bloodscalp Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 667; -- Skullsplitter Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 669; -- Skullsplitter Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 670; -- Skullsplitter Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 671; -- Bloodscalp Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 672; -- Skullsplitter Spiritchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 674; -- Venture Co. Strip Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 675; -- Venture Co. Foreman
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 676; -- Venture Co. Surveyor
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 677; -- Venture Co. Tinkerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 678; -- Mosh\'Ogg Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 679; -- Mosh\'Ogg Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 680; -- Mosh\'Ogg Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 681; -- Young Stranglethorn Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 682; -- Stranglethorn Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 683; -- Young Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 684; -- Shadowmaw Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 685; -- Stranglethorn Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 686; -- Lashtail Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 87 WHERE `Entry` = 687; -- Jungle Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 688; -- Stone Maw Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 689; -- Crystal Spine Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 690; -- Cold Eye Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 691; -- Lesser Water Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 694; -- Bloodscalp Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 696; -- Skullsplitter Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 697; -- Bloodscalp Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 698; -- Bloodscalp Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 699; -- Bloodscalp Beastmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 701; -- Bloodscalp Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 702; -- Bloodscalp Scavenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 703; -- Lieutenant Fangore
UPDATE `creature_template` SET `MaxMeleeDmg` = 2 WHERE `Entry` = 705; -- Ragged Young Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 707; -- Rockjaw Trogg
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 709; -- Mosh\'Ogg Warmonger
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 710; -- Mosh\'Ogg Spellcrafter
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 711; -- Ardo Dirtpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 712; -- Redridge Thrasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 305 WHERE `Entry` = 723; -- Mosh\'Ogg Butcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 728; -- Bhag\'thera
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 735; -- Murloc Streamrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 736; -- Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 741; -- Dreaming Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 742; -- Green Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 743; -- Wyrmkin Dreamwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 744; -- Green Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 745; -- Scalebane Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 746; -- Elder Dragonkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 87 WHERE `Entry` = 747; -- Marsh Murloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 750; -- Marsh Inkspewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 751; -- Marsh Flesheater
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 755; -- Lost One Mudlurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 756; -- Skullsplitter Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 757; -- Lost One Fisherman
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 759; -- Lost One Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 760; -- Lost One Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 761; -- Lost One Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 254 WHERE `Entry` = 763; -- Lost One Chieftain
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 765; -- Swampwalker Elder
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 767; -- Swamp Jaguar
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 768; -- Shadow Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 769; -- Deathstrike Tarantula
UPDATE `creature_template` SET `MaxMeleeDmg` = 220 WHERE `Entry` = 771; -- Commander Felstrom
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 772; -- Stranglethorn Tigress
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 775; -- Kurzen\'s Agent
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 780; -- Skullsplitter Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 781; -- Skullsplitter Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 782; -- Skullsplitter Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 132 WHERE `Entry` = 783; -- Skullsplitter Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 784; -- Skullsplitter Beastmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 785; -- Skeletal Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 787; -- Skeletal Healer
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 808; -- Grik\'nir the Cold
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 813; -- Colonel Kurzen
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 815; -- Bookie Herod
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 818; -- Mai\'Zoth
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 822; -- Young Forest Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 824; -- Defias Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 830; -- Sand Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 831; -- Sea Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 832; -- Dust Devil
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 834; -- Coyote
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 846; -- Rotten Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 854; -- Young Jungle Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 855; -- Young Stranglethorn Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 856; -- Young Lashtail Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 858; -- Sorrow Spinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 871; -- Saltscale Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 873; -- Saltscale Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 875; -- Saltscale Tide Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 877; -- Saltscale Forager
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 879; -- Saltscale Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 880; -- Erlan Drudgemoor
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 881; -- Surena Caledon
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 889; -- Splinter Fist Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 891; -- Splinter Fist Fire Weaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 892; -- Splinter Fist Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 898; -- Nightbane Worgen
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 905; -- Sharptooth Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 909; -- Defias Night Blade
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 910; -- Defias Enchanter
UPDATE `creature_template` SET `MaxMeleeDmg` = 51 WHERE `Entry` = 920; -- Nightbane Tainted One
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 921; -- Venture Co. Lumberjack
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 922; -- Silt Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 923; -- Young Black Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 930; -- Black Widow Hatchling
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 937; -- Kurzen Jungle Fighter
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 938; -- Kurzen Commando
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 939; -- Kurzen Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 940; -- Kurzen Medicine Man
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 941; -- Kurzen Headshrinker
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 942; -- Kurzen Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 943; -- Kurzen Wrangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 159 WHERE `Entry` = 947; -- Rohh the Silent
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 948; -- Rotted One
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 949; -- Carrion Recluse
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 950; -- Swamp Talker
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 976; -- Kurzen War Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 977; -- Kurzen War Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 978; -- Kurzen Subchief
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 979; -- Kurzen Shadow Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1007; -- Mosshide Gnoll
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 1008; -- Mosshide Mongrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1009; -- Mosshide Mistweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 1010; -- Mosshide Fenrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1011; -- Mosshide Trapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 1012; -- Mosshide Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1013; -- Mosshide Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1014; -- Mosshide Alpha
UPDATE `creature_template` SET `MaxMeleeDmg` = 51 WHERE `Entry` = 1015; -- Highland Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 1016; -- Highland Lashtail
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 1017; -- Highland Scytheclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 1018; -- Highland Razormaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 1019; -- Elder Razormaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 1020; -- Mottled Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 1021; -- Mottled Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 1022; -- Mottled Scytheclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 1023; -- Mottled Razormaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1024; -- Bluegill Murloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 1025; -- Bluegill Puddlejumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 1026; -- Bluegill Forager
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 1027; -- Bluegill Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 1028; -- Bluegill Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1029; -- Bluegill Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1030; -- Black Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 1031; -- Crimson Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1032; -- Black Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 1033; -- Monstrous Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1034; -- Dragonmaw Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1035; -- Dragonmaw Swamprunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 1036; -- Dragonmaw Centurion
UPDATE `creature_template` SET `MaxMeleeDmg` = 181 WHERE `Entry` = 1037; -- Dragonmaw Battlemaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 1038; -- Dragonmaw Shadowwarder
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1039; -- Fen Dweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 1040; -- Fen Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 1041; -- Fen Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1042; -- Red Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 1043; -- Lost Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 1044; -- Flamesnorting Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 1045; -- Red Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 1046; -- Red Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 1047; -- Red Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 1048; -- Scalebane Lieutenant
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 1049; -- Wyrmkin Firebrand
UPDATE `creature_template` SET `MaxMeleeDmg` = 764 WHERE `Entry` = 1050; -- Scalebane Royal Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1051; -- Dark Iron Dwarf
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1052; -- Dark Iron Saboteur
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1053; -- Dark Iron Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 1054; -- Dark Iron Demolitionist
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 1057; -- Dragonmaw Bonewarder
UPDATE `creature_template` SET `MaxMeleeDmg` = 158 WHERE `Entry` = 1059; -- Ana\'thek the Cruel
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 1060; -- Mogh the Undying
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 1062; -- Nezzliok the Dire
UPDATE `creature_template` SET `MaxMeleeDmg` = 312 WHERE `Entry` = 1063; -- Jade
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1065; -- Riverpaw Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 184 WHERE `Entry` = 1081; -- Mire Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 1082; -- Sawtooth Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1083; -- Murloc Shorestriker
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 1084; -- Young Sawtooth Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 1085; -- Elder Stranglethorn Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 85 WHERE `Entry` = 1087; -- Sawtooth Snapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1088; -- Monstrous Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 1094; -- Venture Co. Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 1095; -- Venture Co. Workboss
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 1096; -- Venture Co. Geologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 1097; -- Venture Co. Mechanic
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 1106; -- Lost One Cook
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 1108; -- Mistvale Gorilla
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1109; -- Fleshripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 1110; -- Skeletal Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 1111; -- Leech Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 1112; -- Leech Widow
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 1114; -- Jungle Thunderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1115; -- Rockjaw Skullthumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1118; -- Rockjaw Backbreaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 1119; -- Hammerspine
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1120; -- Frostmane Troll
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1121; -- Frostmane Snowstrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1123; -- Frostmane Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1124; -- Frostmane Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1125; -- Crag Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1126; -- Large Crag Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1127; -- Elder Crag Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1128; -- Young Black Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 1129; -- Black Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1131; -- Winter Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1133; -- Starving Winter Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1135; -- Wendigo
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 1137; -- Edan the Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1138; -- Snow Tracker Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 1142; -- Mosh\'Ogg Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 1144; -- Mosh\'Ogg Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 1150; -- River Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 1151; -- Saltwater Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 1152; -- Snapjaw Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 1159; -- First Mate Snellig
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 1160; -- Captain Halyndor
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1163; -- Stonesplinter Skullthumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1164; -- Stonesplinter Bonesnapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 1165; -- Stonesplinter Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 1166; -- Stonesplinter Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1167; -- Stonesplinter Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1169; -- Dark Iron Insurgent
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1173; -- Tunnel Rat Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1177; -- Tunnel Rat Surveyor
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 1178; -- Mo\'grosh Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1179; -- Mo\'grosh Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 1180; -- Mo\'grosh Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1181; -- Mo\'grosh Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 1183; -- Mo\'grosh Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1184; -- Cliff Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1185; -- Wood Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1188; -- Grizzled Black Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1189; -- Black Bear Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1190; -- Mountain Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1191; -- Mangy Mountain Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1192; -- Elder Mountain Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1194; -- Mountain Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1195; -- Forest Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1196; -- Ice Claw Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1197; -- Stonesplinter Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 6 WHERE `Entry` = 1199; -- Juvenile Snow Leopard
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 1200; -- Morbent Fel
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1201; -- Snow Leopard
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1205; -- Grawmug
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 1210; -- Chok\'sul
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1211; -- Leper Gnome
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1216; -- Shore Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1222; -- Dark Iron Sapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 1225; -- Ol\' Sooty
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1251; -- Splinter Fist Firemonger
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 1258; -- Black Ravager Mastiff
UPDATE `creature_template` SET `MaxMeleeDmg` = 86 WHERE `Entry` = 1259; -- Gobbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 1260; -- Great Father Arctikus
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 1270; -- Fetid Corpse
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 1271; -- Old Icebeard
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 1353; -- Sarltooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 1364; -- Balgaras the Foul
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 1388; -- Vagash
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 1393; -- Berserk Trogg
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1397; -- Frostmane Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 1398; -- Boss Galgosh
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 1399; -- Magosh
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 1400; -- Wetlands Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 1417; -- Young Wetlands Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 1418; -- Bluegill Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 1421; -- Private Merle
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 1425; -- Grizlak
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1426; -- Riverpaw Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 1487; -- Splinter Fist Enslaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 1492; -- Gorlash
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 1493; -- Mok\'rash
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 1494; -- Negolash
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 1501; -- Mindless Zombie
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 1504; -- Young Night Web Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 2 WHERE `Entry` = 1508; -- Young Scavenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 1509; -- Ragged Scavenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 1512; -- Duskbat
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 1513; -- Mangy Duskbat
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1520; -- Rattlecage Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1522; -- Darkeye Bonecaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1523; -- Cracked Skull Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1525; -- Rotting Dead
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1527; -- Hungering Dead
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1528; -- Shambling Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1530; -- Rotting Ancestor
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1531; -- Lost Soul
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1532; -- Wandering Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1535; -- Scarlet Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1536; -- Scarlet Missionary
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1537; -- Scarlet Zealot
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1538; -- Scarlet Friar
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 1539; -- Scarlet Neophyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 1540; -- Scarlet Vanguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1543; -- Vile Fin Puddlejumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1550; -- Thrashtail Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 199 WHERE `Entry` = 1551; -- Ironjaw Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 310 WHERE `Entry` = 1552; -- Scale Belly
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1553; -- Greater Duskbat
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1554; -- Vampiric Duskbat
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 1557; -- Elder Mistvale Gorilla
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 1558; -- Silverback Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 1559; -- King Mukla
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 1561; -- Bloodsail Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 54 WHERE `Entry` = 1562; -- Bloodsail Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 1563; -- Bloodsail Swashbuckler
UPDATE `creature_template` SET `MaxMeleeDmg` = 54 WHERE `Entry` = 1564; -- Bloodsail Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1565; -- Bloodsail Sea Dog
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 1653; -- Bloodsail Elder Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 1657; -- Devlin Agamand
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 1658; -- Captain Dargol
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1660; -- Scarlet Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1662; -- Captain Perrine
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1663; -- Dextren Ward
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 1664; -- Captain Vachon
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1665; -- Captain Melrache
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 1669; -- Defias Profiteer
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1674; -- Rot Hide Gnoll
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1675; -- Rot Hide Mongrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 1679; -- Avarus Kharag
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1693; -- Loch Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 1706; -- Defias Prisoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 1708; -- Defias Inmate
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 1711; -- Defias Convict
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 1713; -- Elder Shadowmaw Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1715; -- Defias Insurgent
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 1716; -- Bazil Thredd
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 1717; -- Hamhock
UPDATE `creature_template` SET `MaxMeleeDmg` = 149 WHERE `Entry` = 1720; -- Bruegal Ironknuckle
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1725; -- Defias Watchman
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1726; -- Defias Magician
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1727; -- Defias Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1729; -- Defias Evoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 1731; -- Goblin Craftsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 1732; -- Defias Squallshaper
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 1763; -- Gilnid
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 1765; -- Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 1766; -- Mottled Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1767; -- Vile Fin Shredder
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 1768; -- Vile Fin Tidehunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 1769; -- Moonrage Whitescalp
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1773; -- Rot Hide Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1779; -- Moonrage Glutton
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1780; -- Moss Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1781; -- Mist Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1782; -- Moonrage Darksoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 1783; -- Skeletal Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 1784; -- Skeletal Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 1785; -- Skeletal Terror
UPDATE `creature_template` SET `MaxMeleeDmg` = 158 WHERE `Entry` = 1787; -- Skeletal Executioner
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 1788; -- Skeletal Warlord
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 1789; -- Skeletal Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 89 WHERE `Entry` = 1791; -- Slavering Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 1793; -- Rotting Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1794; -- Soulless Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1795; -- Searing Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 1796; -- Freezing Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1797; -- Giant Grizzled Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1800; -- Cold Wraith
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 1801; -- Blood Wraith
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1802; -- Hungering Wraith
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1804; -- Wailing Death
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 1805; -- Flesh Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 1806; -- Vile Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 1808; -- Devouring Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 1809; -- Carrion Vulture
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 1812; -- Rotting Behemoth
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 1815; -- Diseased Black Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 1816; -- Diseased Grizzly
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 1817; -- Diseased Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 1821; -- Carrion Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 1822; -- Venom Mist Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 1824; -- Plague Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 1826; -- Scarlet Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 1827; -- Scarlet Sentinel
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 1831; -- Scarlet Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 1832; -- Scarlet Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 1833; -- Scarlet Knight
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 1834; -- Scarlet Paladin
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 1835; -- Scarlet Invoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 1836; -- Scarlet Cavalier
UPDATE `creature_template` SET `MaxMeleeDmg` = 705 WHERE `Entry` = 1837; -- Scarlet Judge
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 1838; -- Scarlet Interrogator
UPDATE `creature_template` SET `MaxMeleeDmg` = 772 WHERE `Entry` = 1839; -- Scarlet High Clerist
UPDATE `creature_template` SET `MaxMeleeDmg` = 772 WHERE `Entry` = 1840; -- Grand Inquisitor Isillien
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 1841; -- Scarlet Executioner
UPDATE `creature_template` SET `MaxMeleeDmg` = 234 WHERE `Entry` = 1842; -- Highlord Taelan Fordring
UPDATE `creature_template` SET `MaxMeleeDmg` = 678 WHERE `Entry` = 1843; -- Foreman Jerris
UPDATE `creature_template` SET `MaxMeleeDmg` = 471 WHERE `Entry` = 1844; -- Foreman Marcrid
UPDATE `creature_template` SET `MaxMeleeDmg` = 119 WHERE `Entry` = 1845; -- High Protector Tarsen
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 1846; -- High Protector Lorik
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 1847; -- Foulmane
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 1848; -- Lord Maldazzar
UPDATE `creature_template` SET `MaxMeleeDmg` = 740 WHERE `Entry` = 1851; -- The Husk
UPDATE `creature_template` SET `MaxMeleeDmg` = 764 WHERE `Entry` = 1852; -- Araj the Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 1853; -- Darkmaster Gandling
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1865; -- Ravenclaw Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 1867; -- Dalaran Apprentice
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 1868; -- Ravenclaw Servant
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 1869; -- Ravenclaw Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 67 WHERE `Entry` = 1871; -- Eliza\'s Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 1883; -- Scarlet Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 1884; -- Scarlet Lumberjack
UPDATE `creature_template` SET `MaxMeleeDmg` = 459 WHERE `Entry` = 1885; -- Scarlet Smith
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1888; -- Dalaran Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1889; -- Dalaran Wizard
UPDATE `creature_template` SET `MaxMeleeDmg` = 4 WHERE `Entry` = 1890; -- Rattlecage Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 1891; -- Pyrewood Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 1892; -- Moonrage Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1893; -- Moonrage Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1894; -- Pyrewood Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1895; -- Pyrewood Elder
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 1896; -- Moonrage Elder
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1908; -- Vile Fin Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 1909; -- Vile Fin Lakestalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1910; -- Muad
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 1911; -- Deeb
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 1912; -- Dalaran Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1913; -- Dalaran Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 1914; -- Dalaran Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 1915; -- Dalaran Conjuror
UPDATE `creature_template` SET `MaxMeleeDmg` = 4 WHERE `Entry` = 1916; -- Stephen Bhartec
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 1920; -- Dalaran Spellscribe
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1923; -- Bloodsnout Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1924; -- Moonrage Bloodhowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 1936; -- Farmer Solliden
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1939; -- Rot Hide Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1940; -- Rot Hide Plague Weaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1941; -- Rot Hide Graverobber
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1942; -- Rot Hide Savage
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 1944; -- Rot Hide Bruiser
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 1946; -- Lillith Nefara
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 1947; -- Thule Ravenclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 1948; -- Snarlmane
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1949; -- Servant of Azora
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1953; -- Lake Skulker
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1954; -- Elder Lake Skulker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1955; -- Lake Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 1956; -- Elder Lake Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 1957; -- Vile Fin Shorecreeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 1958; -- Vile Fin Tidecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 1961; -- Mangeclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 1971; -- Ivar the Foul
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 1972; -- Grimson the Pale
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 1973; -- Ravenclaw Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 1974; -- Ravenclaw Drudger
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 1981; -- Dark Iron Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 1983; -- Nightlash
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 1984; -- Young Thistle Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 1985; -- Thistle Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 1988; -- Grell
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 1993; -- Greenpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1995; -- Strigid Owl
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1996; -- Strigid Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 1997; -- Strigid Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 1998; -- Webwood Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 1999; -- Webwood Venomfang
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2000; -- Webwood Silkspinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2004; -- Dark Sprite
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2006; -- Gnarlpine Ursa
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2007; -- Gnarlpine Gardener
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2008; -- Gnarlpine Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 2010; -- Gnarlpine Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 2011; -- Gnarlpine Augur
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 2012; -- Gnarlpine Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2014; -- Gnarlpine Totemic
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2015; -- Bloodfeather Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 8 WHERE `Entry` = 2017; -- Bloodfeather Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2021; -- Bloodfeather Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2022; -- Timberling
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 2025; -- Timberling Bark Ripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2027; -- Timberling Trampler
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2030; -- Elder Timberling
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 2031; -- Young Nightsaber
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2033; -- Elder Nightsaber
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 2034; -- Feral Nightsaber
UPDATE `creature_template` SET `MaxMeleeDmg` = 12 WHERE `Entry` = 2038; -- Lord Melenas
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 2039; -- Ursal the Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2043; -- Nightsaber Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 2061; -- Councilman Thatcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 2062; -- Councilman Hendricks
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2063; -- Councilman Wilhelm
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2064; -- Councilman Hartin
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2065; -- Councilman Cooper
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2066; -- Councilman Higarth
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2067; -- Councilman Brunswick
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 2068; -- Lord Mayor Morrison
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2069; -- Moonstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 2070; -- Moonstalker Runt
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2071; -- Moonstalker Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 2089; -- Giant Wetlands Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2091; -- Chieftain Nek\'rosh
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2102; -- Dragonmaw Grunt
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 2103; -- Dragonmaw Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 2106; -- Apothecary Berard
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 2108; -- Garneg Charskull
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2120; -- Archmage Ataeric
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 2149; -- Dark Iron Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2152; -- Gnarlpine Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2156; -- Cracked Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 2157; -- Stone Behemoth
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 2158; -- Gravelflint Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 2159; -- Gravelflint Bonesnapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 2160; -- Gravelflint Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 2164; -- Rabid Thistle Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2165; -- Grizzled Thistle Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 2166; -- Oakenscowl
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2167; -- Blackwood Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2168; -- Blackwood Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2169; -- Blackwood Totemic
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 2170; -- Blackwood Ursa
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2171; -- Blackwood Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2172; -- Strider Clutchmother
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2174; -- Coastal Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2175; -- Shadowclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2179; -- Stormscale Wave Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2180; -- Stormscale Siren
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2181; -- Stormscale Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 2182; -- Stormscale Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2183; -- Stormscale Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 2184; -- Lady Moongazer
UPDATE `creature_template` SET `MaxMeleeDmg` = 132 WHERE `Entry` = 2186; -- Carnivous the Breaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 2191; -- Licillin
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 2192; -- Firecaller Radison
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2202; -- Greymist Coastrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 2203; -- Greymist Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 2204; -- Greymist Netter
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2205; -- Greymist Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2206; -- Greymist Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 2207; -- Greymist Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2208; -- Greymist Tidehunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2212; -- Deth\'ryll Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 2232; -- Tide Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 2234; -- Young Reef Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2235; -- Reef Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2236; -- Raging Reef Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2237; -- Moonstalker Sire
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2239; -- Drull
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2240; -- Syndicate Footpad
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2242; -- Syndicate Spy
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2243; -- Syndicate Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2244; -- Syndicate Shadow Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2245; -- Syndicate Saboteur
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2246; -- Syndicate Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2247; -- Syndicate Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 2248; -- Cave Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 2249; -- Ferocious Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2250; -- Mountain Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2251; -- Giant Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2252; -- Crushridge Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 94 WHERE `Entry` = 2253; -- Crushridge Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2254; -- Crushridge Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2255; -- Crushridge Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2256; -- Crushridge Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2257; -- Mug\'thol
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 2258; -- Stone Fury
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 2260; -- Syndicate Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2261; -- Syndicate Watchman
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2264; -- Hillsbrad Tailor
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 2267; -- Hillsbrad Peasant
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 2268; -- Hillsbrad Footman
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2269; -- Hillsbrad Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2270; -- Hillsbrad Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 2271; -- Dalaran Shield Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 2272; -- Dalaran Theurgist
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 2274; -- Stanley
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 2283; -- Ravenclaw Regent
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2287; -- Crushridge Warmonger
UPDATE `creature_template` SET `MaxMeleeDmg` = 239 WHERE `Entry` = 2304; -- Captain Ironhill
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2305; -- Foreman Bonds
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2306; -- Baron Vardus
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2319; -- Syndicate Wizard
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2320; -- Nagaz
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 2321; -- Foreststrider Fledgling
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 2322; -- Foreststrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 2323; -- Giant Foreststrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 2324; -- Blackwood Windtalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2332; -- Valdred Moray
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 2335; -- Magistrate Burnside
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2336; -- Dark Strand Fanatic
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2337; -- Dark Strand Voidcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 2338; -- Twilight Disciple
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2339; -- Twilight Thug
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 2344; -- Dun Garok Mountaineer
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 2345; -- Dun Garok Rifleman
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 2346; -- Dun Garok Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2347; -- Wild Gryphon
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2348; -- Elder Moss Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2349; -- Giant Moss Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 2350; -- Forest Moss Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 2351; -- Gray Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2354; -- Vicious Gray Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 2356; -- Elder Gray Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 2358; -- Dalaran Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2360; -- Hillsbrad Farmhand
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 2368; -- Daggerspine Shorestalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2369; -- Daggerspine Shorehunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 2370; -- Daggerspine Screamer
UPDATE `creature_template` SET `MaxMeleeDmg` = 51 WHERE `Entry` = 2371; -- Daggerspine Siren
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 2372; -- Mudsnout Gnoll
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 2373; -- Mudsnout Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 2384; -- Starving Mountain Lion
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 2387; -- Hillsbrad Councilman
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2403; -- Farmer Getz
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 2404; -- Blacksmith Verringtan
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2406; -- Mountain Lion
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2407; -- Hulking Mountain Lion
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2411; -- Ricter
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 2412; -- Alina
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2413; -- Dermot
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2416; -- Crushridge Plunderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2417; -- Grel\'borg the Miser
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 2421; -- Muckrake
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 2422; -- Glommus
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 2423; -- Lord Aliden Perenolde
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 2427; -- Jailor Eston
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 2428; -- Jailor Marlgen
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 2431; -- Jailor Borhuin
UPDATE `creature_template` SET `MaxMeleeDmg` = 313 WHERE `Entry` = 2447; -- Narillasanz
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2449; -- Citizen Wilkes
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 2451; -- Farmer Kalaba
UPDATE `creature_template` SET `MaxMeleeDmg` = 220 WHERE `Entry` = 2452; -- Skhowl
UPDATE `creature_template` SET `MaxMeleeDmg` = 247 WHERE `Entry` = 2453; -- Lo\'Grosh
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2473; -- Granistad
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 2476; -- Large Loch Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 2477; -- Gradok
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 2478; -- Haren Swifthoof
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 2503; -- Hillsbrad Foreman
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 2505; -- Saltwater Snapjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2521; -- Skymane Gorilla
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2522; -- Jaguero Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 2529; -- Son of Arugal
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2530; -- Yenniku
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 2531; -- Minion of Morganth
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 2534; -- Zanzil the Outcast
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 2535; -- Maury "Club Foot" Wilkins
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 2536; -- Jon-Jon the Crow
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 2537; -- Chucky "Ten Thumbs"
UPDATE `creature_template` SET `MaxMeleeDmg` = 331 WHERE `Entry` = 2541; -- Lord Sakrasis
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2544; -- Southern Sand Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 2547; -- Ironpatch
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 2548; -- Captain Keelhaul
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 2549; -- Garr Salthoof
UPDATE `creature_template` SET `MaxMeleeDmg` = 72 WHERE `Entry` = 2550; -- Captain Stillwater
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 2551; -- Brutus
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 2552; -- Witherbark Troll
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2553; -- Witherbark Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2554; -- Witherbark Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 2555; -- Witherbark Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2556; -- Witherbark Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2557; -- Witherbark Shadow Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2558; -- Witherbark Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2559; -- Highland Strider
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2560; -- Highland Thrasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 2561; -- Highland Fleshstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2562; -- Boulderfist Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2563; -- Plains Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2564; -- Boulderfist Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2565; -- Giant Plains Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2566; -- Boulderfist Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2567; -- Boulderfist Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2569; -- Boulderfist Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2570; -- Boulderfist Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2571; -- Boulderfist Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2572; -- Drywhisker Kobold
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 2573; -- Drywhisker Surveyor
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2574; -- Drywhisker Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 51 WHERE `Entry` = 2575; -- Dark Iron Supplier
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2577; -- Dark Iron Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2579; -- Mesa Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2580; -- Elder Mesa Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 2586; -- Syndicate Highwayman
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 2587; -- Syndicate Pathstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2588; -- Syndicate Prowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 2589; -- Syndicate Mercenary
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2590; -- Syndicate Conjuror
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2591; -- Syndicate Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2592; -- Rumbling Exile
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2595; -- Daggerspine Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 2596; -- Daggerspine Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 2597; -- Lord Falconcrest
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 2598; -- Darbel Montrose
UPDATE `creature_template` SET `MaxMeleeDmg` = 239 WHERE `Entry` = 2599; -- Otto
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 2600; -- Singer
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 2601; -- Foulbelly
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 2602; -- Ruul Onestone
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 2604; -- Molok the Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 254 WHERE `Entry` = 2605; -- Zalas Witherbark
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 2606; -- Nimar the Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 2607; -- Prince Galen Trollbane
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 2609; -- Geomancer Flintdagger
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2610; -- Shakes O\'Breen
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2611; -- Fozruk
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 2612; -- Lieutenant Valorcall
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2628; -- Dalaran Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 2635; -- Elder Saltwater Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 2638; -- Syndicate Spectre
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 2639; -- Vilebranch Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 2640; -- Vilebranch Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2641; -- Vilebranch Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 2642; -- Vilebranch Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2643; -- Vilebranch Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 2644; -- Vilebranch Hideskinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2645; -- Vilebranch Shadow Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2646; -- Vilebranch Blood Drinker
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2647; -- Vilebranch Soul Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 2648; -- Vilebranch Aman\'zasi Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2649; -- Witherbark Scalper
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 2650; -- Witherbark Zealot
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 2651; -- Witherbark Hideskinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 2652; -- Witherbark Venomblood
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 2653; -- Witherbark Sadist
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 2654; -- Witherbark Caller
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 2655; -- Green Sludge
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 2656; -- Jade Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 2657; -- Trained Razorbeak
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 2658; -- Razorbeak Gryphon
UPDATE `creature_template` SET `MaxMeleeDmg` = 100 WHERE `Entry` = 2659; -- Razorbeak Skylord
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 2680; -- Vilebranch Wolf Pup
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 2681; -- Vilebranch Raiding Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 2686; -- Witherbark Broodguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2701; -- Dustbelcher Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 2707; -- Shadra
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 2714; -- Forsaken Courier
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 2715; -- Dustbelcher Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 2716; -- Dustbelcher Wyrmhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2717; -- Dustbelcher Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 2718; -- Dustbelcher Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 2719; -- Dustbelcher Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 2720; -- Dustbelcher Ogre Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 2721; -- Forsaken Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2723; -- Stone Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 2725; -- Scalding Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 2726; -- Scorched Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2727; -- Crag Coyote
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2728; -- Feral Crag Coyote
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2729; -- Elder Crag Coyote
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 2730; -- Rabid Crag Coyote
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 2731; -- Ridge Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2732; -- Ridge Huntress
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2733; -- Apothecary Jorell
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2734; -- Ridge Stalker Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 66 WHERE `Entry` = 2735; -- Lesser Rock Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 2736; -- Greater Rock Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2739; -- Shadowforge Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 2740; -- Shadowforge Darkweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 2742; -- Shadowforge Chanter
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2743; -- Shadowforge Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 263 WHERE `Entry` = 2744; -- Shadowforge Commander
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 2745; -- Ambassador Infernus
UPDATE `creature_template` SET `MaxMeleeDmg` = 364 WHERE `Entry` = 2748; -- Archaedas
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 2749; -- Siege Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 2751; -- War Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 310 WHERE `Entry` = 2752; -- Rumbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 2753; -- Barnabus
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 2754; -- Anathemus
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 2755; -- Myzrael
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 2757; -- Blacklash
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 2759; -- Hematus
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 2760; -- Burning Exile
UPDATE `creature_template` SET `MaxMeleeDmg` = 51 WHERE `Entry` = 2762; -- Thundering Exile
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2765; -- Znort
UPDATE `creature_template` SET `MaxMeleeDmg` = 69 WHERE `Entry` = 2767; -- First Mate Nilzlix
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2773; -- Or\'Kalar
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 2775; -- Daggerspine Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 2778; -- Deckhand Moishe
UPDATE `creature_template` SET `MaxMeleeDmg` = 302 WHERE `Entry` = 2779; -- Prince Nazjak
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2780; -- Caretaker Nevlin
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2781; -- Caretaker Weston
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2782; -- Caretaker Alaric
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2783; -- Marez Cowl
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 2791; -- Enraged Rock Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2829; -- Starving Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 66 WHERE `Entry` = 2830; -- Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 2831; -- Giant Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 20 WHERE `Entry` = 2850; -- Broken Tooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 2892; -- Stonevault Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 2893; -- Stonevault Bonesnapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 67 WHERE `Entry` = 2894; -- Stonevault Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 2906; -- Dustbelcher Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 2907; -- Dustbelcher Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 2923; -- Mangy Silvermane
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 2924; -- Silvermane Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 2925; -- Silvermane Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 2926; -- Silvermane Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 2927; -- Vicious Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 2928; -- Primitive Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 2931; -- Zaricotl
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 2932; -- Magregan Deepshadow
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 2937; -- Dagun the Ravenous
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 2944; -- Boss Tho\'grun
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 2945; -- Murdaloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 2946; -- Puppet of Helcular
UPDATE `creature_template` SET `MaxMeleeDmg` = 6 WHERE `Entry` = 2954; -- Bristleback Battleboar
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 2955; -- Plainstrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2956; -- Adult Plainstrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2957; -- Elder Plainstrider
UPDATE `creature_template` SET `MaxMeleeDmg` = 6 WHERE `Entry` = 2958; -- Prairie Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 2963; -- Windfury Wind Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 2964; -- Windfury Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2965; -- Windfury Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2967; -- Galak Centaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 2968; -- Galak Outrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 2969; -- Wiry Swoop
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2970; -- Swoop
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 2971; -- Taloned Swoop
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 2975; -- Venture Co. Hireling
UPDATE `creature_template` SET `MaxMeleeDmg` = 20 WHERE `Entry` = 2976; -- Venture Co. Laborer
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 2977; -- Venture Co. Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 2978; -- Venture Co. Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 2989; -- Bael\'dun Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 2990; -- Bael\'dun Appraiser
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 2994; -- Ancestral Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3035; -- Flatland Cougar
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 3051; -- Supervisor Fizsprocket
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 3056; -- Ghost Howl
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3058; -- Arra\'chea
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 3068; -- Mazzranache
UPDATE `creature_template` SET `MaxMeleeDmg` = 1 WHERE `Entry` = 3098; -- Mottled Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3099; -- Dire Mottled Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 3100; -- Elder Mottled Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3103; -- Makrura Clacker
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3104; -- Makrura Shellhide
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 3105; -- Makrura Snapclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3106; -- Pygmy Surf Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3107; -- Surf Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 3110; -- Dreadmaw Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3111; -- Razormane Quilboar
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3112; -- Razormane Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3113; -- Razormane Dustrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3115; -- Dustwind Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3116; -- Dustwind Pillager
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3117; -- Dustwind Savage
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 3118; -- Dustwind Storm Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 8 WHERE `Entry` = 3121; -- Durotar Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3122; -- Bloodtalon Taillasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 3123; -- Bloodtalon Scythemaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 3125; -- Clattering Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3126; -- Armored Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 3141; -- Makrura Elder
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 3183; -- Yarrog Baneshadow
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3192; -- Lieutenant Benedict
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3195; -- Burning Blade Thug
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3196; -- Burning Blade Neophyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3197; -- Burning Blade Fanatic
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3198; -- Burning Blade Apprentice
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 3199; -- Burning Blade Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 3203; -- Fizzle Darkstorm
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3204; -- Gazz\'uz
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3205; -- Zalazane
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3206; -- Voodoo Troll
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3225; -- Corrupted Mottled Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3226; -- Corrupted Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3227; -- Corrupted Bloodtalon Scythemaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3228; -- Corrupted Surf Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3238; -- Stormhide
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3240; -- Stormsnout
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3241; -- Savannah Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 3242; -- Zhevra Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 3243; -- Savannah Highmane
UPDATE `creature_template` SET `MaxMeleeDmg` = 33 WHERE `Entry` = 3247; -- Thunderhawk Hatchling
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3248; -- Barrens Giraffe
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3249; -- Greater Thunderhawk
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3250; -- Silithid Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 3252; -- Silithid Swarmer
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 3253; -- Silithid Harvester
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3254; -- Sunscale Lashtail
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 3255; -- Sunscale Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 33 WHERE `Entry` = 3256; -- Sunscale Scytheclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3257; -- Ishamuhale
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3258; -- Bristleback Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3260; -- Bristleback Water Seeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 3261; -- Bristleback Thornweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 3263; -- Bristleback Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3266; -- Razormane Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3267; -- Razormane Water Seeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 3268; -- Razormane Thornweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3269; -- Razormane Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 3271; -- Razormane Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3276; -- Witchwing Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3277; -- Witchwing Roguefeather
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3278; -- Witchwing Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3279; -- Witchwing Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3280; -- Witchwing Windcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3282; -- Venture Co. Mercenary
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3283; -- Venture Co. Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3284; -- Venture Co. Drudger
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 3285; -- Venture Co. Peon
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3286; -- Venture Co. Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 3374; -- Bael\'dun Excavator
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3375; -- Bael\'dun Foreman
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3376; -- Bael\'dun Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3377; -- Bael\'dun Rifleman
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3378; -- Bael\'dun Officer
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3379; -- Burning Blade Bruiser
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 3380; -- Burning Blade Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3381; -- Southsea Brigand
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3382; -- Southsea Cannoneer
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3383; -- Southsea Cutthroat
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3384; -- Southsea Privateer
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3393; -- Captain Fairmount
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 3394; -- Barak Kodobane
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3395; -- Verog the Dervish
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 3396; -- Hezrul Bloodmark
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 3398; -- Gesharahan
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 3414; -- General Twinbraid
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3415; -- Savannah Huntress
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3416; -- Savannah Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3417; -- Living Flame
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 3424; -- Thunderhawk Cloudscraper
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 3425; -- Savannah Prowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3426; -- Zhevra Charger
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3434; -- Nak
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3435; -- Lok Orcbane
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3445; -- Supervisor Lugwizzle
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3450; -- Defias Companion
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3452; -- Serena Bloodfeather
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 3454; -- Cannoneer Smythe
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 3455; -- Cannoneer Whessan
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3456; -- Razormane Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3457; -- Razormane Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3458; -- Razormane Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3459; -- Razormane Warfrenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3461; -- Oasis Snapjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3463; -- Wandering Barrens Giraffe
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3466; -- Zhevra Courser
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 3470; -- Rathorian
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3472; -- Washte Pawne
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3473; -- Owatanka
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 3474; -- Lakota\'mani
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3475; -- Echeyakee
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3476; -- Isha Awak
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3503; -- Silithid Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 3528; -- Pyrewood Armorer
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 3529; -- Moonrage Armorer
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 3530; -- Pyrewood Tailor
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 3531; -- Moonrage Tailor
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 3532; -- Pyrewood Leatherworker
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 3533; -- Moonrage Leatherworker
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 3535; -- Blackmoss the Fetid
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 3566; -- Flatland Prowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 16 WHERE `Entry` = 3569; -- Bogling
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 3570; -- Cleansed Timberling
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3577; -- Dalaran Brewmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3578; -- Dalaran Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 3586; -- Miner Johnson
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 3616; -- Onu
UPDATE `creature_template` SET `MaxMeleeDmg` = 59 WHERE `Entry` = 3619; -- Ghost Saber
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3630; -- Deviate Coiler
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3631; -- Deviate Stinglash
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3632; -- Deviate Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3633; -- Deviate Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3634; -- Deviate Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 3636; -- Deviate Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 3637; -- Deviate Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 3638; -- Devouring Ectoplasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 3640; -- Evolving Ectoplasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3641; -- Deviate Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 142 WHERE `Entry` = 3652; -- Trigore the Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 3654; -- Mutanus the Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 3655; -- Mad Magglish
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 3660; -- Athrikus Narassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 22 WHERE `Entry` = 3662; -- Delmanis the Hated
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3664; -- Ilkrud Magthrull
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 3669; -- Lord Cobrahn
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3670; -- Lord Pythas
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3671; -- Lady Anacondra
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 3672; -- Boahn
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3673; -- Lord Serpentis
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 3674; -- Skum
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 3695; -- Grimclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 3696; -- Ran Bloodtooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3711; -- Wrathtail Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3712; -- Wrathtail Razortail
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3713; -- Wrathtail Wave Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3715; -- Wrathtail Sea Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3717; -- Wrathtail Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3721; -- Mystlash Hydra
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 3722; -- Mystlash Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 3725; -- Dark Strand Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3727; -- Dark Strand Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 3728; -- Dark Strand Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3730; -- Dark Strand Excavator
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 3732; -- Forsaken Seeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3733; -- Forsaken Herbalist
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3734; -- Forsaken Thug
UPDATE `creature_template` SET `MaxMeleeDmg` = 152 WHERE `Entry` = 3735; -- Apothecary Falthis
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 3736; -- Darkslayer Mordenthal
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3737; -- Saltspittle Puddlejumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3739; -- Saltspittle Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3740; -- Saltspittle Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3742; -- Saltspittle Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3743; -- Foulweald Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3745; -- Foulweald Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3746; -- Foulweald Den Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3748; -- Foulweald Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3749; -- Foulweald Ursa
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3750; -- Foulweald Totemic
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 3752; -- Xavian Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 3754; -- Xavian Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3755; -- Xavian Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 3757; -- Xavian Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3758; -- Felmusk Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3759; -- Felmusk Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3762; -- Felmusk Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3763; -- Felmusk Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3765; -- Bleakheart Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 3767; -- Bleakheart Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 3770; -- Bleakheart Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 3771; -- Bleakheart Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3772; -- Lesser Felguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 159 WHERE `Entry` = 3773; -- Akkrilus
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3774; -- Felslayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 3780; -- Shadethicket Moss Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 3781; -- Shadethicket Wood Shaper
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3782; -- Shadethicket Stone Mover
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3783; -- Shadethicket Raincaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3784; -- Shadethicket Bark Ripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 3804; -- Forsaken Intruder
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 3806; -- Forsaken Infiltrator
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 3807; -- Forsaken Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 3808; -- Forsaken Dark Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 3809; -- Ashenvale Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 3810; -- Elder Ashenvale Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 3811; -- Giant Ashenvale Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3812; -- Clattering Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3814; -- Spined Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3815; -- Blink Dragon
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 3816; -- Wild Buck
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 3817; -- Shadowhorn Stag
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3818; -- Elder Shadowhorn Stag
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3819; -- Wildthorn Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3820; -- Wildthorn Venomspitter
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 3821; -- Wildthorn Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3823; -- Ghostpaw Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 3824; -- Ghostpaw Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3825; -- Ghostpaw Alpha
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 3834; -- Crazed Ancient
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 3840; -- Druid of the Fang
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 3851; -- Shadowfang Whitescalp
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 3853; -- Shadowfang Moonwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3854; -- Shadowfang Wolfguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3855; -- Shadowfang Darksoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3857; -- Shadowfang Glutton
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3859; -- Shadowfang Ragetooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 3861; -- Bleak Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 3862; -- Slavering Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 3863; -- Lupine Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 3866; -- Vile Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 3868; -- Blood Seeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3872; -- Deathsworn Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3875; -- Haunted Servitor
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 3879; -- Dark Strand Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 3886; -- Razorclaw the Butcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 3887; -- Baron Silverlaine
UPDATE `creature_template` SET `MaxMeleeDmg` = 63 WHERE `Entry` = 3893; -- Forsaken Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 67 WHERE `Entry` = 3898; -- Aligar the Tormentor
UPDATE `creature_template` SET `MaxMeleeDmg` = 67 WHERE `Entry` = 3899; -- Balizar the Umbrage
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 3900; -- Caedakar the Vicious
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 3914; -- Rethilgore
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 3915; -- Dagri
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 3917; -- Befouled Water Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 3919; -- Withered Ancient
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 3927; -- Wolf Master Nandos
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 3928; -- Rotting Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 3931; -- Shadethicket Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 3943; -- Ruuzel
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 3944; -- Wrathtail Priestess
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 3974; -- Houndmaster Loksey
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 3975; -- Herod
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 3976; -- Scarlet Commander Mograine
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 3977; -- High Inquisitor Whitemane
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 3983; -- Interrogator Vishas
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 3984; -- Nancy Vishas
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 3985; -- Grandpa Vishas
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 3987; -- Dal Bloodclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 3988; -- Venture Co. Operator
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 3989; -- Venture Co. Logger
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 3991; -- Venture Co. Deforester
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 3992; -- Venture Co. Engineer
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 3993; -- Venture Co. Machine Smith
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 3998; -- Windshear Vermin
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 3999; -- Windshear Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4001; -- Windshear Tunnel Rat
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 4002; -- Windshear Stonecutter
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 4003; -- Windshear Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 4004; -- Windshear Overlord
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 4005; -- Deepmoss Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 4006; -- Deepmoss Webspinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 32 WHERE `Entry` = 4007; -- Deepmoss Venomspitter
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 4008; -- Cliff Stormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 4011; -- Young Pridewing
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 4012; -- Pridewing Wyvern
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 4013; -- Pridewing Skyhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4014; -- Pridewing Consort
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4015; -- Pridewing Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4016; -- Fey Dragon
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4017; -- Wily Fey Dragon
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4018; -- Antlered Courser
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4019; -- Great Courser
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4021; -- Corrosive Sap Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 4022; -- Bloodfury Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 4023; -- Bloodfury Roguefeather
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 4024; -- Bloodfury Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4025; -- Bloodfury Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4026; -- Bloodfury Windcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4027; -- Bloodfury Storm Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4031; -- Fledgling Chimaera
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4032; -- Young Chimaera
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4035; -- Furious Stone Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 4036; -- Rogue Flame Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4037; -- Burning Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4038; -- Burning Destroyer
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4040; -- Cave Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4041; -- Scorched Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 4042; -- Singed Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 4053; -- Daughter of Cenarius
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4057; -- Son of Cenarius
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4061; -- Mirkfallon Dryad
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4062; -- Dark Iron Bombardier
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 4063; -- Feeboz
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4065; -- Blackrock Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 4066; -- Nal\'taszar
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 4067; -- Twilight Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 37 WHERE `Entry` = 4070; -- Venture Co. Builder
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 4073; -- XT:4
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 4074; -- XT:9
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4093; -- Galak Wrangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 46 WHERE `Entry` = 4094; -- Galak Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 4095; -- Galak Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4096; -- Galak Windchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 4097; -- Galak Stormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4099; -- Galak Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4100; -- Screeching Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 4101; -- Screeching Roguefeather
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4104; -- Screeching Windcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4107; -- Highperch Wyvern
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4109; -- Highperch Consort
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 4110; -- Highperch Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4111; -- Gravelsnout Kobold
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 4112; -- Gravelsnout Vermin
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 4113; -- Gravelsnout Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 4114; -- Gravelsnout Forager
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 4116; -- Gravelsnout Surveyor
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4117; -- Cloud Serpent
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 4118; -- Venomous Cloud Serpent
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4119; -- Elder Cloud Serpent
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 4120; -- Thundering Boulderkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 4124; -- Needles Cougar
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 4126; -- Crag Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 4127; -- Hecklefang Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 4128; -- Hecklefang Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 4129; -- Hecklefang Snarler
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4130; -- Silithid Searcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4131; -- Silithid Invader
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 4132; -- Silithid Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4133; -- Silithid Hive Drone
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4139; -- Scorpid Terror
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4140; -- Scorpid Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4142; -- Sparkleshell Tortoise
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4143; -- Sparkleshell Snapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4144; -- Sparkleshell Borer
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4147; -- Saltstone Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4150; -- Saltstone Gazer
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4151; -- Saltstone Crystalhide
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 4154; -- Salt Flats Scavenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4158; -- Salt Flats Vulture
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4202; -- Gerenzo Wrenchwhistle
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 4243; -- Nightshade
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4248; -- Pesterhide Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4249; -- Pesterhide Snarler
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 4250; -- Galak Packhound
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 4260; -- Venture Co. Shredder
UPDATE `creature_template` SET `MaxMeleeDmg` = 33 WHERE `Entry` = 4263; -- Deepmoss Hatchling
UPDATE `creature_template` SET `MaxMeleeDmg` = 59 WHERE `Entry` = 4264; -- Deepmoss Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4274; -- Fenrus the Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4275; -- Archmage Arugal
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 4278; -- Commander Springvale
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4279; -- Odo the Blindwatcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4280; -- Scarlet Preserver
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4281; -- Scarlet Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 4282; -- Scarlet Magician
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4283; -- Scarlet Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4284; -- Scarlet Augur
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4285; -- Scarlet Disciple
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4286; -- Scarlet Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4287; -- Scarlet Gallant
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4288; -- Scarlet Beastmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4289; -- Scarlet Evoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4290; -- Scarlet Guardsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4291; -- Scarlet Diviner
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4292; -- Scarlet Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4293; -- Scarlet Scryer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4294; -- Scarlet Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4295; -- Scarlet Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4296; -- Scarlet Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4297; -- Scarlet Conjuror
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4298; -- Scarlet Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4299; -- Scarlet Chaplain
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4300; -- Scarlet Wizard
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4301; -- Scarlet Centurion
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4302; -- Scarlet Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4303; -- Scarlet Abbot
UPDATE `creature_template` SET `MaxMeleeDmg` = 199 WHERE `Entry` = 4304; -- Scarlet Tracking Hound
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4306; -- Scarlet Torturer
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4308; -- Unfettered Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4328; -- Firemane Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4329; -- Firemane Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4331; -- Firemane Ash Tail
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4334; -- Firemane Flamecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 4339; -- Brimgore
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4341; -- Drywallow Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 4342; -- Drywallow Vicejaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4343; -- Drywallow Snapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4344; -- Mottled Drywallow Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4345; -- Drywallow Daggermaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4346; -- Noxious Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4347; -- Noxious Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 4348; -- Noxious Shredder
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4351; -- Bloodfen Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4352; -- Bloodfen Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 4355; -- Bloodfen Scytheclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 4356; -- Bloodfen Razormaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 4357; -- Bloodfen Lashtail
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 4358; -- Mirefin Puddlejumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4359; -- Mirefin Murloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 4360; -- Mirefin Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4361; -- Mirefin Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4362; -- Mirefin Coastrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4363; -- Mirefin Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 4364; -- Strashaz Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 4366; -- Strashaz Serpent Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 4368; -- Strashaz Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 4370; -- Strashaz Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 4371; -- Strashaz Siren
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 4374; -- Strashaz Hydra
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4376; -- Darkmist Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 4378; -- Darkmist Recluse
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4379; -- Darkmist Silkspinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 283 WHERE `Entry` = 4380; -- Darkmist Widow
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4382; -- Withervine Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4385; -- Withervine Rager
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 4386; -- Withervine Bark Ripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4387; -- Withervine Mire Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4389; -- Murk Thresher
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4390; -- Elder Murk Thresher
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 4391; -- Swamp Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 4392; -- Corrosive Swamp Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 4393; -- Acidic Swamp Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 4396; -- Mudrock Tortoise
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4397; -- Mudrock Spikeshell
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 4398; -- Mudrock Burrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 4399; -- Mudrock Borer
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 4400; -- Mudrock Snapjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4401; -- Muckshell Clacker
UPDATE `creature_template` SET `MaxMeleeDmg` = 140 WHERE `Entry` = 4402; -- Muckshell Snapclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4403; -- Muckshell Pincer
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4404; -- Muckshell Scrabbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 149 WHERE `Entry` = 4405; -- Muckshell Razorclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 4409; -- Gatekeeper Kordurus
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 4411; -- Darkfang Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4412; -- Darkfang Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 4413; -- Darkfang Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4414; -- Darkfang Venomspitter
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 4415; -- Giant Darkfang Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 4416; -- Defias Strip Miner
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 4417; -- Defias Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 4418; -- Defias Wizard
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4420; -- Overlord Ramtusk
UPDATE `creature_template` SET `MaxMeleeDmg` = 239 WHERE `Entry` = 4421; -- Charlga Razorflank
UPDATE `creature_template` SET `MaxMeleeDmg` = 205 WHERE `Entry` = 4422; -- Agathelos the Raging
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 4424; -- Aggem Thorncurse
UPDATE `creature_template` SET `MaxMeleeDmg` = 184 WHERE `Entry` = 4425; -- Blind Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4427; -- Ward Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 4428; -- Death Speaker Jargba
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4435; -- Razorfen Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4436; -- Razorfen Quilguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4437; -- Razorfen Warden
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4438; -- Razorfen Spearhide
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4440; -- Razorfen Totemic
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4442; -- Razorfen Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 4444; -- Deathstalker Vincent
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4457; -- Murkgill Forager
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4458; -- Murkgill Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4459; -- Murkgill Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4460; -- Murkgill Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4461; -- Murkgill Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4462; -- Blackrock Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 4463; -- Blackrock Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4464; -- Blackrock Gladiator
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4465; -- Vilebranch Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 4466; -- Vilebranch Scalper
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 4467; -- Vilebranch Soothsayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4468; -- Jade Sludge
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 4469; -- Emerald Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 4472; -- Haunting Vision
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 4474; -- Rotting Cadaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 4475; -- Blighted Zombie
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 4479; -- Fardel Dabyrie
UPDATE `creature_template` SET `MaxMeleeDmg` = 45 WHERE `Entry` = 4481; -- Marcel Dabyrie
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 4493; -- Scarlet Avenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 4494; -- Scarlet Spellbinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4499; -- Rok\'Alim the Pounder
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 4504; -- Frostmaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 4505; -- Bloodsail Deckhand
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 4506; -- Bloodsail Swabby
UPDATE `creature_template` SET `MaxMeleeDmg` = 227 WHERE `Entry` = 4511; -- Agam\'ar
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 4512; -- Rotting Agam\'ar
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4514; -- Raging Agam\'ar
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4515; -- Death\'s Head Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4516; -- Death\'s Head Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4517; -- Death\'s Head Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 4518; -- Death\'s Head Sage
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4519; -- Death\'s Head Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4520; -- Razorfen Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 180 WHERE `Entry` = 4522; -- Razorfen Dustweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4523; -- Razorfen Groundshaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4525; -- Razorfen Earthbreaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4526; -- Wind Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 187 WHERE `Entry` = 4528; -- Stone Rumbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4530; -- Razorfen Handler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4532; -- Razorfen Beastmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 4538; -- Kraul Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 4539; -- Greater Kraul Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4540; -- Scarlet Monk
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4541; -- Blood of Agamaggan
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 4542; -- High Inquisitor Fairbanks
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4543; -- Bloodmage Thalnos
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 4546; -- Bor\'zehn
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4548; -- Steelsnap
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 4619; -- Geltharis
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4623; -- Quilguard Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 463 WHERE `Entry` = 4624; -- Booty Bay Bruiser
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 4625; -- Death\'s Head Ward Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 4627; -- Arugal\'s Voidwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4638; -- Magram Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4639; -- Magram Outrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4640; -- Magram Wrangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4641; -- Magram Windchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 4642; -- Magram Stormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4643; -- Magram Pack Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4644; -- Magram Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4645; -- Magram Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4646; -- Gelkis Outrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4647; -- Gelkis Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4648; -- Gelkis Stamper
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4649; -- Gelkis Windchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 4651; -- Gelkis Earthcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4652; -- Gelkis Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4653; -- Gelkis Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4654; -- Maraudine Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4655; -- Maraudine Wrangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 4656; -- Maraudine Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4657; -- Maraudine Windchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4658; -- Maraudine Stormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 4659; -- Maraudine Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 4660; -- Maraudine Bonepaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4661; -- Gelkis Rumbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4662; -- Magram Bonepaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4663; -- Burning Blade Augur
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4664; -- Burning Blade Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 4665; -- Burning Blade Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 4666; -- Burning Blade Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4667; -- Burning Blade Shadowmage
UPDATE `creature_template` SET `MaxMeleeDmg` = 49 WHERE `Entry` = 4668; -- Burning Blade Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4670; -- Hatefury Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4671; -- Hatefury Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4672; -- Hatefury Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4673; -- Hatefury Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4674; -- Hatefury Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 4675; -- Hatefury Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 4676; -- Lesser Infernal
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 4677; -- Doomwarder
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4678; -- Mana Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 4680; -- Doomwarder Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4681; -- Mage Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4682; -- Nether Sister
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4684; -- Nether Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 4686; -- Deepstrider Giant
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4687; -- Deepstrider Searcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 4688; -- Bonepaw Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 4689; -- Starving Bonepaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 19 WHERE `Entry` = 4690; -- Rabid Bonepaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4692; -- Dread Swoop
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 4693; -- Dread Flyer
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 4694; -- Dread Ripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 4695; -- Carrion Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 4696; -- Scorpashi Snapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4697; -- Scorpashi Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 4699; -- Scorpashi Venomlash
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 4705; -- Burning Blade Invoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4711; -- Slitherblade Naga
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 4712; -- Slitherblade Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4713; -- Slitherblade Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 4714; -- Slitherblade Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4715; -- Slitherblade Razortail
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 4716; -- Slitherblade Tidehunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4718; -- Slitherblade Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 4719; -- Slitherblade Sea Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 4723; -- Foreman Cozzle
UPDATE `creature_template` SET `MaxMeleeDmg` = 56 WHERE `Entry` = 4728; -- Gritjaw Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 4729; -- Hulking Gritjaw Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 4784; -- Argent Guard Manados
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 4787; -- Argent Guard Thaelrid
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4788; -- Fallenroot Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4789; -- Fallenroot Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4798; -- Fallenroot Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4799; -- Fallenroot Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4802; -- Blackfathom Tide Priestess
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4803; -- Blackfathom Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4805; -- Blackfathom Sea Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4807; -- Blackfathom Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4809; -- Twilight Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4810; -- Twilight Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4811; -- Twilight Aquamancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4812; -- Twilight Loreseeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4813; -- Twilight Shadowmage
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4814; -- Twilight Elementalist
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4815; -- Murkshallow Snapclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4818; -- Blindlight Murloc
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4819; -- Blindlight Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4820; -- Blindlight Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 4821; -- Skittering Crustacean
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 4822; -- Snapping Crustacean
UPDATE `creature_template` SET `MaxMeleeDmg` = 136 WHERE `Entry` = 4823; -- Barbed Crustacean
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 4824; -- Aku\'mai Fisher
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 4825; -- Aku\'mai Snapjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 4827; -- Deep Pool Threshfin
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 4829; -- Aku\'mai
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4830; -- Old Serra\'kis
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 4831; -- Lady Sarevess
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 4832; -- Twilight Lord Kelris
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 4841; -- Deadmire
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4842; -- Earthcaller Halmgar
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4844; -- Shadowforge Surveyor
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4845; -- Shadowforge Ruffian
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4846; -- Shadowforge Digger
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4847; -- Shadowforge Relic Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4848; -- Shadowforge Darkcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4849; -- Shadowforge Archaeologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4850; -- Stonevault Cave Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4851; -- Stonevault Rockchewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4852; -- Stonevault Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4853; -- Stonevault Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 4854; -- Grimlok
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4855; -- Stonevault Brawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 4856; -- Stonevault Cave Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4857; -- Stone Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 4860; -- Stone Steward
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 4861; -- Shrike Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 4872; -- Obsidian Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 4887; -- Ghamoo-ra
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 4950; -- Spot
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 4958; -- Haunting Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 89 WHERE `Entry` = 4971; -- Slim\'s Friend
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 4977; -- Murkshallow Softshell
UPDATE `creature_template` SET `MaxMeleeDmg` = 157 WHERE `Entry` = 4978; -- Aku\'mai Servant
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 5046; -- Lieutenant Caldwell
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5048; -- Deviate Adder
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 5053; -- Deviate Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 5055; -- Deviate Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 5056; -- Deviate Dreadfang
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 5058; -- Wolfguard Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 305 WHERE `Entry` = 5224; -- Murk Slitherer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5225; -- Murk Spitter
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 5226; -- Murk Worm
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5228; -- Saturated Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 5229; -- Gordunni Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 127 WHERE `Entry` = 5232; -- Gordunni Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5234; -- Gordunni Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5235; -- Fungal Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 87 WHERE `Entry` = 5236; -- Gordunni Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 5237; -- Gordunni Ogre Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5238; -- Gordunni Battlemaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 5239; -- Gordunni Mage-Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 66 WHERE `Entry` = 5240; -- Gordunni Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5241; -- Gordunni Warlord
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5244; -- Zukk\'ash Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5245; -- Zukk\'ash Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5246; -- Zukk\'ash Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5247; -- Zukk\'ash Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 5249; -- Woodpaw Mongrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 5251; -- Woodpaw Trapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 5253; -- Woodpaw Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 5254; -- Woodpaw Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 97 WHERE `Entry` = 5255; -- Woodpaw Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5256; -- Atal\'ai Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5258; -- Woodpaw Alpha
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 5259; -- Atal\'ai Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 102 WHERE `Entry` = 5260; -- Groddoc Ape
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 5262; -- Groddoc Thunderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 5268; -- Ironfur Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5269; -- Atal\'ai Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5270; -- Atal\'ai Corpse Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5271; -- Atal\'ai Deathwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5272; -- Grizzled Ironfur Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 5273; -- Atal\'ai High Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5274; -- Ironfur Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 97 WHERE `Entry` = 5276; -- Sprite Dragon
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 5277; -- Nightmare Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 85 WHERE `Entry` = 5278; -- Sprite Darter
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 5280; -- Nightmare Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5283; -- Nightmare Wanderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 5286; -- Longtooth Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5287; -- Longtooth Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5288; -- Rabid Longtooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 5291; -- Hakkari Frostwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5292; -- Feral Scar Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 5293; -- Hulking Feral Scar
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5296; -- Rage Scar Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5299; -- Ferocious Rage Scar
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5300; -- Frayfeather Hippogryph
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5304; -- Frayfeather Stagwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 5305; -- Frayfeather Skystormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5306; -- Frayfeather Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 5307; -- Vale Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 97 WHERE `Entry` = 5308; -- Rogue Vale Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 5312; -- Lethlas
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 5314; -- Phantim
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 5317; -- Jademir Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 5319; -- Jademir Tree Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 5320; -- Jademir Boughguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5327; -- Coast Crawl Snapclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 5328; -- Coast Crawl Deepseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 5331; -- Hatecrest Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 5332; -- Hatecrest Wave Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 87 WHERE `Entry` = 5333; -- Hatecrest Serpent Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 98 WHERE `Entry` = 5334; -- Hatecrest Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 5335; -- Hatecrest Screamer
UPDATE `creature_template` SET `MaxMeleeDmg` = 66 WHERE `Entry` = 5336; -- Hatecrest Sorceress
UPDATE `creature_template` SET `MaxMeleeDmg` = 76 WHERE `Entry` = 5337; -- Hatecrest Siren
UPDATE `creature_template` SET `MaxMeleeDmg` = 320 WHERE `Entry` = 5343; -- Lady Szallah
UPDATE `creature_template` SET `MaxMeleeDmg` = 310 WHERE `Entry` = 5345; -- Diamond Head
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 5346; -- Bloodroar the Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 5347; -- Antilus the Soarer
UPDATE `creature_template` SET `MaxMeleeDmg` = 349 WHERE `Entry` = 5349; -- Arash-ethis
UPDATE `creature_template` SET `MaxMeleeDmg` = 331 WHERE `Entry` = 5350; -- Qirot
UPDATE `creature_template` SET `MaxMeleeDmg` = 291 WHERE `Entry` = 5352; -- Old Grizzlegut
UPDATE `creature_template` SET `MaxMeleeDmg` = 302 WHERE `Entry` = 5354; -- Gnarl Leafbrother
UPDATE `creature_template` SET `MaxMeleeDmg` = 232 WHERE `Entry` = 5356; -- Snarler
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5357; -- Land Walker
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 5358; -- Cliff Giant
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 5359; -- Shore Strider
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5361; -- Wave Strider
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5362; -- Northspring Harpy
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5363; -- Northspring Roguefeather
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 5364; -- Northspring Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 98 WHERE `Entry` = 5366; -- Northspring Windcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 5399; -- Veyzhak the Cannibal
UPDATE `creature_template` SET `MaxMeleeDmg` = 320 WHERE `Entry` = 5400; -- Zekkis
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 5416; -- Infiltrator Marksen
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 5419; -- Glasshide Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5420; -- Glasshide Gazer
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5421; -- Glasshide Petrifier
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 5422; -- Scorpid Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5423; -- Scorpid Tail Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5424; -- Scorpid Dunestalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 5425; -- Starving Blisterpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 5426; -- Blisterpaw Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5427; -- Rabid Blisterpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 5428; -- Roc
UPDATE `creature_template` SET `MaxMeleeDmg` = 85 WHERE `Entry` = 5429; -- Fire Roc
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 5430; -- Searing Roc
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 5431; -- Surf Glider
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 5432; -- Giant Surf Glider
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5441; -- Hazzali Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 5450; -- Hazzali Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 5451; -- Hazzali Swarmer
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5452; -- Hazzali Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5453; -- Hazzali Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 5454; -- Hazzali Sandreaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5455; -- Centipaar Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5456; -- Centipaar Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 5457; -- Centipaar Swarmer
UPDATE `creature_template` SET `MaxMeleeDmg` = 367 WHERE `Entry` = 5458; -- Centipaar Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5459; -- Centipaar Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 5460; -- Centipaar Sandreaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5461; -- Sea Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5462; -- Sea Spray
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5465; -- Land Rager
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5466; -- Coast Strider
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 5467; -- Deep Dweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 5469; -- Dune Smasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 5470; -- Raging Dune Smasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5471; -- Dunemaul Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5472; -- Dunemaul Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 5473; -- Dunemaul Ogre Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 5474; -- Dunemaul Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 94 WHERE `Entry` = 5475; -- Dunemaul Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 69 WHERE `Entry` = 5477; -- Noboru the Cudgel
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5490; -- Gnarled Thistleshrub
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 5598; -- Atal\'ai Exile
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 5622; -- Ongeku
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 5643; -- Tyranis Malem
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5645; -- Sandfury Hideskinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5646; -- Sandfury Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5647; -- Sandfury Firecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5648; -- Sandfury Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5649; -- Sandfury Blood Drinker
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5650; -- Sandfury Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 5682; -- Dalin Forgewright
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 5683; -- Comar Villard
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 5708; -- Spawn of Hakkar
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 5709; -- Shade of Eranikus
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 5710; -- Jammal\'an the Prophet
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5711; -- Ogom the Wretched
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5712; -- Zolo
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5713; -- Gasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5714; -- Loro
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5715; -- Hukku
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5716; -- Zul\'Lor
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 5717; -- Mijan
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 5718; -- Rothos
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 5719; -- Morphaz
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 5720; -- Weaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 5721; -- Dreamscythe
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 5722; -- Hazzas
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 5755; -- Deviate Viper
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 5756; -- Deviate Venomwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 5760; -- Lord Azrethoc
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 5761; -- Deviate Shambler
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 5762; -- Deviate Moccasin
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 5763; -- Nightmare Ectoplasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 5 WHERE `Entry` = 5766; -- Savannah Cub
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 5771; -- Jugkar Grim\'rod
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 5775; -- Verdan the Everliving
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 5785; -- Sister Hatelash
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 5786; -- Snagglespear
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 5787; -- Enforcer Emilgund
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 5797; -- Aean Swiftriver
UPDATE `creature_template` SET `MaxMeleeDmg` = 157 WHERE `Entry` = 5800; -- Marcus Bel
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 5808; -- Warlord Kolkanis
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5822; -- Felweaver Scornn
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 5823; -- Death Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 5824; -- Captain Flat Tusk
UPDATE `creature_template` SET `MaxMeleeDmg` = 28 WHERE `Entry` = 5826; -- Geolord Mottle
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 5827; -- Brontus
UPDATE `creature_template` SET `MaxMeleeDmg` = 205 WHERE `Entry` = 5828; -- Humar the Pridelord
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 5829; -- Snort the Heckler
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 5830; -- Sister Rathtalon
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 5831; -- Swiftmane
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 5833; -- Margol the Rager
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 5834; -- Azzere the Skyblade
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 5835; -- Foreman Grills
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 5836; -- Engineer Whirleygig
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 5837; -- Stonearm
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 5838; -- Brokespear
UPDATE `creature_template` SET `MaxMeleeDmg` = 66 WHERE `Entry` = 5839; -- Dark Iron Geologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5840; -- Dark Iron Steamsmith
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 5841; -- Rocklance
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5844; -- Dark Iron Slaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5846; -- Dark Iron Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 5848; -- Malgin Barleybrew
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 5849; -- Digger Flameforge
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5850; -- Blazing Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 5851; -- Captain Gerogg Hammertoe
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 5852; -- Inferno Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 5854; -- Heavy War Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 100 WHERE `Entry` = 5855; -- Magma Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5857; -- Searing Lava Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 5858; -- Greater Lava Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 5859; -- Hagg Taurenbane
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 5860; -- Twilight Dark Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 5861; -- Twilight Fire Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 5862; -- Twilight Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 5863; -- Geopriest Gukk\'rok
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 5865; -- Dishu
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 5889; -- Mesa Earth Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 5894; -- Corrupt Minor Manifestation of Water
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 5896; -- Fire Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 5897; -- Corrupt Water Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 5898; -- Air Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 5902; -- Minor Manifestation of Air
UPDATE `creature_template` SET `MaxMeleeDmg` = 127 WHERE `Entry` = 5912; -- Deviate Faerie Dragon
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 5914; -- Deviate Nightmare
UPDATE `creature_template` SET `MaxMeleeDmg` = 180 WHERE `Entry` = 5915; -- Brother Ravenoak
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 5928; -- Sorrow Wing
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 5930; -- Sister Riven
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 5931; -- Foreman Rigger
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 5933; -- Achellios the Banished
UPDATE `creature_template` SET `MaxMeleeDmg` = 205 WHERE `Entry` = 5934; -- Heartrazor
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 5935; -- Ironeye the Invincible
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 5937; -- Vile Sting
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 5974; -- Dreadmaul Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 154 WHERE `Entry` = 5976; -- Dreadmaul Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 5977; -- Dreadmaul Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 87 WHERE `Entry` = 5978; -- Dreadmaul Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5982; -- Black Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 54 WHERE `Entry` = 5983; -- Bonepicker
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 5984; -- Starving Snickerfang
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 5985; -- Snickerfang Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 5988; -- Scorpok Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 5990; -- Redstone Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 5991; -- Redstone Crystalhide
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 5992; -- Ashmane Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 5993; -- Helboar
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6004; -- Shadowsworn Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 6005; -- Shadowsworn Thug
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 6006; -- Shadowsworn Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 6007; -- Shadowsworn Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 6008; -- Shadowsworn Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 6009; -- Shadowsworn Dreadweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 142 WHERE `Entry` = 6011; -- Felguard Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 6013; -- Wayward Buzzard
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 6020; -- Slimeshell Makrura
UPDATE `creature_template` SET `MaxMeleeDmg` = 151 WHERE `Entry` = 6021; -- Boar Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 30 WHERE `Entry` = 6033; -- Lake Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6035; -- Razorfen Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6069; -- Maraudine Khan Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 6070; -- Maraudine Khan Advisor
UPDATE `creature_template` SET `MaxMeleeDmg` = 80 WHERE `Entry` = 6071; -- Legion Hound
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 6072; -- Diathorus the Seeker
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 6073; -- Searing Infernal
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 6093; -- Dead-Tooth Jack
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 6113; -- Vejrek
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 6115; -- Roaming Felguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 6118; -- Varo\'then\'s Ghost
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 6125; -- Haldarr Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 97 WHERE `Entry` = 6126; -- Haldarr Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 6127; -- Haldarr Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6129; -- Draconic Magelord
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6130; -- Blue Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6131; -- Draconic Mageweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6132; -- Razorfen Servitor
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 6133; -- Shade of Elura
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 6135; -- Arkkoran Clacker
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 6136; -- Arkkoran Muckdweller
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 6137; -- Arkkoran Pincer
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 6138; -- Arkkoran Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 6139; -- Highperch Soarer
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 6140; -- Hetaera
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 6141; -- Pridewing Soarer
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6143; -- Servant of Arkkoroc
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6144; -- Son of Arkkoroc
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 6146; -- Cliff Breaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 6147; -- Cliff Thunderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 6148; -- Cliff Walker
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 6168; -- Roogug
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 6170; -- Gutspill
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 6180; -- Defias Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 6190; -- Spitelash Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 6193; -- Spitelash Screamer
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 6194; -- Spitelash Serpent Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 6195; -- Spitelash Siren
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 6196; -- Spitelash Myrmidon
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 6200; -- Legashi Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 6201; -- Legashi Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 6202; -- Legashi Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6212; -- Dark Iron Agent
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 6215; -- Chomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6218; -- Irradiated Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6219; -- Corrosive Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 6221; -- Addled Leper
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 6222; -- Leprous Technician
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6223; -- Leprous Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 6224; -- Leprous Machinesmith
UPDATE `creature_template` SET `MaxMeleeDmg` = 207 WHERE `Entry` = 6228; -- Dark Iron Ambassador
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6230; -- Peacekeeper Security Suit
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6232; -- Arcane Nullifier X-21
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6235; -- Electrocutioner 6000
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 6239; -- Cyclonian
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6243; -- Gelihast
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6347; -- Young Wavethrasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 6348; -- Wavethrasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 6349; -- Great Wavethrasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 6350; -- Makrinni Razorclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 6366; -- Kurzen Mindslave
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 6369; -- Coralshell Tortoise
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 6370; -- Makrinni Scrabbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 6372; -- Makrinni Snapclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 100 WHERE `Entry` = 6375; -- Thunderhead Hippogryph
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 6377; -- Thunderhead Stagwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 6378; -- Thunderhead Skystormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 114 WHERE `Entry` = 6379; -- Thunderhead Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 6380; -- Thunderhead Consort
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 6390; -- Ulag the Cleaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6426; -- Anguished Dead
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6427; -- Haunting Phantasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6487; -- Arcanist Doan
UPDATE `creature_template` SET `MaxMeleeDmg` = 215 WHERE `Entry` = 6489; -- Ironspine
UPDATE `creature_template` SET `MaxMeleeDmg` = 224 WHERE `Entry` = 6490; -- Azshir the Sleepless
UPDATE `creature_template` SET `MaxMeleeDmg` = 189 WHERE `Entry` = 6493; -- Illusionary Phantasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 6497; -- Astor Hadren
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 6498; -- Devilsaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 6499; -- Ironhide Devilsaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 6500; -- Tyrant Devilsaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 6501; -- Stegodon
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 6502; -- Plated Stegodon
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 6503; -- Spiked Stegodon
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 6505; -- Ravasaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 6506; -- Ravasaur Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 6507; -- Ravasaur Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 6508; -- Venomhide Ravasaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 134 WHERE `Entry` = 6509; -- Bloodpetal Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 142 WHERE `Entry` = 6510; -- Bloodpetal Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 6511; -- Bloodpetal Thresher
UPDATE `creature_template` SET `MaxMeleeDmg` = 146 WHERE `Entry` = 6512; -- Bloodpetal Trapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6513; -- Un\'Goro Stomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 6514; -- Un\'Goro Gorilla
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 6516; -- Un\'Goro Thunderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 6520; -- Scorching Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 6521; -- Living Blaze
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 6523; -- Dark Iron Rifleman
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6549; -- Demon of the Orb
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6551; -- Gorishi Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 185 WHERE `Entry` = 6552; -- Gorishi Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 6553; -- Gorishi Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 6554; -- Gorishi Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 6555; -- Gorishi Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 6556; -- Muculent Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 6557; -- Primal Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 114 WHERE `Entry` = 6559; -- Glutinous Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 6560; -- Stone Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 6575; -- Scarlet Trainee
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 6581; -- Ravasaur Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 401 WHERE `Entry` = 6582; -- Clutchmother Zavas
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 6583; -- Gruff
UPDATE `creature_template` SET `MaxMeleeDmg` = 391 WHERE `Entry` = 6585; -- Uhk\'loc
UPDATE `creature_template` SET `MaxMeleeDmg` = 317 WHERE `Entry` = 6646; -- Monnos the Elder
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 6647; -- Magister Hawkhelm
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 6648; -- Antilos
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 6649; -- Lady Sesspira
UPDATE `creature_template` SET `MaxMeleeDmg` = 370 WHERE `Entry` = 6650; -- General Fangferror
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 6651; -- Gatekeeper Rageroar
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6652; -- Master Feardred
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 6668; -- Lord Cyrik Blackforge
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 6733; -- Stonevault Basher
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 6748; -- Water Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 6766; -- Ravenholdt Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 6768; -- Lord Jorach Ravenholdt
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 6771; -- Ravenholdt Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 6788; -- Den Mother
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 6866; -- Defias Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 6867; -- Tracking Hound
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 6909; -- Sethir the Ancient
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 6910; -- Revelosh
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 6911; -- Minion of Sethir
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 6927; -- Defias Dockworker
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 6932; -- Swamp Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 7009; -- Arantir
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 7011; -- Earthen Rocksmasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 7012; -- Earthen Sculptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 7015; -- Flagglemurk the Cruel
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 7016; -- Lady Vespira
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 7017; -- Lord Sinslayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7023; -- Obsidian Sentinel
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7025; -- Blackrock Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 7026; -- Blackrock Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 206 WHERE `Entry` = 7027; -- Blackrock Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 7028; -- Blackrock Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 7029; -- Blackrock Battlemaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 7030; -- Shadowforge Geologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 7031; -- Obsidian Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 7033; -- Firegut Ogre
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 7034; -- Firegut Ogre Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7035; -- Firegut Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7039; -- War Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7040; -- Black Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7041; -- Black Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7042; -- Flamescale Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7043; -- Flamescale Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 7044; -- Black Drake
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 7045; -- Scalding Drake
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 7047; -- Black Broodling
UPDATE `creature_template` SET `MaxMeleeDmg` = 98 WHERE `Entry` = 7048; -- Scalding Broodling
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7049; -- Flamescale Broodling
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 7050; -- Defias Drone
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 7052; -- Defias Tower Patroller
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 7055; -- Blackrock Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 7056; -- Defias Tower Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 7057; -- Digmaster Shovelphlange
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 7067; -- Venture Co. Drone
UPDATE `creature_template` SET `MaxMeleeDmg` = 463 WHERE `Entry` = 7068; -- Condemned Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 571 WHERE `Entry` = 7069; -- Condemned Monk
UPDATE `creature_template` SET `MaxMeleeDmg` = 482 WHERE `Entry` = 7070; -- Condemned Cleric
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 7076; -- Earthen Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 7077; -- Earthen Hallshaper
UPDATE `creature_template` SET `MaxMeleeDmg` = 62 WHERE `Entry` = 7078; -- Cleft Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 180 WHERE `Entry` = 7079; -- Viscous Fallout
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7091; -- Shadowforge Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 7092; -- Tainted Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 7093; -- Vile Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 7097; -- Ironbeak Owl
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7098; -- Ironbeak Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 7099; -- Ironbeak Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7100; -- Warpwood Moss Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 7101; -- Warpwood Shredder
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7104; -- Dessecus
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 7105; -- Jadefire Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 7106; -- Jadefire Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 7107; -- Jadefire Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7108; -- Jadefire Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 100 WHERE `Entry` = 7109; -- Jadefire Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 7110; -- Jadefire Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 98 WHERE `Entry` = 7111; -- Jadefire Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 94 WHERE `Entry` = 7112; -- Jaedenar Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 7113; -- Jaedenar Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 7114; -- Jaedenar Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 94 WHERE `Entry` = 7115; -- Jaedenar Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 7118; -- Jaedenar Darkweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 7120; -- Jaedenar Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 7125; -- Jaedenar Hound
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7126; -- Jaedenar Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 7135; -- Infernal Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 7136; -- Infernal Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7137; -- Immolatus
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7138; -- Irontree Wanderer
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 7139; -- Irontree Stomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7149; -- Withered Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 103 WHERE `Entry` = 7153; -- Deadwood Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 7154; -- Deadwood Gardener
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 7155; -- Deadwood Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 7156; -- Deadwood Den Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 7157; -- Deadwood Avenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 7158; -- Deadwood Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 7175; -- Stonevault Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7206; -- Ancient Stone Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 7228; -- Ironaya
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 7234; -- Ferocitas the Dream Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 7235; -- Gnarlpine Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7246; -- Sandfury Shadowhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7247; -- Sandfury Soul Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7267; -- Chief Ukorz Sandscalp
UPDATE `creature_template` SET `MaxMeleeDmg` = 212 WHERE `Entry` = 7268; -- Sandfury Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7269; -- Scarab
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7271; -- Witch Doctor Zum\'rah
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 7273; -- Gahz\'rilla
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7274; -- Sandfury Executioner
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 7275; -- Shadowpriest Sezz\'ziz
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 7287; -- Foreman Silixiz
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 7288; -- Grand Foreman Puzik Gallywix
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7290; -- Shadowforge Sharpshooter
UPDATE `creature_template` SET `MaxMeleeDmg` = 42 WHERE `Entry` = 7307; -- Venture Co. Lookout
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 7308; -- Venture Co. Patroller
UPDATE `creature_template` SET `MaxMeleeDmg` = 14 WHERE `Entry` = 7318; -- Rageclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7320; -- Stonevault Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7321; -- Stonevault Flameweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 7333; -- Withered Battle Boar
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7335; -- Death\'s Head Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7337; -- Death\'s Head Necromancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7340; -- Skeletal Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7341; -- Skeletal Frostweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 256 WHERE `Entry` = 7342; -- Skeletal Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 7343; -- Splinterbone Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 7344; -- Splinterbone Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 7345; -- Splinterbone Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 94 WHERE `Entry` = 7346; -- Splinterbone Centurion
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7347; -- Boneflayer Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7348; -- Thorn Eater Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 7349; -- Tomb Fiend
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 7351; -- Tomb Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7352; -- Frozen Soul
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7353; -- Freezing Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 158 WHERE `Entry` = 7354; -- Ragglesnout
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 7355; -- Tuten\'kash
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 7356; -- Plaguemaw the Rotting
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 7357; -- Mordresh Fire Eye
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7358; -- Amnennar the Coldbringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7361; -- Grubbis
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7369; -- Deadwind Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 294 WHERE `Entry` = 7370; -- Restless Shade
UPDATE `creature_template` SET `MaxMeleeDmg` = 182 WHERE `Entry` = 7371; -- Deadwind Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 7372; -- Deadwind Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7376; -- Sky Shadow
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 7379; -- Deadwind Ogre Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 7396; -- Earthen Stonebreaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 7397; -- Earthen Stonecarver
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 7404; -- Galak Flame Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 7405; -- Deadly Cleft Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 7428; -- Frostmaul Giant
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 7429; -- Frostmaul Preserver
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 7430; -- Frostsaber Cub
UPDATE `creature_template` SET `MaxMeleeDmg` = 91 WHERE `Entry` = 7431; -- Frostsaber
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 7432; -- Frostsaber Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 7433; -- Frostsaber Huntress
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 7434; -- Frostsaber Pride Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 593 WHERE `Entry` = 7435; -- Cobalt Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 593 WHERE `Entry` = 7436; -- Cobalt Scalebane
UPDATE `creature_template` SET `MaxMeleeDmg` = 593 WHERE `Entry` = 7437; -- Cobalt Mageweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 209 WHERE `Entry` = 7438; -- Winterfall Ursa
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 7439; -- Winterfall Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7440; -- Winterfall Den Watcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 7441; -- Winterfall Totemic
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 7442; -- Winterfall Pathfinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7443; -- Shardtooth Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 7444; -- Shardtooth Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 7445; -- Elder Shardtooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 7446; -- Rabid Shardtooth
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7447; -- Fledgling Chillwind
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 7448; -- Chillwind Chimaera
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 7449; -- Chillwind Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7450; -- Ragged Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 7451; -- Raging Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 7452; -- Crazed Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7453; -- Moontouched Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 7454; -- Berserk Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 7455; -- Winterspring Owl
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 7456; -- Winterspring Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 7457; -- Rogue Ice Thistle
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7458; -- Ice Thistle Yeti
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 7459; -- Ice Thistle Matriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 7460; -- Ice Thistle Patriarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7584; -- Wandering Forest Walker
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 7603; -- Leprous Assistant
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7604; -- Sergeant Bly
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7605; -- Raven
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7606; -- Oro Eyegouge
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 7607; -- Weegli Blastfuse
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7608; -- Murta Grimgut
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 7664; -- Razelikh the Defiler
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 7665; -- Grol the Destroyer
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7666; -- Archmage Allistarj
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 7667; -- Lady Sevine
UPDATE `creature_template` SET `MaxMeleeDmg` = 171 WHERE `Entry` = 7668; -- Servant of Razelikh
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 7669; -- Servant of Grol
UPDATE `creature_template` SET `MaxMeleeDmg` = 142 WHERE `Entry` = 7670; -- Servant of Allistarj
UPDATE `creature_template` SET `MaxMeleeDmg` = 154 WHERE `Entry` = 7671; -- Servant of Sevine
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 7725; -- Grimtotem Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 71 WHERE `Entry` = 7726; -- Grimtotem Naturalist
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 7727; -- Grimtotem Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 7734; -- Ilifar
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 7735; -- Felcular
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 7738; -- Burning Servant
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 7774; -- Shay Leafrunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 7787; -- Sandfury Slave
UPDATE `creature_template` SET `MaxMeleeDmg` = 129 WHERE `Entry` = 7788; -- Sandfury Drudge
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7789; -- Sandfury Cretin
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7795; -- Hydromancer Velratha
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7796; -- Nekrum Gutchewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 7797; -- Ruuzlu
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7800; -- Mekgineer Thermaplugg
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 7803; -- Scorpid Duneburrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 149 WHERE `Entry` = 7808; -- Marauding Owlbeast
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 7809; -- Vilebranch Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 7847; -- Caliph Scorpidsting
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 7848; -- Lurking Feral Scar
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 7855; -- Southsea Pirate
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 7856; -- Southsea Freebooter
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 7857; -- Southsea Dock Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 7858; -- Southsea Swashbuckler
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7872; -- Death\'s Head Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7873; -- Razorfen Battleguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 7874; -- Razorfen Thornweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 7883; -- Andre Firebeard
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 7885; -- Spitelash Battlemaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 7886; -- Spitelash Enchantress
UPDATE `creature_template` SET `MaxMeleeDmg` = 239 WHERE `Entry` = 7895; -- Ambassador Bloodrage
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 7897; -- Alarm-a-bomb 2600
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 7915; -- Walking Bomb
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 7977; -- Gammerita
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 7995; -- Vile Priestess Hexx
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 7996; -- Qiaga the Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8127; -- Antu\'sul
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 8136; -- Lord Shalzaru
UPDATE `creature_template` SET `MaxMeleeDmg` = 313 WHERE `Entry` = 8156; -- Servant of Antu\'sul
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 8196; -- Occulus
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 8197; -- Chronalis
UPDATE `creature_template` SET `MaxMeleeDmg` = 312 WHERE `Entry` = 8199; -- Warleader Krazzilak
UPDATE `creature_template` SET `MaxMeleeDmg` = 302 WHERE `Entry` = 8200; -- Jin\'Zallah the Sandbringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 8202; -- Cyclok the Mad
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 8204; -- Soriid the Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 8205; -- Haarka the Ravenous
UPDATE `creature_template` SET `MaxMeleeDmg` = 320 WHERE `Entry` = 8207; -- Greater Firebird
UPDATE `creature_template` SET `MaxMeleeDmg` = 82 WHERE `Entry` = 8208; -- Murderous Blisterpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 8210; -- Razortalon
UPDATE `creature_template` SET `MaxMeleeDmg` = 283 WHERE `Entry` = 8211; -- Old Cliff Jumper
UPDATE `creature_template` SET `MaxMeleeDmg` = 349 WHERE `Entry` = 8212; -- The Reak
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 8213; -- Ironback
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 8215; -- Grimungous
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 8216; -- Retherokk the Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8217; -- Mith\'rethis the Enchanter
UPDATE `creature_template` SET `MaxMeleeDmg` = 310 WHERE `Entry` = 8218; -- Witherheart the Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 320 WHERE `Entry` = 8219; -- Zul\'arek Hatefowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 8236; -- Muck Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 65 WHERE `Entry` = 8257; -- Oozeling
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 8276; -- Soaring Razorbeak
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 8277; -- Rekk\'tilac
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 8278; -- Smoldar
UPDATE `creature_template` SET `MaxMeleeDmg` = 331 WHERE `Entry` = 8279; -- Faulty War Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 331 WHERE `Entry` = 8280; -- Shleipnarr
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8282; -- Highlord Mastrogonde
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 8283; -- Slave Master Blackheart
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 8296; -- Mojo the Twisted
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 8297; -- Magronos the Unyielding
UPDATE `creature_template` SET `MaxMeleeDmg` = 458 WHERE `Entry` = 8298; -- Akubar the Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 8299; -- Spiteflayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 8300; -- Ravage
UPDATE `creature_template` SET `MaxMeleeDmg` = 391 WHERE `Entry` = 8301; -- Clack the Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 349 WHERE `Entry` = 8302; -- Deatheye
UPDATE `creature_template` SET `MaxMeleeDmg` = 361 WHERE `Entry` = 8303; -- Grunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 459 WHERE `Entry` = 8304; -- Dreadscorn
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8311; -- Slime Maggot
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8317; -- Atal\'ai Deathwalker\'s Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 134 WHERE `Entry` = 8318; -- Atal\'ai Slave
UPDATE `creature_template` SET `MaxMeleeDmg` = 152 WHERE `Entry` = 8319; -- Nightmare Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 132 WHERE `Entry` = 8324; -- Atal\'ai Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 8336; -- Hakkari Sapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 149 WHERE `Entry` = 8337; -- Dark Iron Steelshifter
UPDATE `creature_template` SET `MaxMeleeDmg` = 170 WHERE `Entry` = 8338; -- Dark Iron Marksman
UPDATE `creature_template` SET `MaxMeleeDmg` = 313 WHERE `Entry` = 8384; -- Deep Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 8400; -- Obsidion
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 8408; -- Warlord Krellian
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 8409; -- Caravan Master Tset
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8419; -- Twilight Idolater
UPDATE `creature_template` SET `MaxMeleeDmg` = 132 WHERE `Entry` = 8437; -- Hakkari Minion
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8438; -- Hakkari Bloodkeeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 8440; -- Shade of Hakkar
UPDATE `creature_template` SET `MaxMeleeDmg` = 86 WHERE `Entry` = 8444; -- Trade Master Kovic
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8447; -- Clunk
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 8477; -- Skeletal Servant
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8497; -- Nightmare Suppressor
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 8503; -- Gibblewilt
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8504; -- Dark Iron Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 180 WHERE `Entry` = 8518; -- Rynthariel the Keymaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8519; -- Blighted Surge
UPDATE `creature_template` SET `MaxMeleeDmg` = 90 WHERE `Entry` = 8520; -- Plague Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 8521; -- Blighted Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8522; -- Plague Monstrosity
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 8523; -- Scourge Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 8525; -- Scourge Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8527; -- Scourge Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 8529; -- Scourge Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8530; -- Cannibal Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 8531; -- Gibbering Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 8532; -- Diseased Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8534; -- Putrid Gargoyle
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 8535; -- Putrid Shrieker
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8540; -- Torn Screamer
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 8541; -- Hate Shrieker
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 8542; -- Death Singer
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8543; -- Stitched Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 8544; -- Gangled Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 8545; -- Stitched Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 8555; -- Crypt Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 8556; -- Crypt Walker
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 8558; -- Crypt Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8560; -- Mossflayer Scout
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 8561; -- Mossflayer Shadowhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8562; -- Mossflayer Cannibal
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 8566; -- Dark Iron Lookout
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 8567; -- Glutton
UPDATE `creature_template` SET `MaxMeleeDmg` = 188 WHERE `Entry` = 8578; -- Magus Rimtori
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 8580; -- Atal\'alarion
UPDATE `creature_template` SET `MaxMeleeDmg` = 112 WHERE `Entry` = 8585; -- Frost Spectre
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 8596; -- Plaguehound Runt
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 8597; -- Plaguehound
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 8598; -- Frenzied Plaguehound
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 8600; -- Plaguebat
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8601; -- Noxious Plaguebat
UPDATE `creature_template` SET `MaxMeleeDmg` = 123 WHERE `Entry` = 8602; -- Monstrous Plaguebat
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8603; -- Carrion Grub
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 8605; -- Carrion Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 8606; -- Living Decay
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 8607; -- Rotting Sludge
UPDATE `creature_template` SET `MaxMeleeDmg` = 156 WHERE `Entry` = 8608; -- Angered Infernal
UPDATE `creature_template` SET `MaxMeleeDmg` = 170 WHERE `Entry` = 8616; -- Infernal Servant
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 8636; -- Morta\'gya the Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 8637; -- Dark Iron Watchman
UPDATE `creature_template` SET `MaxMeleeDmg` = 156 WHERE `Entry` = 8656; -- Hukku\'s Voidwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 156 WHERE `Entry` = 8657; -- Hukku\'s Succubus
UPDATE `creature_template` SET `MaxMeleeDmg` = 156 WHERE `Entry` = 8658; -- Hukku\'s Imp
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 8660; -- The Evalcharr
UPDATE `creature_template` SET `MaxMeleeDmg` = 93 WHERE `Entry` = 8667; -- Gusting Vortex
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 8668; -- Felhound Tracker
UPDATE `creature_template` SET `MaxMeleeDmg` = 1869 WHERE `Entry` = 8680; -- Massive Infernal
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 8717; -- Felguard Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 8718; -- Manahound
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8757; -- Shahiar
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8758; -- Zaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 8759; -- Mosshoof Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 8760; -- Mosshoof Stag
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 8761; -- Mosshoof Courser
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 8762; -- Timberweb Recluse
UPDATE `creature_template` SET `MaxMeleeDmg` = 98 WHERE `Entry` = 8763; -- Mistwing Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 8764; -- Mistwing Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 8766; -- Forest Ooze
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 8776; -- Emerald Dragon Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 8837; -- Muck Splash
UPDATE `creature_template` SET `MaxMeleeDmg` = 123 WHERE `Entry` = 8876; -- Sandfury Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 129 WHERE `Entry` = 8877; -- Sandfury Zealot
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 8886; -- Deviate Python
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 8889; -- Anvilrage Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 8890; -- Anvilrage Warden
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8891; -- Anvilrage Guardsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8892; -- Anvilrage Footman
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8893; -- Anvilrage Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8894; -- Anvilrage Medic
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8895; -- Anvilrage Officer
UPDATE `creature_template` SET `MaxMeleeDmg` = 169 WHERE `Entry` = 8896; -- Shadowforge Peasant
UPDATE `creature_template` SET `MaxMeleeDmg` = 183 WHERE `Entry` = 8897; -- Doomforge Craftsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 8898; -- Anvilrage Marshal
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8899; -- Doomforge Dragoon
UPDATE `creature_template` SET `MaxMeleeDmg` = 148 WHERE `Entry` = 8900; -- Doomforge Arcanasmith
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 8901; -- Anvilrage Reservist
UPDATE `creature_template` SET `MaxMeleeDmg` = 185 WHERE `Entry` = 8902; -- Shadowforge Citizen
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 8903; -- Anvilrage Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 153 WHERE `Entry` = 8904; -- Shadowforge Senator
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8907; -- Wrath Hammer Construct
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8908; -- Molten War Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 8909; -- Fireguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 8910; -- Blazing Fireguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8912; -- Twilight\'s Hammer Torturer
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8913; -- Twilight Emissary
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8914; -- Twilight Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 190 WHERE `Entry` = 8915; -- Twilight\'s Hammer Ambassador
UPDATE `creature_template` SET `MaxMeleeDmg` = 317 WHERE `Entry` = 8921; -- Bloodhound
UPDATE `creature_template` SET `MaxMeleeDmg` = 336 WHERE `Entry` = 8922; -- Bloodhound Mastiff
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8923; -- Panzor the Invincible
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 8924; -- The Behemoth
UPDATE `creature_template` SET `MaxMeleeDmg` = 165 WHERE `Entry` = 8925; -- Dredge Worm
UPDATE `creature_template` SET `MaxMeleeDmg` = 153 WHERE `Entry` = 8926; -- Deep Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 153 WHERE `Entry` = 8927; -- Dark Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8929; -- Princess Moira Bronzebeard
UPDATE `creature_template` SET `MaxMeleeDmg` = 153 WHERE `Entry` = 8932; -- Borer Beetle
UPDATE `creature_template` SET `MaxMeleeDmg` = 161 WHERE `Entry` = 8933; -- Cave Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 8956; -- Angerclaw Bear
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 8957; -- Angerclaw Grizzly
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 8958; -- Angerclaw Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 8959; -- Felpaw Wolf
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 8960; -- Felpaw Scavenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 8961; -- Felpaw Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 8976; -- Hematos
UPDATE `creature_template` SET `MaxMeleeDmg` = 459 WHERE `Entry` = 8979; -- Gruklash
UPDATE `creature_template` SET `MaxMeleeDmg` = 259 WHERE `Entry` = 8980; -- Firegut Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 8983; -- Golem Lord Argelmach
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 9016; -- Bael\'Gar
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9017; -- Lord Incendius
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9018; -- High Interrogator Gerstahn
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 9019; -- Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 9020; -- Commander Gor\'shak
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 9022; -- Dughal Stormwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 9024; -- Pyromancer Loregrain
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 9025; -- Lord Roccor
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 9026; -- Overmaster Pyron
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9027; -- Gorosh the Dervish
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 9028; -- Grizzle
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9029; -- Eviscerator
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9030; -- Ok\'thor the Breaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9031; -- Anub\'shiah
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 9032; -- Hedrum the Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9033; -- General Angerforge
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9034; -- Hate\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9035; -- Anger\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9036; -- Vile\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9037; -- Gloom\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9038; -- Seeth\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9039; -- Doom\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9040; -- Dope\'rel
UPDATE `creature_template` SET `MaxMeleeDmg` = 409 WHERE `Entry` = 9041; -- Warder Stilgiss
UPDATE `creature_template` SET `MaxMeleeDmg` = 378 WHERE `Entry` = 9042; -- Verek
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9043; -- Scarshield Grunt
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9044; -- Scarshield Sentry
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9045; -- Scarshield Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9046; -- Scarshield Quartermaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9056; -- Fineous Darkvire
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 9083; -- Razal\'blade
UPDATE `creature_template` SET `MaxMeleeDmg` = 102 WHERE `Entry` = 9085; -- Initiate Amakkar
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9096; -- Rage Talon Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9097; -- Scarshield Legionnaire
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9098; -- Scarshield Spellbinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9156; -- Ambassador Flamelash
UPDATE `creature_template` SET `MaxMeleeDmg` = 105 WHERE `Entry` = 9162; -- Young Diemetradon
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 9163; -- Diemetradon
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 9164; -- Elder Diemetradon
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 9165; -- Fledgling Pterrordax
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 9166; -- Pterrordax
UPDATE `creature_template` SET `MaxMeleeDmg` = 114 WHERE `Entry` = 9167; -- Frenzied Pterrordax
UPDATE `creature_template` SET `MaxMeleeDmg` = 345 WHERE `Entry` = 9176; -- Gor\'tesh
UPDATE `creature_template` SET `MaxMeleeDmg` = 72 WHERE `Entry` = 9178; -- Burning Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 9196; -- Highlord Omokk
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9197; -- Spirestone Battle Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9198; -- Spirestone Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9199; -- Spirestone Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9200; -- Spirestone Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9201; -- Spirestone Ogre Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9216; -- Spirestone Warlord
UPDATE `creature_template` SET `MaxMeleeDmg` = 409 WHERE `Entry` = 9217; -- Spirestone Lord Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9218; -- Spirestone Battle Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 409 WHERE `Entry` = 9219; -- Spirestone Butcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 601 WHERE `Entry` = 9236; -- Shadow Hunter Vosh\'gajin
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9237; -- War Master Voone
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9239; -- Smolderthorn Mystic
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9240; -- Smolderthorn Shadow Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9241; -- Smolderthorn Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9257; -- Scarshield Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9258; -- Scarshield Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9259; -- Firebrand Grunt
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 9260; -- Firebrand Legionnaire
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9261; -- Firebrand Darkweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9262; -- Firebrand Invoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 9263; -- Firebrand Dreadweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 9264; -- Firebrand Pyromancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9265; -- Smolderthorn Shadow Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9266; -- Smolderthorn Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9267; -- Smolderthorn Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9268; -- Smolderthorn Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9269; -- Smolderthorn Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 9318; -- Incendosaur
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9319; -- Houndmaster Grebmar
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 9336; -- Boss Copperplug
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9376; -- Blazerunner
UPDATE `creature_template` SET `MaxMeleeDmg` = 129 WHERE `Entry` = 9396; -- Ground Pounder
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 9397; -- Living Storm
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9398; -- Twilight\'s Hammer Executioner
UPDATE `creature_template` SET `MaxMeleeDmg` = 293 WHERE `Entry` = 9416; -- Scarshield Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9437; -- Dark Keeper Vorfalk
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9438; -- Dark Keeper Bethek
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9439; -- Dark Keeper Uggel
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9441; -- Dark Keeper Zimrel
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9442; -- Dark Keeper Ofgut
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9443; -- Dark Keeper Pelver
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9445; -- Dark Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9447; -- Scarlet Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9448; -- Scarlet Praetorian
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9449; -- Scarlet Cleric
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9450; -- Scarlet Curate
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9451; -- Scarlet Archmage
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9452; -- Scarlet Enchanter
UPDATE `creature_template` SET `MaxMeleeDmg` = 165 WHERE `Entry` = 9453; -- Aquementas
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 9454; -- Xavathras
UPDATE `creature_template` SET `MaxMeleeDmg` = 182 WHERE `Entry` = 9456; -- Warlord Krom\'zar
UPDATE `creature_template` SET `MaxMeleeDmg` = 428 WHERE `Entry` = 9460; -- Gadgetzan Bruiser
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 9461; -- Frenzied Black Drake
UPDATE `creature_template` SET `MaxMeleeDmg` = 119 WHERE `Entry` = 9462; -- Chieftain Bloodmaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 9464; -- Overlord Ror
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9476; -- Watchman Doomgrip
UPDATE `creature_template` SET `MaxMeleeDmg` = 140 WHERE `Entry` = 9498; -- Gorishi Grub
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9499; -- Plugger Spazzring
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 9500; -- Mistress Nagmara
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9502; -- Phalanx
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 9516; -- Lord Banehollow
UPDATE `creature_template` SET `MaxMeleeDmg` = 91 WHERE `Entry` = 9517; -- Shadow Lord Fel\'dan
UPDATE `creature_template` SET `MaxMeleeDmg` = 110 WHERE `Entry` = 9518; -- Rakaiah
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9520; -- Grark Lorkrub
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 9522; -- Blackrock Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9541; -- Blackbreath Crony
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 9543; -- Ribbly Screwspigot
UPDATE `creature_template` SET `MaxMeleeDmg` = 176 WHERE `Entry` = 9545; -- Grim Patron
UPDATE `creature_template` SET `MaxMeleeDmg` = 150 WHERE `Entry` = 9547; -- Guzzling Patron
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 9556; -- Felhound Minion
UPDATE `creature_template` SET `MaxMeleeDmg` = 909 WHERE `Entry` = 9568; -- Overlord Wyrmthalak
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9583; -- Bloodaxe Veteran
UPDATE `creature_template` SET `MaxMeleeDmg` = 440 WHERE `Entry` = 9596; -- Bannok Grimaxe
UPDATE `creature_template` SET `MaxMeleeDmg` = 170 WHERE `Entry` = 9598; -- Arei
UPDATE `creature_template` SET `MaxMeleeDmg` = 188 WHERE `Entry` = 9601; -- Treant Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 9602; -- Hahk\'Zor
UPDATE `creature_template` SET `MaxMeleeDmg` = 401 WHERE `Entry` = 9604; -- Gorgon\'och
UPDATE `creature_template` SET `MaxMeleeDmg` = 188 WHERE `Entry` = 9605; -- Blackrock Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 9622; -- U\'cha
UPDATE `creature_template` SET `MaxMeleeDmg` = 102 WHERE `Entry` = 9623; -- A-Me 01
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 9678; -- Shill Dinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 127 WHERE `Entry` = 9690; -- Ember Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 9691; -- Venomtip Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9692; -- Bloodaxe Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9693; -- Bloodaxe Evoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 9694; -- Slavering Ember Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 9695; -- Deathlash Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 338 WHERE `Entry` = 9696; -- Bloodaxe Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 9697; -- Giant Ember Worg
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 9698; -- Firetail Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 9701; -- Spire Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 164 WHERE `Entry` = 9708; -- Burning Imp
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9716; -- Bloodaxe Warmonger
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9717; -- Bloodaxe Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 422 WHERE `Entry` = 9718; -- Ghok Bashguud
UPDATE `creature_template` SET `MaxMeleeDmg` = 440 WHERE `Entry` = 9736; -- Quartermaster Zigris
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 9776; -- Flamekin Spitter
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 9777; -- Flamekin Sprite
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 9778; -- Flamekin Torcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 9779; -- Flamekin Rager
UPDATE `creature_template` SET `MaxMeleeDmg` = 777 WHERE `Entry` = 9816; -- Pyroguard Emberseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 9817; -- Blackhand Dreadweaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9818; -- Blackhand Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 9819; -- Blackhand Veteran
UPDATE `creature_template` SET `MaxMeleeDmg` = 133 WHERE `Entry` = 9860; -- Salia
UPDATE `creature_template` SET `MaxMeleeDmg` = 102 WHERE `Entry` = 9861; -- Moora
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 9862; -- Jaedenar Legionnaire
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 9877; -- Prince Xavalis
UPDATE `creature_template` SET `MaxMeleeDmg` = 109 WHERE `Entry` = 9878; -- Entropic Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 9916; -- Jarquia
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 9938; -- Magmus
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 9956; -- Shadowforge Flame Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 170 WHERE `Entry` = 10040; -- Gorishi Hive Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 10041; -- Gorishi Hive Queen
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 10042; -- Corrupted Saber
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 10043; -- Ribbly\'s Crony
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10076; -- High Priestess of Thaurissan
UPDATE `creature_template` SET `MaxMeleeDmg` = 588 WHERE `Entry` = 10077; -- Deathmaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 10078; -- Terrorspark
UPDATE `creature_template` SET `MaxMeleeDmg` = 59 WHERE `Entry` = 10080; -- Sandarr Dunereaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 302 WHERE `Entry` = 10082; -- Zerillis
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10083; -- Rage Talon Flamescale
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 10096; -- High Justice Grimstone
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10119; -- Volchan
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 10120; -- Vault Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 10161; -- Rookery Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 184 WHERE `Entry` = 10177; -- Spire Scarab
UPDATE `creature_template` SET `MaxMeleeDmg` = 2056 WHERE `Entry` = 10184; -- Onyxia
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10196; -- General Colbatann
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 10197; -- Mezzir the Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 447 WHERE `Entry` = 10200; -- Rak\'shiri
UPDATE `creature_template` SET `MaxMeleeDmg` = 403 WHERE `Entry` = 10201; -- Lady Hederine
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 10202; -- Azurous
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10204; -- Misha
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10220; -- Halycon
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 10221; -- Bloodaxe Worg Pup
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10258; -- Rookery Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 288 WHERE `Entry` = 10261; -- Burning Felhound
UPDATE `creature_template` SET `MaxMeleeDmg` = 409 WHERE `Entry` = 10263; -- Burning Felguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10264; -- Solakar Flamewreath
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10268; -- Gizrul the Slavener
UPDATE `creature_template` SET `MaxMeleeDmg` = 388 WHERE `Entry` = 10299; -- Scarshield Infiltrator
UPDATE `creature_template` SET `MaxMeleeDmg` = 259 WHERE `Entry` = 10316; -- Blackhand Incarcerator
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10317; -- Blackhand Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10318; -- Blackhand Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10319; -- Blackhand Iron Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10321; -- Emberstrife
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 10323; -- Murkdeep
UPDATE `creature_template` SET `MaxMeleeDmg` = 673 WHERE `Entry` = 10339; -- Gyth
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 10356; -- Bayne
UPDATE `creature_template` SET `MaxMeleeDmg` = 18 WHERE `Entry` = 10357; -- Ressan the Needler
UPDATE `creature_template` SET `MaxMeleeDmg` = 64 WHERE `Entry` = 10358; -- Fellicent\'s Shade
UPDATE `creature_template` SET `MaxMeleeDmg` = 1348 WHERE `Entry` = 10363; -- General Drakkisath
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10366; -- Rage Talon Dragon Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10371; -- Rage Talon Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10372; -- Rage Talon Fire Tongue
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 10373; -- Xabraxxis
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10374; -- Spire Spider
UPDATE `creature_template` SET `MaxMeleeDmg` = 134 WHERE `Entry` = 10375; -- Spire Spiderling
UPDATE `creature_template` SET `MaxMeleeDmg` = 664 WHERE `Entry` = 10376; -- Crystal Fang
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10382; -- Mangled Cadaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10384; -- Spectral Citizen
UPDATE `creature_template` SET `MaxMeleeDmg` = 188 WHERE `Entry` = 10388; -- Spiteful Phantom
UPDATE `creature_template` SET `MaxMeleeDmg` = 193 WHERE `Entry` = 10389; -- Wrath Phantom
UPDATE `creature_template` SET `MaxMeleeDmg` = 200 WHERE `Entry` = 10390; -- Skeletal Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 212 WHERE `Entry` = 10391; -- Skeletal Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 422 WHERE `Entry` = 10393; -- Skul
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10405; -- Plague Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10406; -- Ghoul Ravener
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10407; -- Fleshflayer Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10408; -- Rockwing Gargoyle
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10409; -- Rockwing Screecher
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10412; -- Crypt Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10413; -- Crypt Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10414; -- Patchwork Horror
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10416; -- Bile Spewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 496 WHERE `Entry` = 10417; -- Venom Belcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10418; -- Crimson Guardsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10419; -- Crimson Conjuror
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10420; -- Crimson Initiate
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10421; -- Crimson Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10422; -- Crimson Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10423; -- Crimson Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10424; -- Crimson Gallant
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10425; -- Crimson Battle Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10426; -- Crimson Inquisitor
UPDATE `creature_template` SET `MaxMeleeDmg` = 2309 WHERE `Entry` = 10429; -- Warchief Rend Blackhand
UPDATE `creature_template` SET `MaxMeleeDmg` = 1348 WHERE `Entry` = 10430; -- The Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10432; -- Vectus
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10433; -- Marduk Blackpool
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 10435; -- Magistrate Barthilas
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10436; -- Baroness Anastari
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10437; -- Nerub\'enkan
UPDATE `creature_template` SET `MaxMeleeDmg` = 783 WHERE `Entry` = 10438; -- Maleki the Pallid
UPDATE `creature_template` SET `MaxMeleeDmg` = 809 WHERE `Entry` = 10439; -- Ramstein the Gorger
UPDATE `creature_template` SET `MaxMeleeDmg` = 338 WHERE `Entry` = 10442; -- Chromatic Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10447; -- Chromatic Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10463; -- Shrieking Banshee
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10464; -- Wailing Banshee
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 10469; -- Scholomance Adept
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10470; -- Scholomance Neophyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10471; -- Scholomance Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 10472; -- Scholomance Occultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 10475; -- Scholomance Student
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10476; -- Scholomance Necrolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10477; -- Scholomance Necromancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10478; -- Splintered Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 198 WHERE `Entry` = 10479; -- Skulking Corpse
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 10481; -- Reanimated Corpse
UPDATE `creature_template` SET `MaxMeleeDmg` = 311 WHERE `Entry` = 10485; -- Risen Aberration
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10486; -- Risen Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10487; -- Risen Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10488; -- Risen Construct
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10489; -- Risen Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10491; -- Risen Bonewarder
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10495; -- Diseased Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 10497; -- Ragged Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10498; -- Spectral Tutor
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10499; -- Spectral Researcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 491 WHERE `Entry` = 10500; -- Spectral Teacher
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10502; -- Lady Illucia Barov
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 10503; -- Jandice Barov
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10504; -- Lord Alexei Barov
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10505; -- Instructor Malicia
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10507; -- The Ravenian
UPDATE `creature_template` SET `MaxMeleeDmg` = 690 WHERE `Entry` = 10508; -- Ras Frostwhisper
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 10516; -- The Unforgiven
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 10536; -- Plagued Maggot
UPDATE `creature_template` SET `MaxMeleeDmg` = 409 WHERE `Entry` = 10558; -- Hearthsinger Forresten
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 10559; -- Lady Vespia
UPDATE `creature_template` SET `MaxMeleeDmg` = 1858 WHERE `Entry` = 10579; -- Kirtonos the Herald (Spell Visual)
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 10580; -- Fetid Zombie
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 10581; -- Young Arikara
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10584; -- Urok Doomhowl
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10596; -- Mother Smolderweb
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 10601; -- Urok Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10602; -- Urok Ogre Magus
UPDATE `creature_template` SET `MaxMeleeDmg` = 107 WHERE `Entry` = 10605; -- Scarlet Medic
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10608; -- Scarlet Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 10617; -- Galak Messenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 270 WHERE `Entry` = 10619; -- Glacier
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 10639; -- Rorgish Jowl
UPDATE `creature_template` SET `MaxMeleeDmg` = 159 WHERE `Entry` = 10640; -- Oakpaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 159 WHERE `Entry` = 10642; -- Eck\'alom
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 10643; -- Mugglefin
UPDATE `creature_template` SET `MaxMeleeDmg` = 33 WHERE `Entry` = 10644; -- Mist Howler
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 10647; -- Prince Raze
UPDATE `creature_template` SET `MaxMeleeDmg` = 108 WHERE `Entry` = 10648; -- Xavaric
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 10659; -- Cobalt Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 111 WHERE `Entry` = 10660; -- Cobalt Broodling
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 10661; -- Spell Eater
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10662; -- Spellmaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 593 WHERE `Entry` = 10663; -- Manaclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 10683; -- Rookery Hatcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 10699; -- Carrion Scarab
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10737; -- Shy-Rotam
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10738; -- High Chief Winterfall
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10741; -- Sian-Rotam
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10742; -- Blackhand Dragon Handler
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 10756; -- Scalding Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 10757; -- Boiling Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 10758; -- Grimtotem Bandit
UPDATE `creature_template` SET `MaxMeleeDmg` = 44 WHERE `Entry` = 10759; -- Grimtotem Stomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 10760; -- Grimtotem Geomancer
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 10761; -- Grimtotem Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 10762; -- Blackhand Thug
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 10801; -- Jabbering Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 10802; -- Hitah\'ya the Keeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 10806; -- Ursius
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 10807; -- Brumeran
UPDATE `creature_template` SET `MaxMeleeDmg` = 422 WHERE `Entry` = 10808; -- Timmy the Cruel
UPDATE `creature_template` SET `MaxMeleeDmg` = 633 WHERE `Entry` = 10809; -- Stonespine
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10811; -- Archivist Galford
UPDATE `creature_template` SET `MaxMeleeDmg` = 743 WHERE `Entry` = 10812; -- Grand Crusader Dathrohan
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10813; -- Balnazzar
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10814; -- Chromatic Elite Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 10816; -- Wandering Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 413 WHERE `Entry` = 10817; -- Duggan Wildhammer
UPDATE `creature_template` SET `MaxMeleeDmg` = 434 WHERE `Entry` = 10821; -- Hed\'mush the Rotting
UPDATE `creature_template` SET `MaxMeleeDmg` = 447 WHERE `Entry` = 10822; -- Warlord Thresh\'jin
UPDATE `creature_template` SET `MaxMeleeDmg` = 459 WHERE `Entry` = 10823; -- Zul\'Brin Warpbranch
UPDATE `creature_template` SET `MaxMeleeDmg` = 705 WHERE `Entry` = 10824; -- Ranger Lord Hawkspear
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 10825; -- Gish the Unmoving
UPDATE `creature_template` SET `MaxMeleeDmg` = 434 WHERE `Entry` = 10826; -- Lord Darkscythe
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 10827; -- Deathspeaker Selendre
UPDATE `creature_template` SET `MaxMeleeDmg` = 510 WHERE `Entry` = 10828; -- High General Abbendis
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 10836; -- Farmer Dalson
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 10839; -- Argent Officer Garush
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 10840; -- Argent Officer Pureheart
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 10876; -- Undead Scarab
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 10896; -- Arnak Grimtotem
UPDATE `creature_template` SET `MaxMeleeDmg` = 510 WHERE `Entry` = 10899; -- Goraluk Anvilcrack
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 10901; -- Lorekeeper Polkelt
UPDATE `creature_template` SET `MaxMeleeDmg` = 206 WHERE `Entry` = 10916; -- Winterfall Runner
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 10919; -- Shatterspear Troll
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 10938; -- Redpath the Corrupted
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10946; -- Horgus the Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 10947; -- Darrowshire Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 10948; -- Darrowshire Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 10951; -- Marauding Corpse
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 10952; -- Marauding Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 10953; -- Servant of Horgus
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 10954; -- Bloodletter
UPDATE `creature_template` SET `MaxMeleeDmg` = 74 WHERE `Entry` = 10979; -- Scarlet Hound
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 10992; -- Enraged Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 10997; -- Cannon Master Willey
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11022; -- Alexi Barov
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 11024; -- Della
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 11030; -- Mindless Undead
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11032; -- Malor the Zealous
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 11039; -- Duke Nicholas Zverenhoff
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11043; -- Crimson Monk
UPDATE `creature_template` SET `MaxMeleeDmg` = 284 WHERE `Entry` = 11054; -- Crimson Rifleman
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 11055; -- Shadow Priestess Vandis
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 11058; -- Fras Siabi
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 11064; -- Darrowshire Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 161 WHERE `Entry` = 11075; -- Cauldron Lord Bilemaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 193 WHERE `Entry` = 11076; -- Cauldron Lord Razarch
UPDATE `creature_template` SET `MaxMeleeDmg` = 170 WHERE `Entry` = 11077; -- Cauldron Lord Malvinious
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 11078; -- Cauldron Lord Soulwrath
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11120; -- Crimson Hammersmith
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 11141; -- Spirit of Trey Lightforge
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11143; -- Postmaster Malown
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 11196; -- Shatterspear Drummer
UPDATE `creature_template` SET `MaxMeleeDmg` = 278 WHERE `Entry` = 11197; -- Mindless Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 11198; -- Broken Exile
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11257; -- Scholomance Handler
UPDATE `creature_template` SET `MaxMeleeDmg` = 2 WHERE `Entry` = 11258; -- Frail Skeleton
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11261; -- Doctor Theolen Krastinov
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 11262; -- Onyxian Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 278 WHERE `Entry` = 11263; -- Spectral Projection
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 11284; -- Dark Shade
UPDATE `creature_template` SET `MaxMeleeDmg` = 92 WHERE `Entry` = 11285; -- Rory
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 11288; -- Spectral Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 11289; -- Spectral Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 115 WHERE `Entry` = 11290; -- Mossflayer Zombie
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 11296; -- Darrowshire Poltergeist
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 11318; -- Ragefire Trogg
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 11320; -- Earthborer
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 11321; -- Molten Elemental
UPDATE `creature_template` SET `MaxMeleeDmg` = 84 WHERE `Entry` = 11322; -- Searing Blade Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 11323; -- Searing Blade Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 73 WHERE `Entry` = 11324; -- Searing Blade Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 11338; -- Hakkari Shadowcaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 772 WHERE `Entry` = 11339; -- Hakkari Shadow Hunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 11340; -- Hakkari Blood Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 11346; -- Hakkari Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11347; -- Zealot Lor\'Khan
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11348; -- Zealot Zath
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11350; -- Gurubashi Axe Thrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11351; -- Gurubashi Headhunter
UPDATE `creature_template` SET `MaxMeleeDmg` = 772 WHERE `Entry` = 11352; -- Gurubashi Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11353; -- Gurubashi Blood Drinker
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11355; -- Gurubashi Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 11356; -- Gurubashi Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 1584 WHERE `Entry` = 11359; -- Soulflayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 11360; -- Zulian Cub
UPDATE `creature_template` SET `MaxMeleeDmg` = 520 WHERE `Entry` = 11361; -- Zulian Tiger
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11365; -- Zulian Panther
UPDATE `creature_template` SET `MaxMeleeDmg` = 194 WHERE `Entry` = 11368; -- Bloodseeker Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 909 WHERE `Entry` = 11370; -- Razzashi Broodwidow
UPDATE `creature_template` SET `MaxMeleeDmg` = 520 WHERE `Entry` = 11371; -- Razzashi Serpent
UPDATE `creature_template` SET `MaxMeleeDmg` = 545 WHERE `Entry` = 11372; -- Razzashi Adder
UPDATE `creature_template` SET `MaxMeleeDmg` = 778 WHERE `Entry` = 11373; -- Razzashi Cobra
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11374; -- Hooktooth Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 2166 WHERE `Entry` = 11380; -- Jin\'do the Hexxer
UPDATE `creature_template` SET `MaxMeleeDmg` = 2913 WHERE `Entry` = 11382; -- Bloodlord Mandokir
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11383; -- High Priestess Hai\'watna
UPDATE `creature_template` SET `MaxMeleeDmg` = 491 WHERE `Entry` = 11387; -- Sandfury Speaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 11388; -- Witherbark Speaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11389; -- Bloodscalp Speaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11390; -- Skullsplitter Speaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 11391; -- Vilebranch Speaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11440; -- Gordok Enforcer
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11441; -- Gordok Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11442; -- Gordok Mauler
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11443; -- Gordok Ogre-Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11444; -- Gordok Mage-Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11445; -- Gordok Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11446; -- Gordok Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11447; -- Mushgog
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11448; -- Gordok Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11450; -- Gordok Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11451; -- Wildspawn Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11452; -- Wildspawn Rogue
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11453; -- Wildspawn Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11454; -- Wildspawn Betrayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11455; -- Wildspawn Felsworn
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11456; -- Wildspawn Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11457; -- Wildspawn Hellcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11458; -- Petrified Treant
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11459; -- Ironbark Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 24 WHERE `Entry` = 11460; -- Alzzin\'s Minion
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11461; -- Warpwood Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 11462; -- Warpwood Treant
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11464; -- Warpwood Tangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11465; -- Warpwood Stomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11467; -- Tsu\'zee
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11469; -- Eldreth Seether
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11470; -- Eldreth Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11471; -- Eldreth Apparition
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11472; -- Eldreth Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11473; -- Eldreth Spectre
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11475; -- Eldreth Phantasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 11476; -- Skeletal Highborne
UPDATE `creature_template` SET `MaxMeleeDmg` = 127 WHERE `Entry` = 11477; -- Rotting Highborne
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11480; -- Arcane Aberration
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11483; -- Mana Remnant
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11487; -- Magister Kalendris
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11488; -- Illyanna Ravenoak
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11490; -- Zevrim Thornhoof
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11492; -- Alzzin the Wildshaper
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11496; -- Immol\'thar
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11497; -- The Razza
UPDATE `creature_template` SET `MaxMeleeDmg` = 491 WHERE `Entry` = 11498; -- Skarr the Unbreakable
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 11517; -- Oggleflint
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 11518; -- Jergosh the Invoker
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 11519; -- Bazzalan
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11551; -- Necrofiend
UPDATE `creature_template` SET `MaxMeleeDmg` = 106 WHERE `Entry` = 11560; -- Magrami Spectre
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 11562; -- Drysnap Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 60 WHERE `Entry` = 11563; -- Drysnap Pincer
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11582; -- Scholomance Dark Summoner
UPDATE `creature_template` SET `MaxMeleeDmg` = 3562 WHERE `Entry` = 11583; -- Nefarian
UPDATE `creature_template` SET `MaxMeleeDmg` = 198 WHERE `Entry` = 11598; -- Risen Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 11611; -- Cavalier Durgen
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 11614; -- Bloodshot
UPDATE `creature_template` SET `MaxMeleeDmg` = 50 WHERE `Entry` = 11620; -- Spectral Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11622; -- Rattlegore
UPDATE `creature_template` SET `MaxMeleeDmg` = 58 WHERE `Entry` = 11685; -- Maraudine Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 11690; -- Gnarlpine Instigator
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11698; -- Hive\'Ashi Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 11713; -- Blackwood Tracker
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 11714; -- Marosh the Devious
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11721; -- Hive\'Ashi Worker
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 11722; -- Hive\'Ashi Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11723; -- Hive\'Ashi Sandstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 11724; -- Hive\'Ashi Swarmer
UPDATE `creature_template` SET `MaxMeleeDmg` = 479 WHERE `Entry` = 11725; -- Hive\'Zora Waywatcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 11726; -- Hive\'Zora Tunneler
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 11727; -- Hive\'Zora Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11728; -- Hive\'Zora Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11729; -- Hive\'Zora Hive Sister
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11730; -- Hive\'Regal Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11731; -- Hive\'Regal Burrower
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11732; -- Hive\'Regal Spitfire
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 11733; -- Hive\'Regal Slavemaker
UPDATE `creature_template` SET `MaxMeleeDmg` = 491 WHERE `Entry` = 11734; -- Hive\'Regal Hive Lord
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 11735; -- Stonelash Scorpid
UPDATE `creature_template` SET `MaxMeleeDmg` = 119 WHERE `Entry` = 11736; -- Stonelash Pincer
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 11737; -- Stonelash Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 11738; -- Sand Skitterer
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 11740; -- Dredge Striker
UPDATE `creature_template` SET `MaxMeleeDmg` = 125 WHERE `Entry` = 11741; -- Dredge Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 11744; -- Dust Stormer
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 11745; -- Cyclone Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 118 WHERE `Entry` = 11746; -- Desert Rumbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 11747; -- Desert Rager
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 11777; -- Shadowshard Rumbler
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 11778; -- Shadowshard Smasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 11781; -- Ambershard Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 11782; -- Ambershard Destroyer
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 11783; -- Theradrim Shardling
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 11784; -- Theradrim Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 167 WHERE `Entry` = 11785; -- Ambereye Basilisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 187 WHERE `Entry` = 11786; -- Ambereye Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 11787; -- Rock Borer
UPDATE `creature_template` SET `MaxMeleeDmg` = 285 WHERE `Entry` = 11788; -- Rock Worm
UPDATE `creature_template` SET `MaxMeleeDmg` = 99 WHERE `Entry` = 11789; -- Deep Borer
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 11790; -- Putridus Satyr
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 11791; -- Putridus Trickster
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 11792; -- Putridus Shadowstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 11793; -- Celebrian Dryad
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 11794; -- Sister of Celebrian
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 11803; -- Twilight Keeper Exeter
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 11804; -- Twilight Keeper Havunth
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 11830; -- Hakkari Priest
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 11831; -- Hakkari Witch Doctor
UPDATE `creature_template` SET `MaxMeleeDmg` = 34 WHERE `Entry` = 11858; -- Grundig Darkcloud
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 11873; -- Spectral Attendant
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 11880; -- Twilight Avenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 11881; -- Twilight Geolord
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 11882; -- Twilight Stonecaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 11883; -- Twilight Master
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 11886; -- Mercutio Filthgorger
UPDATE `creature_template` SET `MaxMeleeDmg` = 188 WHERE `Entry` = 11887; -- Crypt Robber
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 11896; -- Borelgore
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 11897; -- Duskwing
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 11910; -- Grimtotem Ruffian
UPDATE `creature_template` SET `MaxMeleeDmg` = 27 WHERE `Entry` = 11911; -- Grimtotem Mercenary
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 11912; -- Grimtotem Brute
UPDATE `creature_template` SET `MaxMeleeDmg` = 26 WHERE `Entry` = 11913; -- Grimtotem Sorcerer
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 11914; -- Gorehoof the Black
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 11920; -- Goggeroc
UPDATE `creature_template` SET `MaxMeleeDmg` = 36 WHERE `Entry` = 11921; -- Besseleth
UPDATE `creature_template` SET `MaxMeleeDmg` = 155 WHERE `Entry` = 11956; -- Great Bear Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 155 WHERE `Entry` = 11957; -- Great Cat Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 11981; -- Flamegor
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 11983; -- Firemaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 12017; -- Broodlord Lashlayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 54 WHERE `Entry` = 12037; -- Ursol\'lok
UPDATE `creature_template` SET `MaxMeleeDmg` = 104 WHERE `Entry` = 12046; -- Gor\'marok the Ravager
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 12116; -- Priestess of Elune
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 12121; -- Drakan
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 12122; -- Duros
UPDATE `creature_template` SET `MaxMeleeDmg` = 657 WHERE `Entry` = 12128; -- Crimson Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 491 WHERE `Entry` = 12129; -- Onyxian Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 12138; -- Lunaclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 661 WHERE `Entry` = 12140; -- Guardian of Elune
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 12199; -- Shade of Ambermoon
UPDATE `creature_template` SET `MaxMeleeDmg` = 444 WHERE `Entry` = 12201; -- Princess Theradras
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 12203; -- Landslide
UPDATE `creature_template` SET `MaxMeleeDmg` = 140 WHERE `Entry` = 12204; -- Spitelash Raider
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 12205; -- Spitelash Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12206; -- Primordial Behemoth
UPDATE `creature_template` SET `MaxMeleeDmg` = 313 WHERE `Entry` = 12207; -- Thessala Hydra
UPDATE `creature_template` SET `MaxMeleeDmg` = 184 WHERE `Entry` = 12208; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 12216; -- Poison Sprite
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 12217; -- Corruptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 77 WHERE `Entry` = 12218; -- Vile Larva
UPDATE `creature_template` SET `MaxMeleeDmg` = 295 WHERE `Entry` = 12219; -- Barbed Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 305 WHERE `Entry` = 12220; -- Constrictor Vine
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12221; -- Noxious Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12222; -- Creeping Sludge
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12223; -- Cavern Lurker
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12224; -- Cavern Shambler
UPDATE `creature_template` SET `MaxMeleeDmg` = 366 WHERE `Entry` = 12225; -- Celebras the Cursed
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 12236; -- Lord Vyletongue
UPDATE `creature_template` SET `MaxMeleeDmg` = 357 WHERE `Entry` = 12237; -- Meshlok the Harvester
UPDATE `creature_template` SET `MaxMeleeDmg` = 268 WHERE `Entry` = 12239; -- Spirit of Gelk
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 12240; -- Spirit of Kolk
UPDATE `creature_template` SET `MaxMeleeDmg` = 276 WHERE `Entry` = 12241; -- Spirit of Magra
UPDATE `creature_template` SET `MaxMeleeDmg` = 305 WHERE `Entry` = 12242; -- Spirit of Maraudos
UPDATE `creature_template` SET `MaxMeleeDmg` = 313 WHERE `Entry` = 12243; -- Spirit of Veng
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 12248; -- Infiltrator Hameya
UPDATE `creature_template` SET `MaxMeleeDmg` = 117 WHERE `Entry` = 12250; -- Zaeldarr the Outcast
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 12258; -- Razorlash
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 12262; -- Ziggurat Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 12263; -- Slaughterhouse Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 12319; -- Burning Blade Toxicologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 35 WHERE `Entry` = 12320; -- Burning Blade Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 38 WHERE `Entry` = 12321; -- Stormscale Toxicologist
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 12337; -- Crimson Courier
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 12339; -- Demetria
UPDATE `creature_template` SET `MaxMeleeDmg` = 57 WHERE `Entry` = 12347; -- Enraged Reef Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 184 WHERE `Entry` = 12352; -- Scarlet Trooper
UPDATE `creature_template` SET `MaxMeleeDmg` = 101 WHERE `Entry` = 12369; -- Lord Kragaru
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 12377; -- Wailing Spectre
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 12387; -- Large Vile Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 12396; -- Doomguard Commander
UPDATE `creature_template` SET `MaxMeleeDmg` = 2258 WHERE `Entry` = 12397; -- Lord Kazzak
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 12416; -- Blackwing Legionnaire
UPDATE `creature_template` SET `MaxMeleeDmg` = 223 WHERE `Entry` = 12418; -- Gordok Hyena
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 12420; -- Blackwing Mage
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 12422; -- Death Talon Dragonspawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 23 WHERE `Entry` = 12431; -- Gorefang
UPDATE `creature_template` SET `MaxMeleeDmg` = 25 WHERE `Entry` = 12432; -- Old Vicejaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 12435; -- Razorgore the Untamed
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12457; -- Blackwing Spellbinder
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 12458; -- Blackwing Taskmaster
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12459; -- Blackwing Warlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12460; -- Death Talon Wyrmguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12461; -- Death Talon Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12463; -- Death Talon Flamescale
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12464; -- Death Talon Seether
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12465; -- Death Talon Wyrmkin
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 12467; -- Death Talon Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 12468; -- Death Talon Hatcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 12474; -- Emeraldon Boughguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 12475; -- Emeraldon Tree Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 12476; -- Emeraldon Oracle
UPDATE `creature_template` SET `MaxMeleeDmg` = 754 WHERE `Entry` = 12496; -- Dreamtracker
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 12497; -- Dreamroarer
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 12498; -- Dreamstalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 12557; -- Grethok the Controller
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 12579; -- Bloodfury Ripper
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 12676; -- Sharptalon
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 12677; -- Shadumbra
UPDATE `creature_template` SET `MaxMeleeDmg` = 59 WHERE `Entry` = 12678; -- Ursangous
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 12739; -- Onyxia\'s Elite Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 743 WHERE `Entry` = 12800; -- Chimaerok
UPDATE `creature_template` SET `MaxMeleeDmg` = 783 WHERE `Entry` = 12801; -- Arcane Chimaerok
UPDATE `creature_template` SET `MaxMeleeDmg` = 743 WHERE `Entry` = 12802; -- Chimaerok Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 12803; -- Lord Lakmaeran
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 12836; -- Wandering Protector
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 12860; -- Duriel Moonfire
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 12865; -- Ambassador Malcin
UPDATE `creature_template` SET `MaxMeleeDmg` = 173 WHERE `Entry` = 12876; -- Baron Aquanis
UPDATE `creature_template` SET `MaxMeleeDmg` = 41 WHERE `Entry` = 12896; -- Silverwing Sentinel
UPDATE `creature_template` SET `MaxMeleeDmg` = 39 WHERE `Entry` = 12897; -- Silverwing Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 515 WHERE `Entry` = 12899; -- Axtroz
UPDATE `creature_template` SET `MaxMeleeDmg` = 166 WHERE `Entry` = 12902; -- Lorgus Jett
UPDATE `creature_template` SET `MaxMeleeDmg` = 75 WHERE `Entry` = 12918; -- Chief Murgut
UPDATE `creature_template` SET `MaxMeleeDmg` = 61 WHERE `Entry` = 12940; -- Vorsha the Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 43 WHERE `Entry` = 13019; -- Burning Blade Seer
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 13020; -- Vaelastrasz the Corrupt
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 13021; -- Warpwood Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 86 WHERE `Entry` = 13022; -- Whip Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 370 WHERE `Entry` = 13036; -- Gordok Mastiff
UPDATE `creature_template` SET `MaxMeleeDmg` = 421 WHERE `Entry` = 13118; -- Crimson Bodyguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 193 WHERE `Entry` = 13136; -- Hive\'Ashi Drone
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13141; -- Deeprot Stomper
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13142; -- Deeprot Tangler
UPDATE `creature_template` SET `MaxMeleeDmg` = 21 WHERE `Entry` = 13159; -- James Clark
UPDATE `creature_template` SET `MaxMeleeDmg` = 116 WHERE `Entry` = 13160; -- Carrion Swarmer
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 13196; -- Phase Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 13197; -- Fel Lash
UPDATE `creature_template` SET `MaxMeleeDmg` = 119 WHERE `Entry` = 13276; -- Wildspawn Imp
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 13280; -- Hydrospawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 356 WHERE `Entry` = 13282; -- Noxxion
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 13285; -- Death Lash
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 13301; -- Hive\'Ashi Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 13323; -- Subterranean Diemetradon
UPDATE `creature_template` SET `MaxMeleeDmg` = 153 WHERE `Entry` = 13456; -- Noxxion\'s Spawn
UPDATE `creature_template` SET `MaxMeleeDmg` = 260 WHERE `Entry` = 13533; -- Spewed Larva
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 13596; -- Rotgrip
UPDATE `creature_template` SET `MaxMeleeDmg` = 96 WHERE `Entry` = 13599; -- Stolid Snapjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 377 WHERE `Entry` = 13601; -- Tinkerer Gizlock
UPDATE `creature_template` SET `MaxMeleeDmg` = 213 WHERE `Entry` = 13602; -- The Abominable Greench
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 13696; -- Noxxious Scion
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13718; -- The Nameless Prophet
UPDATE `creature_template` SET `MaxMeleeDmg` = 120 WHERE `Entry` = 13736; -- Noxxious Essence
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13738; -- Veng
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 13739; -- Maraudos
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13740; -- Magra
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 13741; -- Gelk
UPDATE `creature_template` SET `MaxMeleeDmg` = 79 WHERE `Entry` = 13743; -- Corrupt Force of Nature
UPDATE `creature_template` SET `MaxMeleeDmg` = 70 WHERE `Entry` = 13836; -- Burning Blade Nightmare
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 13896; -- Scalebeard
UPDATE `creature_template` SET `MaxMeleeDmg` = 138 WHERE `Entry` = 13996; -- Blackwing Technician
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 14020; -- Chromaggus
UPDATE `creature_template` SET `MaxMeleeDmg` = 391 WHERE `Entry` = 14023; -- Corrupted Green Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 391 WHERE `Entry` = 14024; -- Corrupted Blue Whelp
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 14101; -- Enraged Felguard
UPDATE `creature_template` SET `MaxMeleeDmg` = 83 WHERE `Entry` = 14123; -- Steeljaw Snapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 14221; -- Gravis Slipknot
UPDATE `creature_template` SET `MaxMeleeDmg` = 197 WHERE `Entry` = 14223; -- Cranky Benj
UPDATE `creature_template` SET `MaxMeleeDmg` = 283 WHERE `Entry` = 14224; -- 7:XT
UPDATE `creature_template` SET `MaxMeleeDmg` = 203 WHERE `Entry` = 14225; -- Prince Kellen
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 14227; -- Hissperak
UPDATE `creature_template` SET `MaxMeleeDmg` = 247 WHERE `Entry` = 14230; -- Burgle Eye
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 14231; -- Drogoth the Roamer
UPDATE `creature_template` SET `MaxMeleeDmg` = 247 WHERE `Entry` = 14232; -- Dart
UPDATE `creature_template` SET `MaxMeleeDmg` = 254 WHERE `Entry` = 14233; -- Ripscale
UPDATE `creature_template` SET `MaxMeleeDmg` = 291 WHERE `Entry` = 14235; -- The Rot
UPDATE `creature_template` SET `MaxMeleeDmg` = 331 WHERE `Entry` = 14236; -- Lord Angler
UPDATE `creature_template` SET `MaxMeleeDmg` = 283 WHERE `Entry` = 14237; -- Oozeworm
UPDATE `creature_template` SET `MaxMeleeDmg` = 432 WHERE `Entry` = 14241; -- Ironbark the Redeemed
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 14261; -- Blue Drakonid
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 14262; -- Green Drakonid
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 14264; -- Red Drakonid
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 14265; -- Black Drakonid
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 14267; -- Emogg the Crusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 29 WHERE `Entry` = 14268; -- Lord Condar
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 14269; -- Seeker Aqualon
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 14270; -- Squiddic
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 14271; -- Ribchaser
UPDATE `creature_template` SET `MaxMeleeDmg` = 124 WHERE `Entry` = 14272; -- Snarlflare
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 14273; -- Boulderheart
UPDATE `creature_template` SET `MaxMeleeDmg` = 181 WHERE `Entry` = 14276; -- Scargil
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 14277; -- Lady Zephris
UPDATE `creature_template` SET `MaxMeleeDmg` = 164 WHERE `Entry` = 14278; -- Ro\'Bark
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 14279; -- Creepthess
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 14280; -- Big Samras
UPDATE `creature_template` SET `MaxMeleeDmg` = 137 WHERE `Entry` = 14281; -- Jimmy the Bleeder
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 14302; -- Chromatic Drakonid
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 14303; -- Petrified Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 14308; -- Ferra
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14321; -- Guard Fengus
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14322; -- Stomper Kreeg
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14323; -- Guard Slip\'kik
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 14324; -- Cho\'Rush the Observer
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 14325; -- Captain Kromcrush
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14326; -- Guard Mol\'dar
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14327; -- Lethtendris
UPDATE `creature_template` SET `MaxMeleeDmg` = 349 WHERE `Entry` = 14339; -- Death Howl
UPDATE `creature_template` SET `MaxMeleeDmg` = 425 WHERE `Entry` = 14340; -- Alshirr Banebreath
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 14342; -- Ragepaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 339 WHERE `Entry` = 14344; -- Mongress
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14349; -- Pimgib
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14351; -- Gordok Bushwacker
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 14353; -- Mizzle the Crafty
UPDATE `creature_template` SET `MaxMeleeDmg` = 534 WHERE `Entry` = 14354; -- Pusillin
UPDATE `creature_template` SET `MaxMeleeDmg` = 31 WHERE `Entry` = 14356; -- Sawfin Frenzy
UPDATE `creature_template` SET `MaxMeleeDmg` = 174 WHERE `Entry` = 14372; -- Winterfall Ambusher
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 14388; -- Rogue Black Drake
UPDATE `creature_template` SET `MaxMeleeDmg` = 11 WHERE `Entry` = 14397; -- Mana Burst
UPDATE `creature_template` SET `MaxMeleeDmg` = 467 WHERE `Entry` = 14398; -- Eldreth Darter
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 14399; -- Arcane Torrent
UPDATE `creature_template` SET `MaxMeleeDmg` = 284 WHERE `Entry` = 14400; -- Arcane Feedback
UPDATE `creature_template` SET `MaxMeleeDmg` = 720 WHERE `Entry` = 14401; -- Master Elemental Shaper Krixix
UPDATE `creature_template` SET `MaxMeleeDmg` = 52 WHERE `Entry` = 14424; -- Mirelow
UPDATE `creature_template` SET `MaxMeleeDmg` = 47 WHERE `Entry` = 14425; -- Gnawbone
UPDATE `creature_template` SET `MaxMeleeDmg` = 55 WHERE `Entry` = 14426; -- Harb Foulmountain
UPDATE `creature_template` SET `MaxMeleeDmg` = 48 WHERE `Entry` = 14427; -- Gibblesnik
UPDATE `creature_template` SET `MaxMeleeDmg` = 91 WHERE `Entry` = 14429; -- Grimmaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 13 WHERE `Entry` = 14431; -- Fury Shelda
UPDATE `creature_template` SET `MaxMeleeDmg` = 53 WHERE `Entry` = 14433; -- Sludginn
UPDATE `creature_template` SET `MaxMeleeDmg` = 346 WHERE `Entry` = 14445; -- Lord Captain Wyrmak
UPDATE `creature_template` SET `MaxMeleeDmg` = 310 WHERE `Entry` = 14446; -- Fingat
UPDATE `creature_template` SET `MaxMeleeDmg` = 291 WHERE `Entry` = 14447; -- Gilmorian
UPDATE `creature_template` SET `MaxMeleeDmg` = 291 WHERE `Entry` = 14448; -- Molt Thorn
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 14456; -- Blackwing Guardsman
UPDATE `creature_template` SET `MaxMeleeDmg` = 669 WHERE `Entry` = 14471; -- Setis
UPDATE `creature_template` SET `MaxMeleeDmg` = 434 WHERE `Entry` = 14472; -- Gretheer
UPDATE `creature_template` SET `MaxMeleeDmg` = 783 WHERE `Entry` = 14473; -- Lapress
UPDATE `creature_template` SET `MaxMeleeDmg` = 510 WHERE `Entry` = 14474; -- Zora
UPDATE `creature_template` SET `MaxMeleeDmg` = 456 WHERE `Entry` = 14475; -- Rex Ashil
UPDATE `creature_template` SET `MaxMeleeDmg` = 447 WHERE `Entry` = 14477; -- Grubthor
UPDATE `creature_template` SET `MaxMeleeDmg` = 459 WHERE `Entry` = 14478; -- Huricanian
UPDATE `creature_template` SET `MaxMeleeDmg` = 705 WHERE `Entry` = 14479; -- Twilight Lord Everun
UPDATE `creature_template` SET `MaxMeleeDmg` = 78 WHERE `Entry` = 14482; -- Xorothian Imp
UPDATE `creature_template` SET `MaxMeleeDmg` = 81 WHERE `Entry` = 14486; -- Scourge Footsoldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 237 WHERE `Entry` = 14487; -- Gluggle
UPDATE `creature_template` SET `MaxMeleeDmg` = 247 WHERE `Entry` = 14488; -- Roloch
UPDATE `creature_template` SET `MaxMeleeDmg` = 438 WHERE `Entry` = 14489; -- Scourge Archer
UPDATE `creature_template` SET `MaxMeleeDmg` = 302 WHERE `Entry` = 14490; -- Rippa
UPDATE `creature_template` SET `MaxMeleeDmg` = 283 WHERE `Entry` = 14492; -- Verifonix
UPDATE `creature_template` SET `MaxMeleeDmg` = 743 WHERE `Entry` = 14502; -- Xorothian Dreadsteed
UPDATE `creature_template` SET `MaxMeleeDmg` = 341 WHERE `Entry` = 14503; -- The Cleaner
UPDATE `creature_template` SET `MaxMeleeDmg` = 772 WHERE `Entry` = 14506; -- Lord Hel\'nurath
UPDATE `creature_template` SET `MaxMeleeDmg` = 2160 WHERE `Entry` = 14507; -- High Priest Venoxis
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 14509; -- High Priest Thekal
UPDATE `creature_template` SET `MaxMeleeDmg` = 2160 WHERE `Entry` = 14510; -- High Priestess Mar\'li
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 14511; -- Shadowed Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 14512; -- Corrupted Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 14513; -- Malicious Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 284 WHERE `Entry` = 14514; -- Banal Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 2287 WHERE `Entry` = 14515; -- High Priestess Arlokk
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14516; -- Death Knight Darkreaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14518; -- Aspect of Banality
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14519; -- Aspect of Corruption
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14520; -- Aspect of Malice
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14521; -- Aspect of Shadow
UPDATE `creature_template` SET `MaxMeleeDmg` = 113 WHERE `Entry` = 14523; -- Ulathek
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 14530; -- Solenor the Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 14531; -- Artorius the Amiable
UPDATE `creature_template` SET `MaxMeleeDmg` = 473 WHERE `Entry` = 14532; -- Razzashi Venombrood
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 14533; -- Simone the Seductress
UPDATE `creature_template` SET `MaxMeleeDmg` = 666 WHERE `Entry` = 14535; -- Artorius the Doombringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 14538; -- Precious the Devourer
UPDATE `creature_template` SET `MaxMeleeDmg` = 252 WHERE `Entry` = 14564; -- Terrordale Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 253 WHERE `Entry` = 14601; -- Ebonroc
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 14605; -- Bone Construct
UPDATE `creature_template` SET `MaxMeleeDmg` = 334 WHERE `Entry` = 14621; -- Overseer Maltorius
UPDATE `creature_template` SET `MaxMeleeDmg` = 40 WHERE `Entry` = 14682; -- Sever
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 14684; -- Balzaphon
UPDATE `creature_template` SET `MaxMeleeDmg` = 68 WHERE `Entry` = 14686; -- Lady Falther\'ess
UPDATE `creature_template` SET `MaxMeleeDmg` = 138 WHERE `Entry` = 14690; -- Revanchion
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 14695; -- Lord Blackwood
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 14715; -- Silverwing Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 144 WHERE `Entry` = 14748; -- Vilebranch Kidnapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14750; -- Gurubashi Bat Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 400 WHERE `Entry` = 14781; -- Captain Shatterskull
UPDATE `creature_template` SET `MaxMeleeDmg` = 758 WHERE `Entry` = 14821; -- Razzashi Raptor
UPDATE `creature_template` SET `MaxMeleeDmg` = 703 WHERE `Entry` = 14825; -- Withered Mistress
UPDATE `creature_template` SET `MaxMeleeDmg` = 6165 WHERE `Entry` = 14834; -- Hakkar
UPDATE `creature_template` SET `MaxMeleeDmg` = 502 WHERE `Entry` = 14861; -- Blood Steward of Kirtonos
UPDATE `creature_template` SET `MaxMeleeDmg` = 1860 WHERE `Entry` = 14862; -- Emissary Roman\'khan
UPDATE `creature_template` SET `MaxMeleeDmg` = 249 WHERE `Entry` = 14880; -- Razzashi Skitterer
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14882; -- Atal\'ai Mistress
UPDATE `creature_template` SET `MaxMeleeDmg` = 737 WHERE `Entry` = 14883; -- Voodoo Slave
UPDATE `creature_template` SET `MaxMeleeDmg` = 3892 WHERE `Entry` = 14888; -- Lethon
UPDATE `creature_template` SET `MaxMeleeDmg` = 138 WHERE `Entry` = 14986; -- Shade of Jin\'do
UPDATE `creature_template` SET `MaxMeleeDmg` = 2351 WHERE `Entry` = 14988; -- Ohgan
UPDATE `creature_template` SET `MaxMeleeDmg` = 10 WHERE `Entry` = 15009; -- Voodoo Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 264 WHERE `Entry` = 15041; -- Spawn of Mar\'li
UPDATE `creature_template` SET `MaxMeleeDmg` = 520 WHERE `Entry` = 15043; -- Zulian Crocolisk
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 15067; -- Zulian Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 15068; -- Zulian Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 15080; -- Servant of the Hand
UPDATE `creature_template` SET `MaxMeleeDmg` = 2139 WHERE `Entry` = 15082; -- Gri\'lek
UPDATE `creature_template` SET `MaxMeleeDmg` = 1739 WHERE `Entry` = 15083; -- Hazza\'rah
UPDATE `creature_template` SET `MaxMeleeDmg` = 1383 WHERE `Entry` = 15084; -- Renataki
UPDATE `creature_template` SET `MaxMeleeDmg` = 2867 WHERE `Entry` = 15085; -- Wushoolay
UPDATE `creature_template` SET `MaxMeleeDmg` = 341 WHERE `Entry` = 15088; -- Booty Bay Elite
UPDATE `creature_template` SET `MaxMeleeDmg` = 264 WHERE `Entry` = 15101; -- Zulian Prowler
UPDATE `creature_template` SET `MaxMeleeDmg` = 2022 WHERE `Entry` = 15114; -- Gahz\'ranka
UPDATE `creature_template` SET `MaxMeleeDmg` = 284 WHERE `Entry` = 15117; -- Chained Spirit
UPDATE `creature_template` SET `MaxMeleeDmg` = 681 WHERE `Entry` = 15146; -- Mad Voidwalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 593 WHERE `Entry` = 15162; -- Scarlet Inquisitor
UPDATE `creature_template` SET `MaxMeleeDmg` = 284 WHERE `Entry` = 15163; -- Nightmare Illusion
UPDATE `creature_template` SET `MaxMeleeDmg` = 134 WHERE `Entry` = 15172; -- Glibb
UPDATE `creature_template` SET `MaxMeleeDmg` = 408 WHERE `Entry` = 15196; -- Deathclasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 15200; -- Twilight Keeper Mayna
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 15201; -- Twilight Flamereaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 123 WHERE `Entry` = 15202; -- Vyral the Vile
UPDATE `creature_template` SET `MaxMeleeDmg` = 2109 WHERE `Entry` = 15203; -- Prince Skaldrenox
UPDATE `creature_template` SET `MaxMeleeDmg` = 1709 WHERE `Entry` = 15204; -- High Marshal Whirlaxis
UPDATE `creature_template` SET `MaxMeleeDmg` = 2029 WHERE `Entry` = 15205; -- Baron Kazum
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 15207; -- The Duke of Fathoms
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 15208; -- The Duke of Shards
UPDATE `creature_template` SET `MaxMeleeDmg` = 122 WHERE `Entry` = 15213; -- Twilight Overlord
UPDATE `creature_template` SET `MaxMeleeDmg` = 381 WHERE `Entry` = 15220; -- The Duke of Zephyrs
UPDATE `creature_template` SET `MaxMeleeDmg` = 384 WHERE `Entry` = 15229; -- Vekniss Soldier
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15230; -- Vekniss Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15233; -- Vekniss Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15235; -- Vekniss Stinger
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15236; -- Vekniss Wasp
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15240; -- Vekniss Hive Crawler
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15246; -- Qiraji Mindslayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15247; -- Qiraji Brainwasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15249; -- Qiraji Lasher
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15250; -- Qiraji Slayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 725 WHERE `Entry` = 15252; -- Qiraji Champion
UPDATE `creature_template` SET `MaxMeleeDmg` = 2548 WHERE `Entry` = 15263; -- The Prophet Skeram
UPDATE `creature_template` SET `MaxMeleeDmg` = 906 WHERE `Entry` = 15264; -- Anubisath Sentinel
UPDATE `creature_template` SET `MaxMeleeDmg` = 4111 WHERE `Entry` = 15275; -- Emperor Vek\'nilash
UPDATE `creature_template` SET `MaxMeleeDmg` = 3822 WHERE `Entry` = 15276; -- Emperor Vek\'lor
UPDATE `creature_template` SET `MaxMeleeDmg` = 710 WHERE `Entry` = 15277; -- Anubisath Defender
UPDATE `creature_template` SET `MaxMeleeDmg` = 579 WHERE `Entry` = 15286; -- Xil\'xix
UPDATE `creature_template` SET `MaxMeleeDmg` = 579 WHERE `Entry` = 15288; -- Aluntir
UPDATE `creature_template` SET `MaxMeleeDmg` = 579 WHERE `Entry` = 15290; -- Arakis
UPDATE `creature_template` SET `MaxMeleeDmg` = 121 WHERE `Entry` = 15293; -- Aendel Windspear
UPDATE `creature_template` SET `MaxMeleeDmg` = 2936 WHERE `Entry` = 15299; -- Viscidus
UPDATE `creature_template` SET `MaxMeleeDmg` = 260 WHERE `Entry` = 15300; -- Vekniss Drone
UPDATE `creature_template` SET `MaxMeleeDmg` = 2029 WHERE `Entry` = 15305; -- Lord Skwol
UPDATE `creature_template` SET `MaxMeleeDmg` = 325 WHERE `Entry` = 15308; -- Twilight Prophet
UPDATE `creature_template` SET `MaxMeleeDmg` = 675 WHERE `Entry` = 15311; -- Anubisath Warder
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 15316; -- Qiraji Scarab
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 15317; -- Qiraji Scorpion
UPDATE `creature_template` SET `MaxMeleeDmg` = 3822 WHERE `Entry` = 15380; -- Arygos
UPDATE `creature_template` SET `MaxMeleeDmg` = 492 WHERE `Entry` = 15424; -- Anubisath Conqueror
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 15449; -- Hive\'Zora Abomination
UPDATE `creature_template` SET `MaxMeleeDmg` = 1780 WHERE `Entry` = 15491; -- Eranikus WHERE `Entry` = Tyrant of the Dream
UPDATE `creature_template` SET `MaxMeleeDmg` = 3426 WHERE `Entry` = 15509; -- Princess Huhuran
UPDATE `creature_template` SET `MaxMeleeDmg` = 2742 WHERE `Entry` = 15510; -- Fankriss the Unyielding
UPDATE `creature_template` SET `MaxMeleeDmg` = 4283 WHERE `Entry` = 15511; -- Lord Kri
UPDATE `creature_template` SET `MaxMeleeDmg` = 2468 WHERE `Entry` = 15516; -- Battleguard Sartura
UPDATE `creature_template` SET `MaxMeleeDmg` = 6476 WHERE `Entry` = 15517; -- Ouro
UPDATE `creature_template` SET `MaxMeleeDmg` = 1504 WHERE `Entry` = 15527; -- Mana Fiend
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 15535; -- Chief Sharpclaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 241 WHERE `Entry` = 15541; -- Twilight Marauder Morna
UPDATE `creature_template` SET `MaxMeleeDmg` = 126 WHERE `Entry` = 15542; -- Twilight Marauder
UPDATE `creature_template` SET `MaxMeleeDmg` = 2742 WHERE `Entry` = 15543; -- Princess Yauj
UPDATE `creature_template` SET `MaxMeleeDmg` = 3083 WHERE `Entry` = 15544; -- Vem
UPDATE `creature_template` SET `MaxMeleeDmg` = 492 WHERE `Entry` = 15554; -- Number Two
UPDATE `creature_template` SET `MaxMeleeDmg` = 4111 WHERE `Entry` = 15571; -- Maws
UPDATE `creature_template` SET `MaxMeleeDmg` = 791 WHERE `Entry` = 15591; -- Minion of Weavil
UPDATE `creature_template` SET `MaxMeleeDmg` = 1504 WHERE `Entry` = 15620; -- Hive\'Regal Hunter-Killer
UPDATE `creature_template` SET `MaxMeleeDmg` = 499 WHERE `Entry` = 15623; -- Xandivious
UPDATE `creature_template` SET `MaxMeleeDmg` = 499 WHERE `Entry` = 15629; -- Nightmare Phantasm
UPDATE `creature_template` SET `MaxMeleeDmg` = 1505 WHERE `Entry` = 15630; -- Spawn of Fankriss
UPDATE `creature_template` SET `MaxMeleeDmg` = 95 WHERE `Entry` = 15685; -- Southsea Kidnapper
UPDATE `creature_template` SET `MaxMeleeDmg` = 143 WHERE `Entry` = 15720; -- Timbermaw Ancestor
UPDATE `creature_template` SET `MaxMeleeDmg` = 138 WHERE `Entry` = 15727; -- C\'Thun
UPDATE `creature_template` SET `MaxMeleeDmg` = 2100 WHERE `Entry` = 15740; -- Colossus of Zora
UPDATE `creature_template` SET `MaxMeleeDmg` = 2100 WHERE `Entry` = 15741; -- Colossus of Regal
UPDATE `creature_template` SET `MaxMeleeDmg` = 2100 WHERE `Entry` = 15742; -- Colossus of Ashi
UPDATE `creature_template` SET `MaxMeleeDmg` = 614 WHERE `Entry` = 15743; -- Colossal Anubisath Warbringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 15 WHERE `Entry` = 15751; -- Anubisath Warbringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 549 WHERE `Entry` = 15752; -- Silithid Flayer
UPDATE `creature_template` SET `MaxMeleeDmg` = 466 WHERE `Entry` = 15754; -- Greater Anubisath Warbringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 127 WHERE `Entry` = 15775; -- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `MaxMeleeDmg` = 138 WHERE `Entry` = 15863; -- Darkspear Shaman
UPDATE `creature_template` SET `MaxMeleeDmg` = 7709 WHERE `Entry` = 15929; -- Stalagg
UPDATE `creature_template` SET `MaxMeleeDmg` = 7709 WHERE `Entry` = 15930; -- Feugen
UPDATE `creature_template` SET `MaxMeleeDmg` = 5482 WHERE `Entry` = 15931; -- Grobbulus
UPDATE `creature_template` SET `MaxMeleeDmg` = 4933 WHERE `Entry` = 15932; -- Gluth
UPDATE `creature_template` SET `MaxMeleeDmg` = 6853 WHERE `Entry` = 15936; -- Heigan the Unclean
UPDATE `creature_template` SET `MaxMeleeDmg` = 6853 WHERE `Entry` = 15952; -- Maexxna
UPDATE `creature_template` SET `MaxMeleeDmg` = 6853 WHERE `Entry` = 15953; -- Grand Widow Faerlina
UPDATE `creature_template` SET `MaxMeleeDmg` = 6853 WHERE `Entry` = 15954; -- Noth the Plaguebringer
UPDATE `creature_template` SET `MaxMeleeDmg` = 4796 WHERE `Entry` = 15956; -- Anub\'Rekhan
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 15974; -- Dread Creeper
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 15975; -- Carrion Spinner
UPDATE `creature_template` SET `MaxMeleeDmg` = 3680 WHERE `Entry` = 15976; -- Venom Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 3665 WHERE `Entry` = 15978; -- Crypt Reaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 1730 WHERE `Entry` = 15980; -- Naxxramas Cultist
UPDATE `creature_template` SET `MaxMeleeDmg` = 1730 WHERE `Entry` = 15981; -- Naxxramas Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 510 WHERE `Entry` = 15984; -- Sartura\'s Royal Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 8636 WHERE `Entry` = 15989; -- Sapphiron
UPDATE `creature_template` SET `MaxMeleeDmg` = 6853 WHERE `Entry` = 16011; -- Loatheb
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 16017; -- Patchwork Golem
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 16018; -- Bile Retcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16020; -- Mad Scientist
UPDATE `creature_template` SET `MaxMeleeDmg` = 2705 WHERE `Entry` = 16021; -- Living Monstrosity
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16022; -- Surgical Assistant
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16024; -- Embalming Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16025; -- Stitched Spewer
UPDATE `creature_template` SET `MaxMeleeDmg` = 604 WHERE `Entry` = 16027; -- Living Poison
UPDATE `creature_template` SET `MaxMeleeDmg` = 8618 WHERE `Entry` = 16028; -- Patchwerk
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16029; -- Sludge Belcher
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16034; -- Plague Beast
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16036; -- Frenzied Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16037; -- Plagued Bat
UPDATE `creature_template` SET `MaxMeleeDmg` = 1739 WHERE `Entry` = 16042; -- Lord Valthalak
UPDATE `creature_template` SET `MaxMeleeDmg` = 179 WHERE `Entry` = 16043; -- Magma Lord Bokk
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16050; -- Rotfang
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16051; -- Snokh Blackspine
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16052; -- Malgen Longspear
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16054; -- Rezznik
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16055; -- Va\'jashni
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16056; -- Diseased Maggot
UPDATE `creature_template` SET `MaxMeleeDmg` = 1622 WHERE `Entry` = 16057; -- Rotting Maggot
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16058; -- Volida
UPDATE `creature_template` SET `MaxMeleeDmg` = 541 WHERE `Entry` = 16059; -- Theldren
UPDATE `creature_template` SET `MaxMeleeDmg` = 3504 WHERE `Entry` = 16060; -- Gothik the Harvester
UPDATE `creature_template` SET `MaxMeleeDmg` = 21586 WHERE `Entry` = 16061; -- Instructor Razuvious
UPDATE `creature_template` SET `MaxMeleeDmg` = 3289 WHERE `Entry` = 16062; -- Highlord Mograine
UPDATE `creature_template` SET `MaxMeleeDmg` = 4796 WHERE `Entry` = 16063; -- Sir Zeliek
UPDATE `creature_template` SET `MaxMeleeDmg` = 4796 WHERE `Entry` = 16065; -- Lady Blaumeux
UPDATE `creature_template` SET `MaxMeleeDmg` = 155 WHERE `Entry` = 16066; -- Spectral Assassin
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16067; -- Deathcharger Steed
UPDATE `creature_template` SET `MaxMeleeDmg` = 554 WHERE `Entry` = 16080; -- Mor Grayhoof
UPDATE `creature_template` SET `MaxMeleeDmg` = 235 WHERE `Entry` = 16095; -- Gnashjaw
UPDATE `creature_template` SET `MaxMeleeDmg` = 390 WHERE `Entry` = 16097; -- Isalien
UPDATE `creature_template` SET `MaxMeleeDmg` = 484 WHERE `Entry` = 16098; -- Empyrean
UPDATE `creature_template` SET `MaxMeleeDmg` = 888 WHERE `Entry` = 16101; -- Jarien
UPDATE `creature_template` SET `MaxMeleeDmg` = 888 WHERE `Entry` = 16102; -- Sothos
UPDATE `creature_template` SET `MaxMeleeDmg` = 200 WHERE `Entry` = 16103; -- Spirit of Jarien
UPDATE `creature_template` SET `MaxMeleeDmg` = 221 WHERE `Entry` = 16104; -- Spirit of Sothos
UPDATE `creature_template` SET `MaxMeleeDmg` = 131 WHERE `Entry` = 16117; -- Plagued Swine
UPDATE `creature_template` SET `MaxMeleeDmg` = 194 WHERE `Entry` = 16119; -- Bone Minion
UPDATE `creature_template` SET `MaxMeleeDmg` = 3169 WHERE `Entry` = 16125; -- Unrelenting Deathknight
UPDATE `creature_template` SET `MaxMeleeDmg` = 2756 WHERE `Entry` = 16126; -- Unrelenting Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16127; -- Spectral Trainee
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 16141; -- Ghoul Berserker
UPDATE `creature_template` SET `MaxMeleeDmg` = 0 WHERE `Entry` = 16143; -- Shadow of Doom
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16145; -- Deathknight Captain
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16146; -- Deathknight
UPDATE `creature_template` SET `MaxMeleeDmg` = 3232 WHERE `Entry` = 16148; -- Spectral Deathknight
UPDATE `creature_template` SET `MaxMeleeDmg` = 2742 WHERE `Entry` = 16150; -- Spectral Rider
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16154; -- Risen Deathknight
UPDATE `creature_template` SET `MaxMeleeDmg` = 1854 WHERE `Entry` = 16157; -- Doom Touched Warrior
UPDATE `creature_template` SET `MaxMeleeDmg` = 1755 WHERE `Entry` = 16163; -- Deathknight Cavalier
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16165; -- Necro Knight
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16167; -- Bony Construct
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16168; -- Stoneskin Gargoyle
UPDATE `creature_template` SET `MaxMeleeDmg` = 506 WHERE `Entry` = 16184; -- Nerubian Overseer
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16193; -- Skeletal Smith
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16194; -- Unholy Axe
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16215; -- Unholy Staff
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16216; -- Unholy Swords
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16243; -- Plague Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16244; -- Infectious Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 230 WHERE `Entry` = 16284; -- Argent Medic
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16290; -- Fallout Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16297; -- Mutated Grub
UPDATE `creature_template` SET `MaxMeleeDmg` = 130 WHERE `Entry` = 16299; -- Skeletal Shocktrooper
UPDATE `creature_template` SET `MaxMeleeDmg` = 352 WHERE `Entry` = 16359; -- Argent Messenger
UPDATE `creature_template` SET `MaxMeleeDmg` = 1238 WHERE `Entry` = 16368; -- Necropolis Acolyte
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16375; -- Sewage Slime
UPDATE `creature_template` SET `MaxMeleeDmg` = 198 WHERE `Entry` = 16379; -- Spirit of the Damned
UPDATE `creature_template` SET `MaxMeleeDmg` = 198 WHERE `Entry` = 16380; -- Bone Witch
UPDATE `creature_template` SET `MaxMeleeDmg` = 831 WHERE `Entry` = 16387; -- Atiesh
UPDATE `creature_template` SET `MaxMeleeDmg` = 88 WHERE `Entry` = 16399; -- Bloodsail Traitor
UPDATE `creature_template` SET `MaxMeleeDmg` = 12 WHERE `Entry` = 16423; -- Spectral Apparition
UPDATE `creature_template` SET `MaxMeleeDmg` = 1150 WHERE `Entry` = 16427; -- Soldier of the Frozen Wastes
UPDATE `creature_template` SET `MaxMeleeDmg` = 241 WHERE `Entry` = 16429; -- Soul Weaver
UPDATE `creature_template` SET `MaxMeleeDmg` = 17 WHERE `Entry` = 16438; -- Skeletal Trooper
UPDATE `creature_template` SET `MaxMeleeDmg` = 5054 WHERE `Entry` = 16441; -- Guardian of Icecrown
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16446; -- Plagued Gargoyle
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16447; -- Plagued Ghoul
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16448; -- Plagued Deathhound
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16449; -- Spirit of Naxxramas
UPDATE `creature_template` SET `MaxMeleeDmg` = 2005 WHERE `Entry` = 16451; -- Deathknight Vindicator
UPDATE `creature_template` SET `MaxMeleeDmg` = 1659 WHERE `Entry` = 16452; -- Necro Knight Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16453; -- Necro Stalker
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16505; -- Naxxramas Follower
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16506; -- Naxxramas Worshipper
UPDATE `creature_template` SET `MaxMeleeDmg` = 1840 WHERE `Entry` = 16573; -- Crypt Guard
UPDATE `creature_template` SET `MaxMeleeDmg` = 2815 WHERE `Entry` = 16803; -- Deathknight Understudy
UPDATE `creature_template` SET `MaxMeleeDmg` = 2382 WHERE `Entry` = 16981; -- Plagued Guardian
UPDATE `creature_template` SET `MaxMeleeDmg` = 194 WHERE `Entry` = 17055; -- Maexxna Spiderling
