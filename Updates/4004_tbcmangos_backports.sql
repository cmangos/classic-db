-- Battleguard Sartura & Guards
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `entry` IN (15516,15984); -- 6

-- Qiraji Mindslayer / Qiraji Slayer
UPDATE `creature_template` SET `SpeedWalk` = 2.8 WHERE `Entry` = 15250; -- 1.6

-- identical, infact tbcmangos might have too low values now, we will see.
-- SELECT * FROM creature_onkill_reputation where RewOnKillRepFaction1 = 910 order by creature_id;

-- Updated scale and speed of Qiraji Swarmguard in Ruins of AhnQiraj
UPDATE `creature_template` SET `SpeedWalk` = 2.8, `SpeedRun` = 2.28571 WHERE `Entry` = 15343;

-- Set The Molten Core -> BRD areatrigger to level 48
-- later went down to 0, vmangos has same, inside of MC to BRD
UPDATE `areatrigger_teleport` SET `required_level` = 0 WHERE `id` = 2890;

-- Add missing Realtime Duration Items from tbcmangos
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 1200 WHERE `entry` = 10684; -- Colossal Parachute
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 3600 WHERE `entry` = 12586; -- Immature Venom Sac
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20391; -- Flimsy Male Gnome Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20392; -- Flimsy Female Gnome Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 1209600 WHERE `entry` = 20557; -- Hallow's End Pumpkin Treat
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20561; -- Flimsy Male Dwarf Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20562; -- Flimsy Female Dwarf Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20563; -- Flimsy Female Nightelf Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20564; -- Flimsy Male Nightelf Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20565; -- Flimsy Female Human Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20566; -- Flimsy Male Human Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20567; -- Flimsy Female Troll Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20568; -- Flimsy Male Troll Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20569; -- Flimsy Female Orc Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20570; -- Flimsy Male Orc Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20571; -- Flimsy Female Tauren Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20572; -- Flimsy Male Tauren Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20573; -- Flimsy Male Undead Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 20574; -- Flimsy Female Undead Mask
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 300 WHERE `entry` = 21038; -- Hardpacked Snowball
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 604800 WHERE `entry` = 21212; -- Fresh Holly
UPDATE `item_template` SET `ExtraFlags` = `ExtraFlags`|1, `Duration` = 864000 WHERE `entry` = 21328; -- Wand of Holiday Cheer

-- align areatrigger_teleport with tbcmangos as far as possible (naxx left)
UPDATE `areatrigger_teleport` SET `name` = 'Blackwing Lair - Exiting' WHERE `id` = 3728; -- .go xyz -7671.109863 	-1109.709961 	399.122986 469
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Gurub - Exiting' WHERE `id` = 3930; -- .go xyz -11920.00     -1215.00     80.561600 309

-- Mountaineer Boombellow is now passive towards players, unless attacked
--  Source: http://old.wowhead.com/npc=13797#comments:id=327892
UPDATE `creature_template` SET UnitFlags` = 64, `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` = 13797; -- CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT (UnitFlags 64)

