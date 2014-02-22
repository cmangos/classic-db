-- Fixed creature 15928 (Thaddius) flags to make it unattackable until first part of encounter is complete
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | (256 + 64) WHERE `entry` = 15928;

-- Fixed position of creature 15928 (Thaddius) because it was standing to close of the edge of the plateform to allow correct raid positionning
UPDATE `creature` SET `position_x` = 3508.018, `position_y` = -2931.33, `position_z` = 303.0154 WHERE `id` = 15928;
