-- Add your query below.
-- https://github.com/vmangos/core/commit/16b039da800713c3cdeb84e4eb7a111d7aa7b89a

-- Dungeon bosses should give increased experience.
UPDATE `creature_template` SET `ExperienceMultiplier` = 2 WHERE `entry` IN (
-- Ragefire Chasm
11517, -- Oggleflint
11520, -- Taragaman the Hungerer
11518, -- Jergosh the Invoker
11519, -- Bazzalan
-- Deadmines
644, -- Rhahk'Zor
3586, -- Miner Johnson
642, -- Sneed's Shredder
643, -- Sneed
1763, -- Gilnid
646, -- Mr. Smite
647, -- Captain Greenskin
639, -- Edwin VanCleef
645, -- Cookie
-- Wailing Caverns
3653, -- Kresh
3671, -- Lady Anacondra
3669, -- Lord Cobrahn
3670, -- Lord Pythas
3674, -- Skum
3673, -- Lord Serpentis
5775, -- Verdan the Everliving
3654, -- Mutanus the Devourer
-- Blackfathom Deeps
4887, -- Ghamoo-ra
4831, -- Lady Sarevess
6243, -- Gelihast
12902, -- Lorgus Jett
12876, -- Baron Aquanis
4832, -- Twilight Lord Kelris
4830, -- Old Serra'kis
4829, -- Aku'mai
-- The Stockade
1696, -- Targorr the Dread
1666, -- Kam Deepfury
1717, -- Hamhock
1663, -- Dextren Ward
1716, -- Bazil Thredd
1720, -- Bruegal Ironknuckle
-- Shadowfang Keep
3914, -- Rethilgore
3886, -- Razorclaw the Butcher
3887, -- Baron Silverlaine
4278, -- Commander Springvale
4279, -- Odo the Blindwatcher
3872, -- Deathsworn Captain
4274, -- Fenrus the Devourer
3927, -- Wolf Master Nandos
4275, -- Archmage Arugal
-- Gnomeregan
7079, -- Viscous Fallout
7361, -- Grubbis
6235, -- Electrocutioner 6000
6229, -- Crowd Pummeler 9-60
7800, -- Mekgineer Thermaplugg
-- Razorfen Kraul
6168, -- Roogug
4424, -- Aggem Thorncurse
4428, -- Death Speaker Jargba
4420, -- Overlord Ramtusk
4422, -- Agathelos the Raging
4421, -- Charlga Razorflank
-- Razorfen Downs
7355, -- Tuten'kash
7356, -- Plaguemaw the Rotting
7357, -- Mordresh Fire Eye
7354, -- Ragglesnout
8567, -- Glutton
7358, -- Amnennar the Coldbringer
-- Scarlet Monastery
3983, -- Interrogator Vishas
4543, -- Bloodmage Thalnos
3974, -- Houndmaster Loksey
6487, -- Arcanist Doan
3975, -- Herod
4542, -- High Inquisitor Fairbanks
3977, -- High Inquisitor Whitemane
3976, -- Scarlet Commander Mograine
-- Zul'Farrak
8127, -- Antu'sul
7272, -- Theka the Martyr
7271, -- Witch Doctor Zum'rah
7796, -- Nekrum Gutchewer
7795, -- Hydromancer Velratha
7273, -- Gahz'rilla
7275, -- Shadowpriest Sezz'ziz
7797, -- Ruuzlu
7267, -- Chief Ukorz Sandscalp
-- Uldaman
6910, -- Revelosh
6906, -- Baelog
7228, -- Ironaya
7023, -- Obsidian Sentinel
7206, -- Ancient Stone Keeper
7291, -- Galgann Firehammer
4854, -- Grimlok
2748, -- Archaedas
-- Maraudon
13282, -- Noxxion
12258, -- Razorlash
12236, -- Lord Vyletongue
12225, -- Celebras the Cursed
12203, -- Landslide
13601, -- Tinkerer Gizlock
13596, -- Rotgrip
12201, -- Princess Theradras
-- Sunken Temple
5714, -- Loro
5713, -- Gasher
5717, -- Mijan
5712, -- Zolo
5716, -- Zul'Lor
5715, -- Hukku
8580, -- Atal'alarion
5721, -- Dreamscythe
5720, -- Weaver
5710, -- Jammal'an the Prophet
5711, -- Ogom the Wretched
5719, -- Morphaz
5722, -- Hazzas
8443, -- Avatar of Hakkar
5709, -- Shade of Eranikus
-- Dire Maul
11490, -- Zevrim Thornhoof
13280, -- Hydrospawn
14327, -- Lethtendris
11492, -- Alzzin the Wildshaper
14326, -- Guard Mol'dar
14322, -- Stomper Kreeg
14321, -- Guard Fengus
14323, -- Guard Slip'kik
14325, -- Captain Kromcrush
11501, -- King Gordok
14324, -- Cho'Rush the Observer
11489, -- Tendris Warpwood
11488, -- Illyanna Ravenoak
11487, -- Magister Kalendris
11496, -- Immol'thar
11486, -- Prince Tortheldrin
-- Stratholme
11058, -- Fras Siabi
10393, -- Skul
10516, -- The Unforgiven
10558, -- Hearthsinger Forresten
11143, -- Postmaster Malown
10808, -- Timmy the Cruel
11032, -- Malor the Zealous
10997, -- Cannon Master Willey
10811, -- Archivist Galford
10813, -- Balnazzar
10436, -- Baroness Anastari
10437, -- Nerub'enkan
10438, -- Maleki the Pallid
10435, -- Magistrate Barthilas
10439, -- Ramstein the Gorger
10440, -- Baron Rivendare
-- Scholomance
10506, -- Kirtonos the Herald
10503, -- Jandice Barov
11622, -- Rattlegore
10433, -- Marduk Blackpool
10432, -- Vectus
10508, -- Ras Frostwhisper
10505, -- Instructor Malicia
11261, -- Doctor Theolen Krastinov
10901, -- Lorekeeper Polkelt
10507, -- The Ravenian
10504, -- Lord Alexei Barov
10502, -- Lady Illucia Barov
1853, -- Darkmaster Gandling
-- Blackrock Depths
9025, -- Lord Roccor
9016, -- Bael'Gar
9319, -- Houndmaster Grebmar
9018, -- High Interrogator Gerstahn
10096, -- High Justice Grimstone
9024, -- Pyromancer Loregrain
9033, -- General Angerforge
8983, -- Golem Lord Argelmach
9543, -- Ribbly Screwspigot
9537, -- Hurley Blackbreath
9499, -- Plugger Spazzring
9502, -- Phalanx
9017, -- Lord Incendius
9056, -- Fineous Darkvire
9041, -- Warder Stilgiss
9042, -- Verek
9156, -- Ambassador Flamelash
9938, -- Magmus
8929, -- Princess Moira Bronzebeard
9019, -- Emperor Dagran Thaurissan
-- Blackrock Spire
9196, -- Highlord Omokk
9236, -- Shadow Hunter Vosh'gajin
9237, -- War Master Voone
10596, -- Mother Smolderweb
10584, -- Urok Doomhowl
9736, -- Quartermaster Zigris
10268, -- Gizrul the Slavener
10220, -- Halycon
9568, -- Overlord Wyrmthalak
9816, -- Pyroguard Emberseer
10429, -- Warchief Rend Blackhand
10339, -- Gyth
10430, -- The Beast
10363, -- General Drakkisath

-- TBC+
17306,18436, -- Watchkeeper Gargolmar (17306,18436)
17308,18433, -- Omor the Unscarred (17308,18433)
17536,18432, -- Nazan (17536,18432)
17537,18434, -- Vazruden (17537,18434)
17381,18621, -- The Maker (17381,18621)
17380,18601, -- Broggok (17380,18601)
17377,18607, -- Keli'dan the Breaker (17377,18607)
16807,20568, -- Grand Warlock Nethekurse (16807,20568)
-- Shattered Hand Blood Guard / Blood Guard Porung (17461,20993)
17461,20581,
20923,20992,20993,
16809,20596, -- Warbringer O'mrogg (16809,20596)
16808,20597, -- Warchief Kargath Bladefist (16808,20597)
17941,19893, -- Mennu the Betrayer (17941,19893)
17991,19895, -- Rokmar the Crackler (17991,19895)
17942,19894, -- Quagmirran (17942,19894)
25865,26339, -- Frozen Core (25865,26339)
25740,26338, -- Ahune (25740,26338)
17770,20169, -- Hungarfen (17770,20169)
18105,20168, -- Ghaz'an (18105,20168)
18107,20182, -- Overseer Tidewrath (18107,20182)
17826,20183, -- Swamplord Musel'ek (17826,20183)
17827,20165, -- Claw (17827,20165)
17882,20184, -- The Black Stalker (17882,20184)
17797,20629, -- Hydromancer Thespia (17797,20629)
17796,20630, -- Mekgineer Steamrigger (17796,20630)
17798,20633, -- Warlord Kalithresh (17798,20633)
18341,20267, -- Pandemonius (18341,20267)
18343,20268, -- Tavarok (18343,20268)
18344,20266, -- Nexus-Prince Shaffar (18344,20266)
22930, -- Yor Void Hound of Shaffar (22930)
18371,20318, -- Shirrak the Dead Watcher (18371,20318)
18373,20306, -- Exarch Maladaar (18373,20306)
18478,20303, -- Avatar of the Martyred (18478,20303)
18472,20690, -- Darkweaver Syth (18472,20690)
23035, -- Anzu (23035)
18473,20706, -- Talon King Ikiss (18473,20706)
18731,20636, -- Ambassador Hellmaw (18731,20636)
18667,20637, -- Blackheart the Inciter (18667,20637)
18732,20653, -- Grandmaster Vorpil (18732,20653)
18708,20657, -- Murmur (18708,20657)
17848,20535, -- Lieutenant Drake (17848,20535)
17862,20521, -- Captain Skarloc (17862,20521)
18096,20531, -- Epoch Hunter (18096,20531)
17879,20738, -- Chrono Lord Deja (17879,20738)
21697,21712, -- Infinite Chrono-Lord (21697,21712)
17880,20745, -- Temporus (17880,20745)
17881,20737, -- Aeonus (17881,20737)
19218,21525, -- Gatewatcher Gyro-Kill (19218,21525)
19710,21526, -- Gatewatcher Iron-Hand (19710,21526)
19219,21533, -- Mechano-Lord Capacitus (19219,21533)
19221,21536, -- Nethermancer Sepethrea (19221,21536)
19220,21537, -- Pathaleon the Calculator (19220,21537)
17976,21551, -- Commander Sarannis (17976,21551)
17975,21558, -- High Botanist Freywinn (17975,21558)
17978,21581, -- Thorngrin the Tender (17978,21581)
17980,21559, -- Laj (17980,21559)
17977,21582, -- Warp Splinter (17977,21582)
20870,21626, -- Zereketh the Unbound (20870,21626)
20885,21590, -- Dalliah the Doomsayer (20885,21590)
20886,21624, -- Wrath-Scryer Soccothrates (20886,21624)
20912,21599, -- Harbinger Skyriss (20912,21599)
24723,25562, -- Selin Fireheart (24723,25562)
24744,25573, -- Vexallus (24744,25573)
24664,24857, -- Kael'thas Sunstrider (24664,24857)
24560,25560, -- Priestess Delrissa (Priest)
24553,25541, -- Apoko (Shaman)
24554,25550, -- Eramas Brightblaze (Monk)
24555,25555, -- Garaxxas (Hunter)
24552,25564, -- Sliver (Ravager)
24556,25579, -- Zelfan (Engineer)
24557,25556, -- Kagani Nightstrike (Rogue)
24558,25549, -- Ellrys Duskhallow (Warlock)
24656,25553, -- Fizzle (Imp)
24559,25574, -- Warlord Salaris (Warrior)
24561,25578 -- Yazzai (Mage)

-- WOTLK+
);

-- Overseer Tidewrath (18107,20182) - completeness
-- UPDATE `creature_template` SET `HeroicEntry` = 20182, `MechanicImmuneMask` = 579026803, `SpeedWalk` = 1 WHERE `entry` = 18107;
-- UPDATE `creature_template` SET `Faction` = 1693, `MinLevel` = 72, `MaxLevel` = 72, `MechanicImmuneMask` = 579026803, `SpeedWalk` = 1, `DamageMultiplier` = 8.8, `StaticFlags1` = 2147483648 WHERE `entry` = 20182;

-- End of migration.

