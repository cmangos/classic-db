-- Add your query below.
-- https://github.com/vmangos/core/commit/d1530259ee74d4921b2f1919e4f4c314e67029c2

-- https://www.youtube.com/watch?v=Oy97i2u6b4I
-- https://youtu.be/L9oPRQjT5Rs?t=44
-- https://tbc.wowhead.com/search?q=Stormscale

-- https://youtu.be/vJPYFChdieM?t=71
-- https://tbc.wowhead.com/search?q=Bleakheart+#npcs

-- Add aura Curse of the Bleakheart Proc and remove wrong Enrage from Bleakheart Satyr.
-- UPDATE creature_template_addon SET auras='6947' WHERE entry=3765;

-- Add auras Curse of the Bleakheart Proc and Poison Proc and remove wrong Enrage from Bleakheart Trickster 3767
UPDATE creature_template_addon SET auras='3616 6947' WHERE entry=3767;

-- Add auras Curse of the Bleakheart Proc, Correct Stealth Auras and remove wrong Enrage from Bleakheart Shadowstalker 3770
UPDATE creature_template_addon SET auras='6947 7939 22766' WHERE entry=3770; -- s.30831 befor

-- Add aura Curse of the Bleakheart Proc and remove wrong Enrage from Bleakheart Hellcaller 3771
UPDATE creature_template_addon SET auras='6947' WHERE entry=3771;

-- Add aura Knockdown Proc for Stormscale Myrmidon
UPDATE creature_template_addon SET auras='7095' WHERE entry=2181;

-- Add aura Poison Proc for Vile Sprite
UPDATE creature_template_addon SET auras='11959' WHERE entry=2189;

-- Add aura Thrash Proc for Thessala Hydra
UPDATE creature_template_addon SET auras='3417' WHERE entry=12207;

-- End of migration.

DELETE FROM creature WHERE id=7016;
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(191397, 7016, 1, 7397.51, -844.687, 18.4878, 4.60328, 30600, 45000, 2, 1),
(191398, 7016, 1, 7524.58, -850.359, 21.5718, 1.61665, 30600, 45000, 5, 1),
(191399, 7016, 1, 7380.64, -1052.09, 38.3465, 2.5655, 30600, 45000, 5, 1),
(191400, 7016, 1, 7606.33, -910.943, 17.3497, 3.8359, 30600, 45000, 5, 1),
(191401, 7016, 1, 7515.89, -1088.02, 37.9308, 4.61563, 30600, 45000, 7, 1),
(191402, 7016, 1, 7644.24, -980.408, 33.0942, 1.76838, 30600, 45000, 0, 2),
(191403, 7016, 1, 7379.52, -847.587, 18.134, 3.21432, 30600, 45000, 2, 1),
(191404, 7016, 1, 7311.98, -983.95, 31.76, 4.579, 30600, 45000, 2, 1);

-- wander_distance 11.0168, waypoint_count 29
-- copy of 37615 path as the spawn point is somewhat on it.
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(191402, 1, 7659.46, -968.958, 29.0887, 0, 0, 0, NULL),
(191402, 2, 7662.26, -948.912, 25.9849, 0, 0, 0, NULL),
(191402, 3, 7660.97, -960.325, 27.5803, 0, 0, 0, NULL),
(191402, 4, 7664.15, -962.166, 27.4713, 0, 0, 0, NULL),
(191402, 5, 7682.28, -964.132, 27.0681, 0, 0, 0, NULL),
(191402, 6, 7671.51, -964.996, 27.3553, 0, 0, 0, NULL),
(191402, 7, 7655, -971.923, 30.3417, 0, 0, 0, NULL),
(191402, 8, 7650.14, -977.008, 31.9573, 0, 0, 0, NULL),
(191402, 9, 7639.56, -986.129, 34.1276, 0, 0, 0, NULL),
(191402, 10, 7627.26, -997.239, 36.1259, 0, 0, 0, NULL),
(191402, 11, 7629.15, -999.852, 36.9551, 0, 0, 0, NULL),
(191402, 12, 7637.15, -991.501, 35.2249, 0, 0, 0, NULL),
(191402, 13, 7648.99, -979.068, 32.4709, 0, 0, 0, NULL);

INSERT INTO pool_template (entry, max_limit, description) VALUES
(1268, 1, 'Lady Vespira (7016)');

INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(7016, 1268, 0, 'Lady Vespira (7016)');

-- https://youtu.be/L9oPRQjT5Rs?t=389 - 106319 - xyzo guessed by video
DELETE FROM gameobject WHERE guid=300275;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(300275, 106319, 1, 6827.38, -703.42, 64.16, 2.1247, 0, 0, 0, 0, 300, 900, 100, 1);

DELETE FROM pool_gameobject WHERE guid=300275; -- 31311 Darkshore (Cliffspring Falls) - Chest Pool
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(300275, 31311, 0, 'Darkshore (Cliffspring Falls) - Battered Chest (106319)');

-- use creature_spell_list for healing as EAI is unsufficient due to not having separate init min/max and repeated min/max timers anymore with addition of a sperate health% bool

-- Add remaining generic event_lost hp targets
DELETE FROM creature_spell_targeting WHERE Id IN (201,202,203,204,205);
INSERT INTO creature_spell_targeting (Id, Type, Param1, Param2, Param3, Comments) VALUES
(201, 2, 50, 1, 1, 'Support - Missing 50% including self'), -- AI_EVENT_LOST_HEALTH including self
(202, 2, 90, 1, 1, 'Support - Missing 90% including self'), -- AI_EVENT_CRITICAL_HEALTH including self
(203, 2, 10, 1, 0, 'Support - Missing 10% excluding self'), -- AI_EVENT_LOST_SOME_HEALTH excluding self
(204, 2, 50, 1, 0, 'Support - Missing 50% excluding self'), -- AI_EVENT_LOST_HEALTH excluding self
(205, 2, 90, 1, 0, 'Support - Missing 90% excluding self'); -- AI_EVENT_CRITICAL_HEALTH excluding self

-- Stormscale Siren 2180
UPDATE creature_template SET SpellList=218001 WHERE entry=2180;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(218001, 'Darkshore - Stormscale Siren', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(218001, 0, 11642, 0, 201, 0, 100, 1, 4000, 12000, 18000, 25000, 'Darkshore - Stormscale Siren - Heal on Friendly Missing 50% including self');

-- Stormscale Toxicologist 12321
UPDATE creature_template SET SpellList=1232101 WHERE entry=12321;
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1232101, 'Darkshore - Stormscale Toxicologist', 0, 0);
REPLACE INTO creature_spell_list (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1232101, 0, 11642, 0, 201, 0, 100, 1, 4000, 12000, 18000, 25000, 'Darkshore - Stormscale Toxicologist - Heal on Friendly Missing 50% including self');
