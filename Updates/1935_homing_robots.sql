-- Fixed STAND_STATE of Homing Robot NPCs
-- They will no longer slide like dead thing on the ground
UPDATE creature_template_addon SET bytes1=0 WHERE entry IN (7784, 7806, 7807);
