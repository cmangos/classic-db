-- Spawn missing triggers NPCs 17286 (Invisible Man)
SET @GUID := 52059;
DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 6;
INSERT INTO creature VALUES
(@GUID + 1,17286,533,0,0,3489.61,-3839.83,322,1.53865,3600,3600,0,0,0,0,0,0),
(@GUID + 2,17286,533,0,0,3507.45,-3838.96,322,1.5198,3600,3600,0,0,0,0,0,0),
(@GUID + 3,17286,533,0,0,3526.49,-3842.83,322,1.04228,3600,3600,0,0,0,0,0,0),
(@GUID + 4,17286,533,0,0,3541.51,-3852.34,322,0.602457,3600,3600,0,0,0,0,0,0),
(@GUID + 5,17286,533,0,0,3551.26,-3865.88,322,0.458729,3600,3600,0,0,0,0,0,0),
(@GUID + 6,17286,533,0,0,3558.49,-3883.9,321.5,0.113154,3600,3600,0,0,0,0,0,0);

-- Update flags and speed for NPCs 17286 (Invisible Man) and 16486 (Web Wrap)
UPDATE creature_template SET UnitFlags=(33554432+262144), ExtraFlags=64, InhabitType=4, SpeedWalk=1, SpeedRun=1.14286 WHERE Entry=17286; -- Invisible Man
UPDATE creature_template SET UnitFlags=262144, InhabitType=4 WHERE Entry=16486; -- Web Wrap

-- Add template addon for NPC 17286 (Invisible Man)
DELETE FROM creature_template_addon WHERE entry IN (17286, 16486);
INSERT INTO creature_template_addon VALUES (17286, 0, 0, 1, 16, 0, 0, '28782');

-- Add missing spell targets for spells used in Maexxna encounter
DELETE FROM spell_script_target WHERE entry IN (28617, 29108);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask)
VALUES
(28617, 1, 17286, 0), -- Web Wrap -> Invisible Man
(29108, 1, 16486, 0); -- Kill Web Wrap -> Web Wrap