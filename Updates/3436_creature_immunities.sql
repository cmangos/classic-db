-- Add CREATURE_EXTRA_FLAG_POISON_IMMUNITY for some Elemental, Giant & Mechanical Units (Rechecked on classic)
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x01000000 WHERE entry IN (
2776, -- Vengeful Surge
5850, -- Blazing Elemental
5852, -- Inferno Elemental
5853, -- Tempered War Golem
5854, -- Heavy War Golem
6520, -- Scorching Elemental
6521, -- Living Blaze
7039, -- War Reaver
7132, -- Toxic Horror
8519, -- Blighted Surge
8520, -- Plague Ravager
8521, -- Blighted Horror
8522, -- Plague Monstrosity
8909, -- Fireguard
8910, -- Blazing Fireguard
8911, -- Fireguard Destroyer
9016, -- Bael'Gar
9017, -- Lord Incendius
9034, -- Hate'rel
9035, -- Anger'rel
9036, -- Vile'rel
9037, -- Gloom'rel
9038, -- Seeth'rel
9039, -- Doom'rel
9040, -- Dope'rel
9156, -- Ambassador Flamelash
9816, -- Pyroguard Emberseer
9878, -- Entropic Beast
9879, -- Entropic Horror
11502, -- Ragnaros
11665, -- Lava Annihilator
11666, -- Firewalker
11668, -- Firelord
11744, -- Dust Stormer
11746, -- Desert Rumbler
11783, -- Theradrim Shardling
11784, -- Theradrim Guardian
12100, -- Lava Reaver
12143, -- Son of Flame
12203, -- Landslide
12206, -- Primordial Behemoth
12265, -- Lava Spawn
13021, -- Warpwood Crusher
13022, -- Whip Lasher
13196, -- Phase Lasher
13197, -- Fel Lash
13279, -- Discordant Surge
13280, -- Hydrospawn
13285 -- Death Lash
);
