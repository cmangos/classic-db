UPDATE creature_template SET InhabitType=1, UnitFlags=64, RangedBaseAttackTime=2000, ExtraFlags=ExtraFlags|4096, MovementType=0 WHERE entry=5719; -- Morphaz 50 296-393 11075 2999 (wf ab)
DELETE FROM creature_movement_template WHERE entry=5719; -- follows Hazzas, no own unique waypoints
UPDATE creature_template SET InhabitType=1, UnitFlags=64, RangedBaseAttackTime=2000, ExtraFlags=ExtraFlags|4096 WHERE entry=5722; -- Hazzas 50 296-393 11075 2999 (wf ab)

-- These might start out with different InhabitType (5), see instance file for future changes with real splineflight movement entrance
UPDATE creature_template SET Faction=50, MovementType=3, InhabitType=1, UnitFlags=320, RangedBaseAttackTime=2000, ExtraFlags=ExtraFlags|4096 WHERE entry=5720; -- Weaver 50 169-224 11075 2999 (wf ab)
UPDATE creature_template SET MovementType=3, InhabitType=1, UnitFlags=320, RangedBaseAttackTime=2000, ExtraFlags=ExtraFlags|4096 WHERE entry=5721; -- Dreamscythe 50 296-393 11075 2999 (wf ab)

DELETE FROM creature_movement_template WHERE entry IN (5720,5721,5722);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(5720, 0, 10, -455.27783, 101.90881, -91.1929, 100, 0, 0),
(5720, 0, 11, -455.119, 101.936, -94.5187, 3.664992809295654296, 0, 0),
(5720, 0, 12, -458.52356, 102.71765, -94.52078, 100, 1, 572001),
-- (5720, 1, 1, -441.48523, 94.42815, -92.98178, 100, 0, 0),
(5720, 1, 2, -428.70865, 75.63319, -90.75833, 100, 0, 0),
(5720, 1, 3, -443.8896, 64.24854, -91.11068, 100, 0, 0),
(5720, 1, 4, -470.57764, 54.71567, -90.94792, 100, 0, 0),
(5720, 1, 5, -495.19, 67.01, -91.10, 100, 0, 0), -- guessed
(5720, 1, 6, -505.58, 84.87, -91.09, 100, 0, 0),
(5720, 1, 7, -505.55, 105.62, -91.10, 100, 0, 0),
(5720, 1, 8, -495.27, 123.49, -91.09, 100, 0, 0),
(5720, 1, 9, -473.27, 130.46, -91.35, 100, 0, 0),
(5720, 1, 10, -456.93, 133.82, -91.09, 100, 0, 0),
(5720, 1, 11, -438.84, 123.49, -91.10, 100, 0, 0),
(5720, 1, 12, -428.44, 105.54, -91.09, 100, 0, 0),
-- Spline Mode: 1 (CatmullRom) - falling
-- (5721, 0, 1, -410.41855, 61.729176, -66.984474, 100, 0, 0),
-- (5721, 0, 2, -411.28458, 62.229176, -66.984474, 100, 0, 0),
-- (5721, 0, 3, -407.57104, 60.537224, -63.790043, 100, 0, 0),
-- (5721, 0, 4, -413.59158, 64.09144, -59.484444, 100, 0, 0),
-- (5721, 0, 5, -418.76453, 67.275375, -58.65112, 100, 0, 0),
-- (5721, 0, 6, -425.1723, 70.304214, -58.73442, 100, 0, 0),
-- (5721, 0, 7, -431.19595, 74.37412, -70.56781, 100, 0, 0),
-- (5721, 0, 8, -435.16385, 77.40635, -82.23453, 100, 0, 0),
-- (5721, 0, 9, -442.12958, 81.53304, -87.45673, 100, 0, 0),
(5721, 0, 10, -454.91425, 88.44565, -90.623405, 100, 0, 0),
(5721, 0, 11, -454.222, 87.8212, -94.4498, 2.645920991897583007, 0, 0),
(5721, 0, 12, -450.55096, 82.19909, -93.527275, 100, 1, 572101),
-- (5721, 1, 1, -467.5771, 60.71298, -91.40983, 100, 0, 0),
(5721, 1, 2, -495.19, 67.01, -91.10, 100, 0, 0), -- guessed
(5721, 1, 3, -505.58, 84.87, -91.09, 100, 0, 0),
(5721, 1, 4, -505.55, 105.62, -91.10, 100, 0, 0),
(5721, 1, 5, -495.27, 123.49, -91.09, 100, 0, 0),
(5721, 1, 6, -473.27, 130.46, -91.35, 100, 0, 0),
(5721, 1, 7, -456.93, 133.82, -91.09, 100, 0, 0),
(5721, 1, 8, -438.84, 123.49, -91.10, 100, 0, 0),
(5721, 1, 9, -428.44, 105.54, -91.09, 100, 0, 0),
(5721, 1, 10, -428.70865, 75.63319, -90.75833, 100, 0, 0),
(5721, 1, 11, -443.8896, 64.24854, -91.11068, 100, 0, 0),
(5721, 1, 12, -470.57764, 54.71567, -90.94792, 100, 0, 0),
(5722, 0, 1, -649.6785, 131.59596, -90.82902, 100, 0, 0),
(5722, 0, 2, -665.83405, 131.50317, -90.82939, 100, 0, 0),
(5722, 0, 3, -673.3382, 107.93626, -90.83093, 100, 0, 0),
(5722, 0, 4, -673.3691, 83.96611, -90.83232, 100, 0, 0),
(5722, 0, 5, -665.69635, 60.20914, -90.83353, 100, 0, 0),
(5722, 0, 6, -649.8461, 60.03304, -90.833176, 100, 0, 0),
(5722, 0, 7, -641.7433, 84.016106, -90.834, 100, 0, 0),
(5722, 0, 8, -641.6724, 107.88358, -90.82973, 100, 0, 0);


UPDATE creature_template_addon SET auras='8247 8876' WHERE entry=5267; -- Unliving Atal'ai
UPDATE creature_template_addon SET auras='13540' WHERE entry IN (
5710, -- Jammal'an the Prophet
5712, -- Zolo
5713, -- Gasher
5715, -- Hukku
5716, -- Zul'Lor
5717  -- Mijan
);
UPDATE creature_template_addon SET auras='9205 12782 13540' WHERE entry=5714; -- Loro

UPDATE creature SET guid=1090143, position_x=-646.4796142578125, position_y=122.121429443359375, position_z=-90.829498291015625, orientation=1.896414637565612792, spawntimesecsmin=86400, spawntimesecsmax=86400, movementtype=0 WHERE id=5719;
UPDATE creature SET guid=1090144, position_x=-649.67852783203125, position_y=131.5959625244140625, position_z=-90.8290176391601562, orientation=1.896413564682006835, spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id=5722;
INSERT INTO creature_spawn_data (guid, id) VALUES
(1090143, 1), -- Morphaz - SPAWN_FLAG_RUN_ON_SPAWN
(1090144, 1); -- Hazzas - SPAWN_FLAG_RUN_ON_SPAWN

DELETE FROM creature_linking_template WHERE entry IN (5711, 5719, 5720, 5721, 8319);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(5720, 109, 5709, 1, 0), -- Weaver -> Shade of Eranikus
(5721, 109, 5709, 1, 0), -- Dreamscythe -> Shade of Eranikus
(8319, 109, 5709, 1, 0), -- Nightmare Whelp -> Shade of Eranikus
(5711, 109, 5710, 3, 0), -- Ogom the Wretched -> Jammal'an the Prophet
(5719, 109, 5722, 515, 0); -- Morphaz -> Hazzas

DELETE FROM dbscripts_on_creature_movement WHERE id IN (571901, 572201);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(572001, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Weaver 5720 - Set Hover Off'),
(572001, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weaver 5720 - Set Run On'),
(572001, 0, 2, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weaver 5720 - Set Path 1'),
(572001, 0, 3, 48, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weaver 5720 - Remove UNIT_FLAG_IMMUNE_TO_PLAYER'),

(572101, 0, 0, 39, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreamscythe 5721 - Set Hover Off'),
(572101, 0, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreamscythe 5721 - Set Run On'),
(572101, 0, 2, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreamscythe 5721 - Set Path 1'),
(572101, 0, 3, 48, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreamscythe 5721 - Remove UNIT_FLAG_IMMUNE_TO_PLAYER');
