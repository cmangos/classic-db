-- All below creatures had faction template = 32 (neutral) in current ClassicDB.
-- Changed to correct faction based on creature type, YTDB, UDB and environnement
-- Thanks Neotmiren for pointing and fixing. This closes #449 
UPDATE creature_template SET FactionAlliance=7,   FactionHorde=7   WHERE entry=14224; -- 7:XT
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=5347;  -- Antilus the Soarer
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=6648;  -- Antilos
UPDATE creature_template SET FactionAlliance=21,  FactionHorde=21  WHERE entry=7895;  -- Ambassador Bloodrage
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=10202; -- Azurous
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=5346;  -- Bloodroar the Stalker
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=8202;  -- Cyclok the Mad
UPDATE creature_template SET FactionAlliance=7,   FactionHorde=7   WHERE entry=14223; -- Cranky Benj
UPDATE creature_template SET FactionAlliance=38,  FactionHorde=38  WHERE entry=10077; -- Deathmaw (rare Wolf, Searing Gorge)
UPDATE creature_template SET FactionAlliance=270, FactionHorde=270 WHERE entry=5912;  -- Deviate Faerie Dragon
UPDATE creature_template SET FactionAlliance=24,  FactionHorde=24  WHERE entry=507;   -- Fenros (rare Worgen, Duskwood)
UPDATE creature_template SET FactionAlliance=67,  FactionHorde=67  WHERE entry=1843;  -- Foreman Jerris
UPDATE creature_template SET FactionAlliance=38,  FactionHorde=38  WHERE entry=14228; -- Giggler (rare Hyena, Desolace)
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=9604;  -- Gorgon'och
UPDATE creature_template SET FactionAlliance=40,  FactionHorde=40  WHERE entry=9718;  -- Ghok Bashguud
UPDATE creature_template SET FactionAlliance=21,  FactionHorde=21  WHERE entry=10825; -- Gish the Unmoving
UPDATE creature_template SET FactionAlliance=87,  FactionHorde=87  WHERE entry=14221; -- Gravis Slipknot
UPDATE creature_template SET FactionAlliance=18,  FactionHorde=18  WHERE entry=14447; -- Gilmorian
UPDATE creature_template SET FactionAlliance=16,  FactionHorde=16  WHERE entry=5934;  -- Heartrazor (rare elite wyvern, Thousand Needles)
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=9602;  -- Hahk'Zor
UPDATE creature_template SET FactionAlliance=21,  FactionHorde=21  WHERE entry=10558; -- Hearthsinger Forresten
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=10821; -- Hed'mush the Rotting
UPDATE creature_template SET FactionAlliance=49,  FactionHorde=49  WHERE entry=5935;  -- Ironeye the Invincible
UPDATE creature_template SET FactionAlliance=7,   FactionHorde=7   WHERE entry=8213;  -- Ironback
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=2453;  -- Lo'Grosh (rare Ogre, Alterac Mountains)
UPDATE creature_template SET FactionAlliance=21,  FactionHorde=21  WHERE entry=1848;  -- Lord Maldazzar
UPDATE creature_template SET FactionAlliance=129, FactionHorde=129 WHERE entry=14236; -- Lord Angler
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=2604;  -- Molok the Crusher (Boulderfist Ogre, Arathi Highlands)
UPDATE creature_template SET FactionAlliance=38,  FactionHorde=38  WHERE entry=8208;  -- Murderous Blisterpaw (rare Hyena, Tanaris)
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=723;   -- Mosh'Ogg Butcher
UPDATE creature_template SET FactionAlliance=45,  FactionHorde=45  WHERE entry=8297;  -- Magronos the Unyielding
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=14237; -- Oozeworm
UPDATE creature_template SET FactionAlliance=74,  FactionHorde=74  WHERE entry=2779;  -- Prince Nazjak
UPDATE creature_template SET FactionAlliance=39,  FactionHorde=39  WHERE entry=947;   -- Rohh the Silent
UPDATE creature_template SET FactionAlliance=67,  FactionHorde=67  WHERE entry=1837;  -- Scarlet Judge
UPDATE creature_template SET FactionAlliance=67,  FactionHorde=67  WHERE entry=1838;  -- Scarlet Interrogator
UPDATE creature_template SET FactionAlliance=67,  FactionHorde=67  WHERE entry=1839;  -- Scarlet High Clerist
UPDATE creature_template SET FactionAlliance=67,  FactionHorde=67  WHERE entry=1841;  -- Scarlet Executioner
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=3295;  -- Sludge Beast
UPDATE creature_template SET FactionAlliance=111, FactionHorde=111 WHERE entry=5864;  -- Swinegart Spearhide
UPDATE creature_template SET FactionAlliance=124, FactionHorde=124 WHERE entry=5916;  -- Sentinel Amarassan
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=3652;  -- Trigore the Lasher
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=8212;  -- The Reak
UPDATE creature_template SET FactionAlliance=14,  FactionHorde=14  WHERE entry=14345; -- The Ongar
UPDATE creature_template SET FactionAlliance=37,  FactionHorde=37  WHERE entry=5399;  -- Veyzhak the Cannibal
UPDATE creature_template SET FactionAlliance=47,  FactionHorde=47  WHERE entry=14492; -- Verifonix
UPDATE creature_template SET FactionAlliance=654, FactionHorde=654 WHERE entry=8218;  -- Witherheart the Stalker
UPDATE creature_template SET FactionAlliance=37,  FactionHorde=37  WHERE entry=10822; -- Warlord Thresh'jin
UPDATE creature_template SET FactionAlliance=37,  FactionHorde=37  WHERE entry=5400;  -- Zekkis
UPDATE creature_template SET FactionAlliance=37,  FactionHorde=37  WHERE entry=10823; -- Zul'Brin Warpbranch
UPDATE creature_template SET FactionAlliance=310, FactionHorde=310 WHERE entry=14474; -- Zora
UPDATE creature_template SET FactionAlliance=50,  FactionHorde=50  WHERE entry=1063;  -- Jade (rare elite Green Drake, Swamp of Sorrow)