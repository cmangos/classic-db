-- Fixed two backported companions causing server.log errors because of unsupported WotLK creature type (12)
-- Thanks Neotmiren for pointing and fixing. This closes #492 
UPDATE `creature_template` SET `CreatureType` = 2 WHERE `entry` IN (14755, 14756); -- Tiny Green Dragon, Tiny Red Dragon -> dragonkin
