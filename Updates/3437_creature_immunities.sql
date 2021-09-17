-- Add MECHANIC_DISORIENTED 2 - "Blind was a Poison in Classic - Dont Add Poison Immune Npcs"
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN  (
7044, -- Black Drake
9019, -- Emperor Dagran Thaurissan
11658, -- Molten Giant
11665, -- Lava Annihilator
11668, -- Firelord
11673 -- Ancient Core Hound
);

-- Add MECHANIC_DISTRACT 8
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8 WHERE entry IN  (
7039, -- War Reaver
8906, -- Ragereaver Golem
8907, -- Wrath Hammer Construct
8908, -- Molten War Golem
8929 -- Princess Moira Bronzebeard

);

-- Add MECHANIC_SNARE 1024
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN  (
7044, -- Black Drake
9019, -- Emperor Dagran Thaurissan
9032, -- Hedrum the Creeper
9938, -- Magmus
12206 -- Primordial Behemoth
);

-- Add MECHANIC_STUN 2048
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN  (
2757, -- Blacklash
2759, -- Hematus
7044, -- Black Drake
9017, -- Lord Incendius
9019, -- Emperor Dagran Thaurissan
9156, -- Ambassador Flamelash
9499, -- Plugger Spazzring
11658, -- Molten Giant
11665, -- Lava Annihilator
11666, -- Firewalker
11668, -- Firelord
11671, -- Core Hound
11673, -- Ancient Core Hound
12100, -- Lava Reaver
12265 -- Lava Spawn
);

-- Add MECHANIC_KNOCKOUT 8192
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN  (
7039, -- War Reaver
7044, -- Black Drake
11658, -- Molten Giant
11665, -- Lava Annihilator
11666, -- Firewalker
11668, -- Firelord
11673, -- Ancient Core Hound
12100 -- Lava Reaver
);

-- Patch 2.4.0 - Non-corporeal Undead and Mechanical creatures are now susceptible to bleed effects. - DO NOT ADD THESE HERE
-- Add MECHANIC_BLEED 16384
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16384 WHERE entry IN  (
9017, -- Lord Incendius
9156, -- Ambassador Flamelash
9816, -- Pyroguard Emberseer
11665, -- Lava Annihilator
11666 -- Firewalker
);

-- Add MECHANIC_INTERRUPT 33554432
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN  (
2757, -- Blacklash
2759, -- Hematus
9499 -- Plugger Spazzring
);

-- ========================================================================================================
-- CLASSIC
-- ========================================================================================================

UPDATE creature_template SET MechanicImmuneMask=646135647 WHERE entry=1842; -- Highlord Taelan Fordring
UPDATE creature_template SET MechanicImmuneMask=646135647 WHERE entry=12126; -- Lord Tirion Fordring

-- Add Interrupt Immunity for General Drakkisath 10363
UPDATE creature_template SET SpeedWalk=2.22222 / 2.5, SpeedRun= 6.94444 / 7, MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry=10363;
