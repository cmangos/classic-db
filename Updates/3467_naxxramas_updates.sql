-- -----------------------
-- Missing auras
-- -----------------------

-- Add missing poison proc aura
UPDATE creature_template_addon SET auras='28429' WHERE entry=15977; -- Infectious Skitterer

-- Add missing invisibility and stealth detection aura
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16124, 0, 0, 0, 0, 0, 0, '18950');	-- Unrelenting Trainee

-- Update aura : use Shroud of Death instead of Ghost Visual
UPDATE creature_template_addon SET auras='10848' WHERE entry=16148; -- Spectral Deathknight
UPDATE creature_template_addon SET auras='10848 27987' WHERE entry=16150; -- Spectral Rider

-- Add missing Pacify aura
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16363, 0, 0, 0, 0, 0, 0, '19951');	-- Grobbulus Cloud

-- Add missing Disease Cloud aura
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(16375, 0, 0, 0, 0, 0, 0, '28156');	-- Sewage Slime

-- Add missing invisibility and stealth detection aura
UPDATE creature_template_addon SET auras='18950' WHERE entry=16446; -- Plagued Gargoyle

-- Add missing invisibility and stealth detection aura
UPDATE creature_template_addon SET auras='18950' WHERE entry=16448; -- Plagued Deathhound 

-- Add missing invisibility and stealth detection aura
UPDATE creature_template_addon SET auras='18950' WHERE entry=16449; -- Spirit of Naxxramas

-- Add missing double attack aura
UPDATE creature_template_addon SET auras='18943' WHERE entry=16453; -- Necro Stalker

-- -----------------------
-- Stats updates
-- -----------------------

UPDATE creature_template SET UnitFlags=64, Detection=40 WHERE Entry=15932; -- Gluth (with old detection value of 70, he will aggro before players even jump down from the pipe leading into the room...)

UPDATE creature_template SET UnitFlags=64 WHERE Entry IN (
15931, -- Grobbulus
16017, -- Patchwork Golem
16018, -- Bile Retcher
16020, -- Mad Scientist
16021, -- Living Monstrosity
16022, -- Surgical Assistant
16024, -- Embalming Slime
16025, -- Stitched Spewer
16028, -- Patchwerk
16029, -- Sludge Belcher
15989, -- Sapphiron
15956, -- Anub'Rekhan
16067, -- Skeletal Steed
15953, -- Grand Widow Faerlina
15954  -- Noth the Plaguebringer
);

UPDATE creature_template SET Faction=16, UnitFlags=64, DamageMultiplier=28, MinMeleeDmg=94, MaxMeleeDmg=124, MinRangedDmg=64, MaxRangedDmg=95, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=1800, RangedBaseAttackTime=1800 WHERE entry=16375; -- Sewage Slime
UPDATE creature_template SET Faction=114 WHERE Entry=16400; -- Toxic Tunnel
UPDATE creature_template SET UnitFlags=33554944, SpeedWalk=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=17231; -- Garden Gas
UPDATE creature_template SET MinMeleeDmg=97, MaxMeleeDmg=128, MinRangedDmg=66, MaxRangedDmg=98, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16381; -- Archmage Tarsis Kir-Moldir
UPDATE creature_template SET UnitFlags=0 WHERE Entry=16154; -- Risen Deathknight
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, DamageMultiplier=26, MinMeleeDmg=185, MaxMeleeDmg=246, MinRangedDmg=128, MaxRangedDmg=188, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=3500, RangedBaseAttackTime=3500 WHERE entry=16145; -- Deathknight Captain
UPDATE creature_template SET UnitFlags=64, RangedBaseAttackTime=1000, Faction=312 WHERE Entry=15977; -- Infectious Skitterer
UPDATE creature_template SET UnitFlags=0, SpeedWalk=0.777776 WHERE Entry=16244; -- Infectious Ghoul
UPDATE creature_template SET UnitFlags=0, Faction=14 WHERE Entry=16243; -- Plague Slime
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1 WHERE Entry=16146; -- Deathknight

UPDATE creature_template SET UnitFlags=64, Faction=312 WHERE Entry IN (
15974, -- Dread Creeper
15975, -- Carrion Spinner
15976, -- Venom Stalker
16573, -- Crypt Guard
15979  -- Tomb Horror
);

UPDATE creature_template SET UnitFlags=0, DamageMultiplier=17, MinMeleeDmg=113, MaxMeleeDmg=157, MinRangedDmg=93, MaxRangedDmg=137, MeleeAttackPower=115, RangedAttackPower=25, MeleeBaseAttackTime=3000, RangedBaseAttackTime=3000 WHERE entry=16165; -- Necro Knight
UPDATE creature_template SET UnitFlags=0, SpeedWalk=1, DamageMultiplier=18, MinMeleeDmg=88, MaxMeleeDmg=117, MinRangedDmg=61, MaxRangedDmg=90, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=1667, RangedBaseAttackTime=1667 WHERE Entry=16156; -- Dark Touched Warrior
UPDATE creature_template SET UnitFlags=0, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=16164; -- Shade of Naxxramas
UPDATE creature_template SET UnitFlags=64, Faction=233 WHERE Entry=16168; -- Stoneskin Gargoyle
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1 WHERE Entry=16193; -- Skeletal Smith
UPDATE creature_template SET UnitFlags=0, SpeedWalk=1, SpeedRun=1.42857, DamageMultiplier=18, MinMeleeDmg=88, MaxMeleeDmg=117, MinRangedDmg=61, MaxRangedDmg=90, MeleeAttackPower=258, RangedAttackPower=28, MeleeBaseAttackTime=1667, RangedBaseAttackTime=1667  WHERE Entry=16158; -- Death Touched Warrior
UPDATE creature_template SET UnitFlags=0, Faction=16 WHERE Entry=16036; -- Frenzied Bat
UPDATE creature_template SET UnitFlags=0 WHERE Entry=16068; -- Larva
UPDATE creature_template SET UnitFlags=0, Faction=16 WHERE Entry=16037; -- Plagued Bat
UPDATE creature_template SET UnitFlags=64, Faction=233 WHERE Entry=16167; -- Bony Construct
UPDATE creature_template SET UnitFlags=0, SpeedWalk=0.666668, Faction=16 WHERE Entry=16034; -- Plague Beast
UPDATE creature_template SET UnitFlags=0, SpeedRun=1.14286, Faction=16 WHERE Entry=16297; -- Mutated Grub
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857, DamageMultiplier=35, MinMeleeDmg=99, MaxMeleeDmg=130, MinRangedDmg=67, MaxRangedDmg=99, MeleeAttackPower=244, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16163; -- Deathknight Cavalier
UPDATE creature_template SET UnitFlags=64, Faction=312 WHERE Entry=15978; -- Crypt Reaver
UPDATE creature_template SET UnitFlags=0, SpeedWalk=1, SpeedRun=1.42857 WHERE Entry=16157; -- Doom Touched Warrior
UPDATE creature_template SET UnitFlags=33554432 WHERE Entry=16137; -- Naxxramas Military Sub-Boss Trigger
UPDATE creature_template SET UnitFlags=33555200 WHERE Entry=16082; -- Naxxramas Trigger
UPDATE creature_template SET Faction=21 WHERE Entry=16142; -- Bile Sludge
UPDATE creature_template SET UnitFlags=0, SpeedWalk=0.777776 WHERE Entry=16447; -- Plagued Ghoul
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, SpeedRun=1.42857, Faction=233 WHERE Entry=16446; -- Plagued Gargoyle
UPDATE creature_template SET UnitFlags=64, SpeedWalk=2, SpeedRun=2.14286, Faction=16 WHERE Entry=16448; -- Plagued Deathhound
UPDATE creature_template SET UnitFlags=0, SpeedWalk=1, SpeedRun=1.71429, DamageMultiplier=26, MinMeleeDmg=76, MaxMeleeDmg=106, MinRangedDmg=63, MaxRangedDmg=93, MeleeAttackPower=116, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16452; -- Necro Knight Guardian
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, SpeedRun=1.71429, Faction=21 WHERE Entry=16451; -- Deathknight Vindicator
UPDATE creature_template SET UnitFlags=0, SpeedWalk=1, SpeedRun=1.42857 WHERE Entry=16449; -- Spirit of Naxxramas
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857 WHERE Entry=16861; -- Death Lord
UPDATE creature_template SET UnitFlags=33554432, SpeedRun=1 WHERE Entry=16211; -- Naxxramas Combat Dummy
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857 WHERE Entry=16803; -- Deathknight Understudy
UPDATE creature_template SET UnitFlags=512, SpeedWalk=1, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16365; -- Master Craftsman Omarion
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.71429 WHERE Entry=16061; -- Instructor Razuvious
UPDATE creature_template SET UnitFlags=0, MeleeBaseAttackTime=1200, RangedBaseAttackTime=1200, SpeedRun=1.71429 WHERE Entry=16216; -- Unholy Swords
UPDATE creature_template SET UnitFlags=0, MeleeBaseAttackTime=1800, RangedBaseAttackTime=1800, SpeedRun=1.71429 WHERE Entry=16194; -- Unholy Axe
UPDATE creature_template SET UnitFlags=0, SpeedRun=1.71429 WHERE Entry=16215; -- Unholy Staff
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, SpeedRun=1.71429, Faction=233 WHERE Entry=16368; -- Necropolis Acolyte
UPDATE creature_template SET UnitFlags=64, Faction=312, DamageMultiplier=40, MinMeleeDmg=75, MaxMeleeDmg=104, MinRangedDmg=62, MaxRangedDmg=92, MeleeAttackPower=115, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16506; -- Naxxramas Worshipper
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857, Faction=312, DamageMultiplier=60, MinMeleeDmg=75, MaxMeleeDmg=104, MinRangedDmg=62, MaxRangedDmg=92, MeleeAttackPower=115, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16505; -- Naxxramas Follower
UPDATE creature_template SET UnitFlags=33685504 WHERE Entry=16363; -- Grobbulus Cloud
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1 WHERE Entry=16290; -- Fallout Slime
UPDATE creature_template SET UnitFlags=64, Faction=312, DamageMultiplier=17, MinMeleeDmg=75, MaxMeleeDmg=104, MinRangedDmg=62, MaxRangedDmg=92, MeleeAttackPower=115, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry IN (
15980, -- Naxxramas Acolyte
15981  -- Naxxramas Cultist
);
UPDATE creature_template SET UnitFlags=64, SpeedWalk=0.8 WHERE Entry IN (
15929, -- Stalagg
15930  -- Feugen
);
UPDATE creature_template SET UnitFlags=64, Faction=233 WHERE Entry=16360; -- Zombie Chow
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=16218; -- Tesla Coil
UPDATE creature_template SET UnitFlags=33816896, SpeedWalk=1, SpeedRun=1.42857 WHERE Entry=15928; -- Thaddius
UPDATE creature_template SET UnitFlags=33554432 WHERE Entry=16006; -- InCombat Trigger
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.71429 WHERE Entry=15936; -- Heigan the Unclean
UPDATE creature_template SET UnitFlags=64, Faction=14 WHERE Entry=16060; -- Gothik the Harvester
UPDATE creature_template SET UnitFlags=0, MeleeBaseAttackTime=2700, RangedBaseAttackTime=2700 WHERE Entry=16984; -- Plagued Warrior
UPDATE creature_template SET DamageMultiplier=25, MinMeleeDmg=75, MaxMeleeDmg=104, MinRangedDmg=62, MaxRangedDmg=92, MeleeAttackPower=115, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=16981; -- Plagued Guardian
UPDATE creature_template SET UnitFlags=0, SpeedWalk=0.888888 WHERE Entry=16983; -- Plagued Champion
UPDATE creature_template SET UnitFlags=0, SpeedRun=0.285714, Faction=16 WHERE Entry IN (
16056, -- Diseased Maggot
16057  -- Rotting Maggot
);
UPDATE creature_template SET UnitFlags=0, MeleeBaseAttackTime=1000, RangedBaseAttackTime=1000, SpeedRun=1, Faction=16 WHERE Entry=16236; -- Eye Stalk
UPDATE creature_template SET UnitFlags=33554944, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, SpeedWalk=1, SpeedRun=0.992063 WHERE Entry=17293; -- Plague Wave
UPDATE creature_template SET UnitFlags=64, SpeedRun=2 WHERE Entry=16011; -- Loatheb
UPDATE creature_template SET SpeedRun=0.285714 WHERE Entry=16286; -- Spore
UPDATE creature_template SET SpeedWalk=0.888888, SpeedRun=1.42857 WHERE Entry=16390; -- Deathchill Servant
UPDATE creature_template SET UnitFlags=33555200, SpeedRun=1 WHERE Entry=16420; -- Portal of Shadows
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1 WHERE Entry IN (
16065, -- Lady Blaumeux
16064, -- Thane Korth'azz
16063, -- Sir Zeliek
16062  -- Highlord Mograine
);
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.4285, MinMeleeDmg=94, MaxMeleeDmg=124, MinRangedDmg=64, MaxRangedDmg=95, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=1800, RangedBaseAttackTime=1800 WHERE entry=16124; -- Unrelenting Trainee
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857 WHERE Entry=16127; -- Spectral Trainee
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857 WHERE Entry=16125; -- Unrelenting Deathknight
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.42857 WHERE Entry=16148; -- Spectral Deathknight
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.71429 WHERE Entry=16126; -- Unrelenting Rider
UPDATE creature_template SET SpeedWalk=1.6, SpeedRun=1.38571 WHERE Entry=16149; -- Spectral Horse
UPDATE creature_template SET UnitFlags=64, SpeedRun=1.71429 WHERE Entry=16150; -- Spectral Rider
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, SpeedRun=1.42857, Faction=312 WHERE Entry=16453; -- Necro Stalker
UPDATE creature_template SET SpeedRun=2.14286 WHERE Entry=16698; -- Corpse Scarab
UPDATE creature_template SET UnitFlags=64, SpeedWalk=1, SpeedRun=1.71429 WHERE Entry=15952; -- Maexxna
UPDATE creature_template SET UnitFlags=0, SpeedRun=1 WHERE Entry=16486; -- Web Wrap
UPDATE creature_template SET SpeedWalk=1 WHERE Entry=15990; -- Kel'Thuzad
UPDATE creature_template SET SpeedWalk=1.2, SpeedRun=0.428571 WHERE Entry=16474; -- Blizzard
UPDATE creature_template SET UnitFlags=33555200 WHERE Entry=17025; -- Sapphiron's Wing Buffet


INSERT INTO creature_template_addon VALUES (16027, 0, 0, 1, 16, 0, 0, '18950'); -- Living Poison

UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15956'; -- Anub'Rekhan (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='15953'; -- Grand Widow Faerlina (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15952'; -- Maexxna (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15954'; -- Noth the Plaguebringer (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='15936'; -- Heigan the Unclean (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='16011'; -- Loatheb (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16061'; --  Instructor Razuvious (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='16060'; --  Gothik the Harvester (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16062'; -- Highlord Mograine (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16064'; -- Thane Korth'azz (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16065'; -- Lady Blaumeux (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16063'; -- Sir Zeliek (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16775'; -- Spirit of Mograine (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16776'; -- Spirit of Blaumeux (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16777'; -- Spirit of Zeliek (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4|33554432 WHERE entry='16778'; -- Spirit of Korth'azz (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='16028'; -- Patchwerk (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15931'; -- Grobbulus (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15932'; -- Gluth (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15928'; -- Thaddius (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15929'; -- Stalagg (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15930'; -- Feugen (617299803)
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry='15989'; -- Sapphiron (617299803)
UPDATE creature_template SET MechanicImmuneMask=650854235 WHERE entry='15990'; -- Kel'Thuzad (fumble (32) and disarm (4), can not be disarmed as he doesnt wield a weapon, fumble is generally considered working on bosses) (650854271)

-- https://classic.wowhead.com/npc=16060/gothik-the-harvester#comments:id=2920155:reply=1240589
-- https://classic.wowhead.com/guides/gothik-the-harvester-naxxramas-raid-strategy
-- "This is great because most mobs on the undead side are immune to most schools of magic, meaning the majority of the raid's melee will be on the undead side anyway!"
-- Spectral Mobs in general have a tendency to have this immunity mask
UPDATE creature_template SET SchoolImmuneMask='124' WHERE entry='16127'; -- Spectral Trainee
UPDATE creature_template SET SchoolImmuneMask='124' WHERE entry='16148'; -- Spectral Deathknight
UPDATE creature_template SET SchoolImmuneMask='124' WHERE entry='16149'; -- Spectral Horse
UPDATE creature_template SET SchoolImmuneMask='124' WHERE entry='16150'; -- Spectral Rider
