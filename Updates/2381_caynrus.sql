-- Unsheath weapon for NPC 4240 (Caynrus) in Darnassus: he was holding a staff until removal somewhere in TBC or WotLK
-- https://wow.zamimg.com/uploads/screenshots/normal/44841-caynrus.jpg
-- https://wow.zamimg.com/uploads/screenshots/normal/249052-caynrus-no-longer-holds-a-weapon.jpg
UPDATE creature_template_addon SET b2_0_sheath=1 WHERE entry=4240;
