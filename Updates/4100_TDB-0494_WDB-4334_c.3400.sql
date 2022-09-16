-- Xen'to <Cooking Supplier> 3400 move to correct place & add equipment
UPDATE creature SET position_x = 1779.08, position_y = -4488.08, position_z = 45.5038, orientation = 4.69494 WHERE guid = 6631;
UPDATE `creature_equip_template` SET `equipentry2` = 4993 WHERE `entry` = 3400;

