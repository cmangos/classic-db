-- Correct SpeedWalk for Ruul Snowhoof 12818
-- [7] Walk Speed: 3
-- [7] Run Speed: 8
-- [7] (0) OBJECT_FIELD_GUID: Full: 0xF3354672 UInt64: 4080354930
-- [7] (2) OBJECT_FIELD_TYPE: (9) Object, Unit
-- [7] (3) OBJECT_FIELD_ENTRY: 12818
UPDATE creature_template SET SpeedWalk=(3 / 2.5) WHERE entry=12818;
