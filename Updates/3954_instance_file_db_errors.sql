-- 2022-06-24 02:22:45 Table `gameobject` has gameobject (GUID: 2300457) with non existing gameobject entry 300065, skipped.
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `ExtraFlags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `CustomData1`, `mingold`, `maxgold`, `ScriptName`) VALUES
(300065, 8, 0, 'TEMP Blackrock Depths Arena', 0, 0, 0, 1, 1360, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- Simimlar to 300010,300011,300015,300016,300028,300052,300056,300064,300142

-- 2022-06-24 02:22:45 Creature (Entry: 4789) has wrong spell 30831 defined in `auras` field in `creature_template_addon`.
-- [4] (3) OBJECT_FIELD_ENTRY: 4789 - 2008-05-11 06-36-20_MUUGI.sqlite_parsed
-- [4] (34) UNIT_FIELD_LEVEL: 21
-- [4] (35) UNIT_FIELD_FACTIONTEMPLATE: 128
-- [4] (36) UNIT_FIELD_BYTES_0_1: 0
-- [4] (36) UNIT_FIELD_BYTES_0_2: 1
-- [4] (36) UNIT_FIELD_BYTES_0_3: 0
-- [4] (36) UNIT_FIELD_BYTES_0_4: 1
-- [4] (48) UNIT_FIELD_AURA_1: 7939
-- [4] (48) UNIT_FIELD_AURA_2: 22766

-- 2022-06-24 02:22:45 Creature (Entry: 9040) has wrong spell 32199 defined in `auras` field in `creature_template_addon`.
-- Never had a stealth aura - https://youtu.be/QoEwUz7Bdq8?t=1475 - 2007-12-19 17-50-27_MUUGI.sqlite_parsed / 2009-03-23-01-10_9551_MIHASYA_parsed

-- 2022-06-24 02:22:45 Creature (GUID 4290181) have invalid emote (400) defined in `creature_addon`.

-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` using nonexistent spell (id: 41232) in SCRIPT_COMMAND_REMOVE_AURA or SCRIPT_COMMAND_CAST_SPELL for script id 1450003
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1450001,1450002,1450003);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1450001, 0, 0, 0, 0, 0, 0, 0, 0, 9770, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 2 on reach wp 2 (Scholomance)'),
(1450002, 0, 0, 0, 0, 0, 0, 0, 0, 9771, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 3 on reach wp 7 (Scholomance)'),
(1450003, 4000, 0, 0, 0, 0, 0, 0, 0, 9742, 0, 0, 0, 0, 0, 0, 0, 'J''eevee say 4 on reach wp 12 (Scholomance)'),
(1450003, 7000, 15, 17680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee cast teleport on reach wp 12 (Scholomance)'), -- restore old spell (tbc+ 41232), move out of instance files due to diff
(1450003, 8000, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'J''eevee despawn self on reach wp 12 (Scholomance)');

-- Blackrock Spire missing RP Event
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160182, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160183, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160187, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160188, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160189, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` has buddy defined by guid (SCRIPT_FLAG_BUDDY_BY_GUID 16 set) but no npc spawned with guid 160190, skipping.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981701.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981801. - had a typo mistake leading to dberror spamming "ERROR: DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 981801, command 1 has buddy 9819 not found in range 25 of searcher Creature (Entry: 9818 Guid: 2290432) (data-flags 0), skipping."
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981901.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981902.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981903.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 981904.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1031703.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1031704.

-- Stratholme - Timmy the Cruel was revamped
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1080801,1080804,1080819); -- Timmy - run on / Timmy - run off / Timmy - switch to random movement
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1080801.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1080804.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1080819.

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (
1450013, --  -> 1450004
1450014, -- -> 1450005
1450015, -- -> 1450006
1450016, -- -> 1450007
1450017 -- -> 1450008
); -- 1450001-1450003 used in Scholomance file, 4-8 in dire maul
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1450013.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1450014.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1450015.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1450016.
-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1450017.

-- 2022-06-24 02:22:47 Table `dbscripts_on_creature_movement` contain unused script, id 1614501.
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1614501; -- was substituted by 1614602,1614603