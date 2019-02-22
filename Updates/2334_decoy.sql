-- Add missing spawn of GO 180659 (Drop-Off Point)
-- This fixes quest 8606 (Decoy!) and closes to #105
-- Source: https://www.youtube.com/watch?v=7ag6xbC_Yrk
DELETE FROM gameobject WHERE id=180659;
INSERT INTO gameobject VALUES
(151771, 180659, 1, 5086.19, -5116.32, 931.162, 4.78877, 0, 0, 0.679593, -0.733589, 150, 150, 0, 1);

-- Fix template of GO 180660 (Sack of Gold) that was wrongly using the same one as GO 180659
UPDATE gameobject_template SET type=5, name='Sack of Gold', displayId=6484, data0=0, data1=1 WHERE entry=180660;

-- Make the NPCs follow waypoints by default
UPDATE creature_template SET MovementType=2 WHERE entry IN (15552, 15553);
UPDATE creature_template SET SpeedWalk=1.7 WHERE entry=15553;

-- Remove stand state from template addon, will now be handled through spawn addon
UPDATE creature_template_addon SET bytes1=0 WHERE entry=15552;

-- Fix static spawn of Doctor Weavil that was sleeping *under* his bed...
UPDATE creature SET position_z=34.5282 WHERE id=15552;
DELETE FROM creature_addon WHERE guid=18614;
INSERT INTO creature_addon VALUES
(18614, 0, 3, 1, 16, 0, 0, '');

-- Add texts for event
SET @TXT := 2000000037;
DELETE FROM dbscript_string WHERE entry BETWEEN @TXT AND @TXT + 3;
INSERT INTO dbscript_string (entry, content_default, emote, type) VALUES
(@TXT, 'No hello for your old friend, Narain? Who were you expecting???', 1, 0),
(@TXT + 1, '%s eyes you suspiciously.', 1, 2),
(@TXT + 2, 'So... You thought you could fool me, did you? The greatest criminal mastermind Azeroth has ever known???', 1, 0),
(@TXT + 3, 'I see right through your disguise, $r. Number Two! Number Two kill!', 1, 0);

DELETE FROM conditions WHERE condition_entry=1150;
INSERT INTO conditions VALUES
(1150, 1, 25688, 0, 'Player Has Aura: 25688, EffectIndex: 0');

-- Add script for spell event
DELETE FROM dbscripts_on_event WHERE id=9527;
INSERT INTO dbscripts_on_event VALUES
(9527, 0, 34, 1150, 0, 0, 0, 0, 0x08, 0, 0, 0, 0, 0, 0, 0, 0, 'Place loot - Terminate if missing aura'),
(9527, 3, 10, 15553, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 5107.60,-5153.11,945.29,1.8841, 'Place loot - Summon Doctor Weavil Flying Machine'),
(9527, 39, 36, 0, 0, 0, 15552, 20, 0x03, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Faces Player'),
(9527, 38, 40, 0, 0, 0, 180660, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Bag of Gold'),
(9527, 39, 0, 0, 0, 0, 15552, 20, 0x03, @TXT, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Say'),
(9527, 45, 1, 25, 0, 0, 15552, 20, 0x03, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Emote'),
(9527, 45, 0, 0, 0, 0, 15552, 20, 0x03, @TXT + 1, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Text emote'),
(9527, 47, 0, 0, 0, 0, 15552, 20, 0x03, @TXT + 2, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Say'),
(9527, 55, 0, 0, 0, 0, 15552, 20, 0x03, @TXT + 3, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Say'),
(9527, 57, 10, 15554, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 5101.05,-5086.58,925.852,4.27248, 'Summon Number Two'),
(9527, 57, 25, 1, 0, 0, 15552, 20, 0x03, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Set run ON'),
(9527, 58, 20, 2, 1, 0, 15552, 20, 0x03, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Unpause WP movement'),
(9527, 58, 26, 0, 0, 0, 15554, 60, 0x03, 0, 0, 0, 0, 0, 0, 0, 0, 'Make Number Two attack player');

-- Add movement templates
-- Doctor Weavil
DELETE FROM creature_movement_template WHERE entry=15552;
INSERT INTO creature_movement_template VALUES
(15552, 0, 1, 5087.84,    -5078.97,    921.911,    4.785346, 0, 0, NULL),
(15552, 0, 2, 5088.041016,-5086.741699,922.343689, 4.675390, 0, 0, NULL),
(15552, 0, 3, 5085.540039,-5106.164551,928.060547, 4.491607, 0, 0, NULL),
(15552, 0, 4, 5085.85,    -5109.65,    929.596,    4.87331, 0, 0, NULL),
(15552, 0, 5, 5086.583984,-5112.067871,930.326904, 5.026431, 0, 1555201, NULL),
(15552, 0, 6, 5086.583984,-5112.067871,930.326904, 1.026431, 0, 0, NULL),
(15552, 1, 1, 5088.041016,-5086.741699,922.343689, 4.675390, 0, 0, NULL),
(15552, 1, 2, 5087.84,    -5078.97,    921.911,    4.785346, 0, 1555202, NULL);

-- Doctor Weavil Flying Machine
DELETE FROM creature_movement_template WHERE entry=15553;
INSERT INTO creature_movement_template VALUES
(15553, 0, 1, 5107.60,-5153.11,945.29,1.8841, 0, 0, NULL),
(15553, 0, 2, 5093.37,-5113.39,932.313,1.80318, 0, 0, NULL),
(15553, 0, 3, 5087.84,-5078.97,921.911,1.81497, 0, 1555301, NULL),
(15553, 0, 4, 5087.84,-5078.97,921.911,1.814971, 0, 0, NULL),
(15553, 0, 5, 5091.67,-5048.59,931.124,1.29111, 0, 1555302, NULL);

-- Add scripts for movements
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1555201, 1555301);
INSERT INTO dbscripts_on_creature_movement VALUES
(1555301, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Flying Machine - Pause WP movement'),
(1555301, 0, 10, 15552, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 5087.84,-5078.97,921.911,1.81497, 'Doctor Weavil Flying Machine - Summon Doctor Weavil'),
(1555301, 1, 22, 35, 0x01, 0, 15552, 30, 0, 0, 0, 0, 0, 0,0,0,0, 'Doctor Weavil Flying Machine - Doctor Weavil change faction'),
(1555302, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil Flying Machine - Despawn self'),
(1555201, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Pause WP movement'),
(1555202, 0, 32, 0, 0, 0, 15553, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Unpause Flying Machine WP movement'),
(1555202, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doctor Weavil - Despawn self');
