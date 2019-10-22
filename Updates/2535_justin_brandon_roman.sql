-- TODO: the group should cycle from current spawn location (docks between The Park and Cathedral Square) and an alternate location (docks between Dwarven District and Cathedral Square) about once every half hour
-- they walk as a group around the outer perimeter of Cathedral Square, and they do not stop their conversations while walking
-- Justin says, "Hey guys, let's try on the other side." (Broadcast Text ID 1090) before starting waypoint movement - the other two children follow him
-- potential ending points when reaching the other dock:
-- Roman -8583.88, 633.127, 96.3386, 5.02218
-- Brandon -8580.51, 635.108, 96.3386, 5.02218
-- Justin -8582.03, 633.634, 96.3386, 5.02218

DELETE FROM `dbscripts_on_relay` WHERE `id`=4;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4, 0, 0, 901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Justin 1368 - Random Text'),
(4, 3, 0, 902, 0, 0, 1370, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Brandon 1370 - Random Text'),
(4, 14, 0, 903, 0, 0, 1371, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Roman 1371 - Random Text');

DELETE FROM `dbscript_random_templates` WHERE `id` IN (901,902,903);
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(901, 0, 2000001900, 0, 'Justin 1368 - Random Texts'), (901, 0, 2000001901, 0, 'Justin 1368 - Random Texts'),
(901, 0, 2000001902, 0, 'Justin 1368 - Random Texts'), (901, 0, 2000001903, 0, 'Justin 1368 - Random Texts'),
(901, 0, 2000001904, 0, 'Justin 1368 - Random Texts'), (901, 0, 2000001905, 0, 'Justin 1368 - Random Texts'),
(901, 0, 2000001906, 0, 'Justin 1368 - Random Texts'), (901, 0, 2000001907, 0, 'Justin 1368 - Random Texts'),

(902, 0, 2000001908, 0, 'Brandon 1370 - Random Texts'), (902, 0, 2000001909, 0, 'Brandon 1370 - Random Texts'),
(902, 0, 2000001910, 0, 'Brandon 1370 - Random Texts'), (902, 0, 2000001911, 0, 'Brandon 1370 - Random Texts'),
(902, 0, 2000001912, 0, 'Brandon 1370 - Random Texts'), (902, 0, 2000001913, 0, 'Brandon 1370 - Random Texts'),
(902, 0, 2000001914, 0, 'Brandon 1370 - Random Texts'), (902, 0, 2000001915, 0, 'Brandon 1370 - Random Texts'),

(903, 0, 2000001916, 0, 'Roman 1371 - Random Texts'), (903, 0, 2000001917, 0, 'Roman 1371 - Random Texts'),
(903, 0, 2000001918, 0, 'Roman 1371 - Random Texts'), (903, 0, 2000001919, 0, 'Roman 1371 - Random Texts'),
(903, 0, 2000001920, 0, 'Roman 1371 - Random Texts'), (903, 0, 2000001921, 0, 'Roman 1371 - Random Texts'),
(903, 0, 2000001922, 0, 'Roman 1371 - Random Texts'), (903, 0, 2000001923, 0, 'Roman 1371 - Random Texts');

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001900 AND 2000001923;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `language`, `comment`) VALUES
(2000001900, 'And that''s how Lothar killed thirty six orcs with his bare hands!', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 149)'),
(2000001901, 'And so the knights stood before the charging Horde and held their ground as a thousand berserk orcs came through the valley.', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 150)'),
(2000001902, 'They say he can turn into a raven sometimes.', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 151)'),
(2000001903, 'You know why orc eyes glow red? It''s because they drink blood!', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 152)'),
(2000001904, 'There is no spoon.', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 153)'),
(2000001905, 'I swear, people have actually seen them. Pandaren really do exist!', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 154)'),
(2000001906, 'And then the rabbit just bit his head off... I swear.', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 155)'),
(2000001907, 'You know there are crocolisks in the Canals. They were brought from the swamp as pets, but got thrown in the canals.', 7, 'Justin 1368 - Random Texts (Broadcast Text ID 156)'),

(2000001908, 'Really?', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 147)'),
(2000001909, 'Wow.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 157)'),
(2000001910, 'Oh yeah, I heard about that.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 158)'),
(2000001911, 'Oh c''mon, that''s not true.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 166)'),
(2000001912, 'That''s neat.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 167)'),
(2000001913, 'My father says that''s just a story.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 168)'),
(2000001914, 'Can you imagine?', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 169)'),
(2000001915, 'Sounds kinda like one of Billy''s fish stories to me.', 7, 'Brandon 1370 - Random Texts (Broadcast Text ID 170)'),

(2000001916, 'I thought I heard something.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 171)'),
(2000001917, 'I think I see something.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 172)'),
(2000001918, 'Eww... that''s not a fish!', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 173)'),
(2000001919, 'I got worm guts on my shoes.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 174)'),
(2000001920, 'Something smells funny.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 175)'),
(2000001921, 'I hope that was a fish!', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 176)'),
(2000001922, 'I don''t think there''s any fish in these canals.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 177)'),
(2000001923, 'Worm goes on the hook, hook goes in the water. Fish is in the water, our fish.', 7, 'Roman 1371 - Random Texts (Broadcast Text ID 178)');

-- remove old and duplicate texts
UPDATE `creature` SET `MovementType`=0 WHERE `id` IN (1368,1370,1371);
DELETE FROM `creature_movement` WHERE `id` IN (79815,79816,79817);
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000005109 AND 2000005115;
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000005116 AND 2000005122;
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000005123 AND 2000005131;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 136801 AND 136807;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 137001 AND 137009;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 137101 AND 137107;
