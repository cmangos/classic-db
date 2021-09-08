-- Add missing auras for NPC 6508 (Venomhide Ravasaur)
UPDATE creature_template_addon SET auras='14108' WHERE entry=6508;
-- Add missing auras for NPC 6509 (Bloodpetal Lasher), 6510 (Bloodpetal Flayer), 6512 (Bloodpetal Trapper)
UPDATE creature_template_addon SET auras='14111' WHERE entry IN (6509, 6510, 6512);
-- Add missing auras for NPC 6517 (Tar Beast), 6518 (Tar Lurker), 6519 (Tar Lord), 6527 (Tar Creeper)
UPDATE creature_template_addon SET auras='14178' WHERE entry IN (6517, 6518, 6519, 6527);
-- Add missing aura for NPC 6556 (Muculent Ooze)
UPDATE creature_template_addon SET auras='14133' WHERE entry=6556;
-- Add missing aura for NPC 10407 (Muculent Ooze)
UPDATE creature_template_addon SET auras='8876 18950' WHERE entry=10407;
