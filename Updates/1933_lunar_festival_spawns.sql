-- Fixed wrong name for NPC 15595, it should be "Elder Bladeleaf"
UPDATE creature_template SET Name="Elder Bladeleaf" WHERE Entry=15595;

-- Added missing addon for NPC 15607 (Elder Farwhisper)
DELETE FROM creature_template_addon WHERE entry=15607;
INSERT INTO creature_template_addon VALUES
(15607, 0, 0, 1, 16, 0, 0, '25824');

SET @GUID := 12158;
-- Added missing spawn for NPCs 15561, 15567 & 15607 involved in Lunar Festival
DELETE FROM creature WHERE guid IN (@GUID, @GUID + 1, @GUID + 2);
INSERT INTO creature (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax) VALUES
(@GUID, 15561, 0, 514.754, 1560.97, 130.145, 4.39823, 300, 300),
(@GUID + 1, 15567, 0, -7274.65, -801.765, 296.871, 6.14681, 300, 300),
(@GUID + 2, 15607, 329, 3705.5, -3466.29, 130.77, 6.22097, 300, 300);

DELETE FROM game_event_creature WHERE guid IN (@GUID, @GUID + 1, @GUID + 2);
INSERT INTO game_event_creature VALUES
(@GUID, 7),
(@GUID + 1, 7),
(@GUID + 2, 7);

UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
