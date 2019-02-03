-- Add Super-Seller 680 - 12246
-- http://web.archive.org/web/20110615163640/http://www.wowhead.com:80/npc=12246#sells:0+1-2
UPDATE creature_template SET SpeedWalk=(2.5 / 2.5), SpeedRun=(6.2 / 7) WHERE entry=12246;

UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=12246 AND item IN (
1477, -- Scroll of Agility II
2290, -- Scroll of Intellect II
4421, -- Scroll of Protection III
1711, -- Scroll of Stamina II
2289, -- Scroll of Strength II
4424 -- Scroll of Spirit III
);

UPDATE npc_vendor SET maxcount=1, incrtime=900 WHERE entry=12246 AND item IN (
3734, -- Recipe: Big Bear Steak
4609, -- Recipe: Barbecued Buzzard Wing
12239, -- Recipe: Dragonbreath Chili
12229, -- Recipe: Hot Wolf Ribs
12227, -- Recipe: Lean Wolf Steak
12233 -- Recipe: Mystery Stew
);

DELETE FROM npc_vendor WHERE entry=12246 AND item IN (
7087, -- https://web.archive.org/web/20041112150438/http://wow.allakhazam.com:80/db/item.html?witem=7087
14630, -- https://web.archive.org/web/20041105053939/http://wow.allakhazam.com/db/item.html?witem=14630
6401	-- https://web.archive.org/web/20070916005629/http://wow.allakhazam.com:80/db/item.html?witem=6401 -- comment that it was removed again
);
