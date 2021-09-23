-- Add "classic" SPELL_AURA_HASTE_SPELLS Immunity from vmangos
REPLACE INTO creature_immunities (entry, Type, Value) SELECT entry AS entry, 1, 216 FROM creature_template WHERE entry IN (
1284, -- Archbishop Benedictus
1748, -- Highlord Bolvar Fordragon
2425, -- Varimathras
2784, -- King Magni Bronzebeard
3057, -- Cairne Bloodhoof
3516, -- Arch Druid Fandral Staghelm
4949, -- Thrall
4968, -- Lady Jaina Proudmoore
5764, -- Guardian of Blizzard
6109, -- Azuregos
7846, -- Teremus the Devourer
7937, -- High Tinker Mekkatorque
7999, -- Tyrande Whisperwind
8017, -- Sen'jin Guardian
8680, -- Massive Infernal
9236, -- Shadow Hunter Vosh'gajin
9568, -- Overlord Wyrmthalak
9816, -- Pyroguard Emberseer
10162, -- Lord Victor Nefarius
10181, -- Lady Sylvanas Windrunner
10184, -- Onyxia
10339, -- Gyth
10363, -- General Drakkisath
10429, -- Warchief Rend Blackhand
10430, -- The Beast
10540, -- Vol'jin
11380, -- Jin'do the Hexxer
11382, -- Bloodlord Mandokir
11502, -- Ragnaros
11583, -- Nefarian
11662, -- Flamewaker Priest (classic-db and tbc-db have this one)
11981, -- Flamegor
11982, -- Magmadar
11983, -- Firemaw
11988, -- Golemagg the Incinerator
12017, -- Broodlord Lashlayer
12018, -- Majordomo Executus
12056, -- Baron Geddon
12057, -- Garr
12098, -- Sulfuron Harbinger
12118, -- Lucifron
12159, -- Korrak the Bloodrager
12259, -- Gehennas
12264, -- Shazzrah
12397, -- Lord Kazzak
12435, -- Razorgore the Untamed
12756, -- Lady Onyxia
13020, -- Vaelastrasz the Corrupt
14020, -- Chromaggus
14435, -- Prince Thunderaan
14507, -- High Priest Venoxis
14509, -- High Priest Thekal
14510, -- High Priestess Mar'li
14515, -- High Priestess Arlokk
14517, -- High Priestess Jeklik
14601, -- Ebonroc
14834, -- Hakkar
14862, -- Emissary Roman'khan
14884, -- Parasitic Serpent
14887, -- Ysondre
14888, -- Lethon
14889, -- Emeriss
14890, -- Taerar
14941, -- High Priestess Jeklik Transform Visual
14988, -- Ohgan
15047, -- Gurubashi
15082, -- Gri'lek
15083, -- Hazza'rah
15085, -- Wushoolay
15114, -- Gahz'ranka
15192, -- Anachronos
15203, -- Prince Skaldrenox
15204, -- High Marshal Whirlaxis
15205, -- Baron Kazum
15275, -- Emperor Vek'nilash
15276, -- Emperor Vek'lor
15299, -- Viscidus
15305, -- Lord Skwol
15339, -- Ossirian the Unscarred
15340, -- Moam
15341, -- General Rajaxx
15348, -- Kurinnaxx
15362, -- Malfurion Stormrage
15369, -- Ayamiss the Hunter
15370, -- Buru the Gorger
15378, -- Merithra of the Dream
15379, -- Caelestrasz
15380, -- Arygos
15381, -- Anachronos the Ancient
15382, -- Fandral Staghelm
15410, -- Anachronos Dragon Form
15411, -- Arygos Dragon Form
15412, -- Caelestrasz Dragon Form
15413, -- Merithra Dragon Form
15427, -- Merithra's Wake
15467, -- Omen
15481, -- Spirit of Azuregos
15491, -- Eranikus, Tyrant of the Dream
15507, -- Buru the Gorger Transform Visual
15509, -- Princess Huhuran
15510, -- Fankriss the Unyielding
15511, -- Lord Kri
15516, -- Battleguard Sartura
15517, -- Ouro
15543, -- Princess Yauj
15544, -- Vem
15571, -- Maws
15589, -- Eye of C'Thun
15625, -- Twilight Corrupter
15628, -- Eranikus the Redeemed
15633, -- Tyrande
15726, -- Eye Tentacle
15727, -- C'Thun
15740, -- Colossus of Zora
15741, -- Colossus of Regal
15742, -- Colossus of Ashi
15818, -- Lieutenant General Nokhor
15928, -- Thaddius
15929, -- Stalagg
15930, -- Feugen
15931, -- Grobbulus
15932, -- Gluth
15936, -- Heigan the Unclean
15952, -- Maexxna
15953, -- Grand Widow Faerlina
15954, -- Noth the Plaguebringer
15956, -- Anub'Rekhan
15963, -- The Master's Eye
15989, -- Sapphiron
15990, -- Kel'Thuzad
16011, -- Loatheb
16028, -- Patchwerk
16042, -- Lord Valthalak
16060, -- Gothik the Harvester
16061, -- Instructor Razuvious
16062, -- Highlord Mograine
16063, -- Sir Zeliek
16064, -- Thane Korth'azz
16065, -- Lady Blaumeux
16387, -- Atiesh
16775, -- Spirit of Mograine
16776, -- Spirit of Blaumeux
16777, -- Spirit of Zeliek
16778 -- Spirit of Korth'azz
);
