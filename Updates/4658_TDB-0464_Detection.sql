-- Correct Detection for some mobs
-- https://github.com/cmangos/tbc-db/commit/fcd49587cffb68e8d52881f29597272b65e7a141
-- https://wowpedia.fandom.com/wiki/Aggro_radius?oldid=1432519
-- Mobs with the word "starving" in their name (Starving Dire Wolves in Duskwood, Starving Blisterpaws in Tanaris, etc.) also seem to have a higher aggro radius then other mobs
-- presumably because they are starving. The Starving Dire Wolves (levels 19-20) appear to aggro from further away then the nearby Rabid Dire Wolves (levels 20-21)
-- the Starving Blisterpaws appear to aggro from further away then the nearby similarly leveled buzzard and scorpid mobs, and so on. Exercise caution around starving mobs.
UPDATE `creature_template` SET `Detection` = '24' WHERE `entry` IN ( -- 30 befor.
213, -- Starving Dire Wolf
1133, -- Starving Winter Wolf
2829, -- Starving Buzzard
4689, -- Starving Bonepaw
5425, -- Starving Blisterpaw
5984, -- Starving Snickerfang
16347, -- Starving Ghostclaw
16879, -- Starving Helboar
18125, -- Starving Fungal Giant
19519 -- Starving Bog Lord
);

-- "Hyena" also have higher then default aggro radius.
-- https://www.wowhead.com/tbc/npc=4127/hecklefang-hyena#comments:id=235668
UPDATE `creature_template` SET `Detection` = '24' WHERE `entry` IN ( -- 18 befor.
4127, -- Hecklefang Hyena
4248, -- Pesterhide Hyena
4534, -- Tamed Hyena
4688, -- Bonepaw Hyena
5426, -- Blisterpaw Hyena
5985, -- Snickerfang Hyena
12418 -- Gordok Hyena
);

-- vmangos
UPDATE `creature_template` SET `Detection`='30' WHERE `entry`='2270'; -- Hillsbrad Sentry (18/V40) - https://www.wowhead.com/tbc/npc=2270/hillsbrad-sentry

-- Makes Sense
UPDATE `creature_template` SET `Detection`='5' WHERE `entry`='3971'; -- Agro 5
UPDATE `creature_template` SET `Detection`='7' WHERE `entry`='3972'; -- Agro 7
UPDATE `creature_template` SET `Detection`='10' WHERE `entry`='3973'; -- Agro 10

-- Barrens Quest Event
UPDATE `creature_template` SET `Detection`='25' WHERE `entry`='9457'; -- Horde Defender (18/V25)
UPDATE `creature_template` SET `Detection`='25' WHERE `entry`='9458'; -- Horde Axe Thrower (18/V25)

-- Stratholme Researched, validated against tbcmangos and classicmangos due to modelsize changes
-- https://youtu.be/FL77KhK6-3E?si=ebaxi2v2Gvxe0Az0&t=60 hug the wall else aggro
UPDATE `creature_template` SET `Detection`='25' WHERE `entry`='10440'; -- Baron Rivendare (18/V1)

-- Scholomance
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14511'; -- Shadowed Spirit (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14512'; -- Corrupted Spirit (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14513'; -- Malicious Spirit (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14514'; -- Banal Spirit (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14518'; -- Aspect of Banality (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14519'; -- Aspect of Corruption (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14520'; -- Aspect of Malice (18/V45)
UPDATE `creature_template` SET `Faction` = 21 WHERE `entry`='14521'; -- Aspect of Shadow (18/V45)

-- Gordok Reavers and Warlocks now have a slightly larger radius for detection and "call for help."
-- https://wowpedia.fandom.com/wiki/Patch_1.9.0 - seemingly worth looking through old patch notes. . .
UPDATE `creature_template` SET `Detection`=25, `CallForHelp` = 10 WHERE `entry`='11448'; -- Gordok Warlock (18/5)
UPDATE `creature_template` SET `Detection`=25, `CallForHelp` = 10 WHERE `entry`='11450'; -- Gordok Reaver (18/5)

UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11440; -- Gordok Enforcer
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11441; -- Gordok Brute
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11442; -- Gordok Mauler
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11443; -- Gordok Ogre-Mage
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11444; -- Gordok Mage-Lord
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11445; -- Gordok Captain
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11446; -- Gordok Spirit
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11448; -- Gordok Warlock
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 11450; -- Gordok Reaver
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 11501; -- King Gordok
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = 12418; -- Gordok Hyena
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7) WHERE `entry` = 13036; -- Gordok Mastiff
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 14351; -- Gordok Bushwacker

