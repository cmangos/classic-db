-- Dire Maul North updates
-- King Gordok position
UPDATE creature SET position_x=829.6969, position_y=481.3277, position_z=37.40153, orientation=3.193953 WHERE id=11501;
-- King Gordok speed
UPDATE creature_template SET SpeedWalk=(2.5 / 2.5), SpeedRun=(12 / 7) WHERE entry=11501; -- King Gordok
-- ModelIds and Nonaggressive for Gordok Spirit 11446
UPDATE creature_template SET ModelId2=13130, ModelId3=13132, ExtraFlags=ExtraFlags|2 WHERE entry=11446; -- Gordok Spirit
