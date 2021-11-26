UPDATE gameobject_template SET Faction=114 WHERE entry=177370; -- diff with wotlk-db (makes the door not clickable so script needed, classic-db also has faction=0 hack)
UPDATE creature_template_addon SET auras='7939 22766' WHERE entry=6035;

UPDATE dbscripts_on_creature_movement SET command=48, datalong=256, datalong2=1, comments='Gahzrilla - Remove UNIT_FLAG_IMMUNE_TO_PLAYER' WHERE command=5 AND id=727301;

UPDATE gameobject SET animprogress=255 WHERE id=177370;
DELETE FROM dbscripts_on_go_template_use WHERE id=175617;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(175617,5000,11,2890049,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Open Door (177370)');

-- Disabled for now beacause 33554432 is out of bound of datalong (medium int unsigned 8 bytes)
-- UPDATE dbscripts_on_creature_movement SET command=48, datalong=33554432, datalong2=0, comments='Captain Kromcrush - Remove UNIT_FLAG_NOT_SELECTABLE' WHERE command=2 AND id=1432501;
-- UPDATE dbscripts_on_creature_movement SET command=48, datalong=33554432, datalong2=1, comments='Captain Kromcrush - Add UNIT_FLAG_NOT_SELECTABLE' WHERE command=2 AND id=573801;
