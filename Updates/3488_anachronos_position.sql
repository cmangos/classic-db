-- Fix positions of two dragons in Tanaris that were below map: Chronalis (9187) and Anachronos (that was also not at the right position)
UPDATE creature SET position_z=position_z+0.1 WHERE id=8197;
UPDATE creature SET position_x=-8175.13, position_y=-4720.23, position_z=27.1656, orientation=1.644168 WHERE id=15192;
