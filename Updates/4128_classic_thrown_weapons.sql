-- Restore Thrown Weapons sold by Vendors - Classic Only (Source: Vmangos)
-- They were revamped with new Item ID in TBC and due to conversion issues it seems they have been deleted from all/most vendors
REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`) VALUES
(151, 2947, 6),(151, 3111, 7),(151, 2946, 8),(151, 3131, 9), -- https://www.wowhead.com/classic/npc=151/brog-hamfist#sells
(152, 3111, 5),(152, 2947, 6), -- https://www.wowhead.com/classic/npc=152/brother-danil
(227, 3107, 10),(227, 3108, 11),(227, 3135, 12),(227, 3137, 13), -- https://www.wowhead.com/classic/npc=227/mabel-solaj
(491, 2947, 9),(491, 2946, 10),(491, 3111, 11),(491, 3131, 12), -- https://www.wowhead.com/classic/npc=491/quartermaster-lewis
(734, 3107, 21),(734, 3108, 22),(734, 15327, 23),(734, 3135, 24),(734, 3137, 25),(734, 15326, 26), -- https://www.wowhead.com/classic/npc=734/corporal-bluth
(791, 2946, 10),(791, 3107, 11),(791, 3131, 12),(791, 3135, 13), -- https://www.wowhead.com/classic/npc=791/lindsay-ashlock
(829, 3111, 5),(829, 2947, 6), -- https://www.wowhead.com/classic/npc=829/adlin-pridedrift
(1149, 3107, 13),(1149, 3108, 14),(1149, 15327, 15),(1149, 3135, 16),(1149, 3137, 17),(1149, 15326, 18), -- https://www.wowhead.com/classic/npc=1149/uthok
(1250, 2947, 6),(1250, 3111, 7),(1250, 2946, 8),(1250, 3131, 9), -- https://www.wowhead.com/classic/npc=1250/drake-lindgren
(1285, 3111, 5),(1285, 2947, 6),(1285, 3107, 15),(1285, 3108, 16),(1285, 3135, 17),(1285, 3137, 18),(1285, 2946, 22),(1285, 3131, 23),(1285, 15327, 30),(1285, 15326, 31), -- https://www.wowhead.com/classic/npc=1285/thurman-mullby
(1448, 3107, 20),(1448, 3108, 21),(1448, 3135, 22),(1448, 3137, 23), -- https://www.wowhead.com/classic/npc=1448/neal-allen
(1452, 3107, 10),(1452, 3108, 11),(1452, 3135, 12),(1452, 3137, 13), -- https://www.wowhead.com/classic/npc=1452/gruham-rumdnul
(1682, 2947, 9),(1682, 2946, 10),(1682, 3111, 11),(1682, 3131, 12), -- https://www.wowhead.com/classic/npc=1682/yanni-stoutheart
(1685, 2947, 9),(1685, 2946, 10),(1685, 3111, 11),(1685, 3131, 12), -- https://www.wowhead.com/classic/npc=1685/xandar-goodbeard
(1691, 2947, 6),(1691, 3111, 7),(1691, 2946, 8),(1691, 3131, 9), -- https://www.wowhead.com/classic/npc=1691/kreg-bilmn
(2084, 3107, 13),(2084, 3108, 14),(2084, 15327, 15),(2084, 3135, 16),(2084, 3137, 17),(2084, 15326, 18), -- https://www.wowhead.com/classic/npc=2084/natheril-raincaller
(2115, 3111, 5),(2115, 2947, 6), -- https://www.wowhead.com/classic/npc=2115/joshua-kien
(2134, 2947, 6),(2134, 3111, 7),(2134, 2946, 8),(2134, 3131, 9), -- https://www.wowhead.com/classic/npc=2134/mrs-winters
(2140, 2947, 9),(2140, 2946, 10),(2140, 3111, 11),(2140, 3131, 12), -- https://www.wowhead.com/classic/npc=2140/edwin-harly
(2401, 3107, 10),(2401, 3108, 11),(2401, 3135, 12),(2401, 3137, 13),(2401, 15327, 20),(2401, 15326, 21), -- https://www.wowhead.com/classic/npc=2401/kayren-soothallow
(2803, 3107, 10),(2803, 3108, 11),(2803, 3135, 12),(2803, 3137, 13),(2803, 15327, 20),(2803, 15326, 21), -- https://www.wowhead.com/classic/npc=2803/malygen
(2806, 3107, 10),(2806, 3108, 11),(2806, 3135, 12),(2806, 3137, 13),(2806, 15327, 20),(2806, 15326, 21), -- https://www.wowhead.com/classic/npc=2806/bale
(2808, 3107, 13),(2808, 3108, 14),(2808, 15327, 15),(2808, 3135, 16),(2808, 3137, 17),(2808, 15326, 18), -- https://www.wowhead.com/classic/npc=2808/vikki-lonsav
(2820, 3107, 13),(2820, 3108, 14),(2820, 15327, 15),(2820, 3135, 16),(2820, 3137, 17),(2820, 15326, 18), -- https://www.wowhead.com/classic/npc=2820/graud
(2908, 3107, 13),(2908, 3108, 14),(2908, 15327, 15),(2908, 3135, 16),(2908, 3137, 17),(2908, 15326, 18), -- https://www.wowhead.com/classic/npc=2908/grawl
(3072, 3111, 5),(3072, 2947, 6), -- https://www.wowhead.com/classic/npc=3072/kawnie-softbreeze
(3076, 2947, 6),(3076, 3111, 7),(3076, 2946, 8),(3076, 3131, 9), -- https://www.wowhead.com/classic/npc=3076/moorat-longstride
(3158, 3111, 5),(3158, 2947, 6), -- https://www.wowhead.com/classic/npc=3158/duokna
(3164, 2947, 6),(3164, 3111, 7),(3164, 2946, 8),(3164, 3131, 9), -- https://www.wowhead.com/classic/npc=3164/jark
(3186, 2947, 6),(3186, 3111, 7),(3186, 2946, 8),(3186, 3131, 9), -- https://www.wowhead.com/classic/npc=3186/kwaii
(3313, 3111, 5),(3313, 2947, 6),(3313, 2946, 9),(3313, 3131, 10),(3313, 3107, 18),(3313, 3135, 19),(3313, 3108, 24),(3313, 3137, 25),(3313, 15327, 30),(3313, 15326, 31), -- https://www.wowhead.com/classic/npc=3313/trakgen
(3350, 3107, 13),(3350, 3108, 14),(3350, 15327, 15),(3350, 3135, 16),(3350, 3137, 17),(3350, 15326, 18), -- https://www.wowhead.com/classic/npc=3350/asoran
(3409, 2947, 13),(3409, 2946, 14),(3409, 3107, 15),(3409, 3108, 16),(3409, 15327, 17),(3409, 3111, 18),(3409, 3131, 19),(3409, 3135, 20),(3409, 3137, 21),(3409, 15326, 22), -- https://www.wowhead.com/classic/npc=3409/zendojian
(3481, 2947, 9),(3481, 2946, 10),(3481, 3111, 11),(3481, 3131, 12), -- https://www.wowhead.com/classic/npc=3481/barg
(3498, 2946, 10),(3498, 3107, 11),(3498, 3131, 12),(3498, 3135, 13), -- https://www.wowhead.com/classic/npc=3498/jazzik
(3541, 3107, 10),(3541, 3108, 11),(3541, 3135, 12),(3541, 3137, 13),(3541, 15327, 20),(3541, 15326, 21), -- https://www.wowhead.com/classic/npc=3541/sarah-raycroft
(3587, 3111, 5),(3587, 2947, 6), -- https://www.wowhead.com/classic/npc=3587/lyrai
(3608, 2947, 6),(3608, 3111, 7),(3608, 2946, 8),(3608, 3131, 9), -- https://www.wowhead.com/classic/npc=3608/aldia
(3625, 3107, 0),(3625, 3108, 0),(3625, 3135, 0),(3625, 3137, 0),(3625, 15326, 0),(3625, 15327, 0), -- (3625, 2946, 0),(3625, 3131, 0) maybe 2 too much, https://www.wowhead.com/tbc/npc=3625/rarck
(3962, 3107, 10),(3962, 3108, 11),(3962, 3135, 12),(3962, 3137, 13), -- https://www.wowhead.com/classic/npc=3962/haljan-oakheart
(4082, 2946, 10),(4082, 3107, 11),(4082, 3131, 12),(4082, 3135, 13), -- https://www.wowhead.com/classic/npc=4082/grawnal
(4084, 2946, 10),(4084, 3107, 11),(4084, 3131, 12),(4084, 3135, 13), -- https://www.wowhead.com/classic/npc=4084/chylina
(4170, 2947, 6),(4170, 3111, 7),(4170, 2946, 8),(4170, 3131, 9),(4170, 3107, 17),(4170, 3135, 18),(4170, 3108, 23),(4170, 3137, 24), -- https://www.wowhead.com/classic/npc=4170/ellandrieth
(4182, 2947, 9),(4182, 2946, 10),(4182, 3111, 11),(4182, 3131, 12), -- https://www.wowhead.com/classic/npc=4182/dalmond
(4203, 2947, 37),(4203, 2946, 38),(4203, 3107, 39),(4203, 3108, 40),(4203, 15327, 41),(4203, 3111, 42),(4203, 3131, 43),(4203, 3135, 44),(4203, 3137, 45),(4203, 15326, 46), -- https://www.wowhead.com/classic/npc=4203/ariyell-skyshadow
(4235, 2947, 1),(4235, 2946, 2),(4235, 3107, 3),(4235, 3108, 4),(4235, 15327, 5),(4235, 3111, 6),(4235, 3131, 7),(4235, 3135, 8),(4235, 3137, 9),(4235, 15326, 10), -- https://www.wowhead.com/classic/npc=4235/turian
(4241, 2947, 6),(4241, 3111, 7),(4241, 2946, 8),(4241, 3131, 9), -- https://www.wowhead.com/classic/npc=4241/mydrannul
(4592, 2947, 1),(4592, 2946, 2),(4592, 3107, 3),(4592, 3108, 4),(4592, 15327, 5),(4592, 3111, 6),(4592, 3131, 7),(4592, 3135, 8),(4592, 3137, 9),(4592, 15326, 10), -- https://www.wowhead.com/classic/npc=4592/nathaniel-steenwick
(4876, 3107, 10),(4876, 3108, 11),(4876, 3135, 12),(4876, 3137, 13), -- https://www.wowhead.com/classic/npc=4876/jawn-highmesa
(4896, 3107, 13),(4896, 3108, 14),(4896, 15327, 15),(4896, 3135, 16),(4896, 3137, 17),(4896, 15326, 18), -- https://www.wowhead.com/classic/npc=4896/charity-mipsy
(5101, 3107, 13),(5101, 3108, 14),(5101, 15327, 15),(5101, 3135, 16),(5101, 3137, 17),(5101, 15326, 18), -- https://www.wowhead.com/classic/npc=5101/bryllia-ironbrand
(5120, 2947, 16),(5120, 2946, 17),(5120, 3107, 18),(5120, 3108, 19),(5120, 15327, 20),(5120, 3111, 21),(5120, 3131, 22),(5120, 3135, 23),(5120, 3137, 24),(5120, 15326, 25), -- https://www.wowhead.com/classic/npc=5120/brenwyn-wintersteel
(5134, 3107, 13),(5134, 3108, 14),(5134, 15327, 15),(5134, 3135, 16),(5134, 3137, 17),(5134, 15326, 18), -- (5134, 2946, 0),(5134, 3131, 0) maybe 2 too much, https://www.wowhead.com/classic/npc=5134/jonivera-farmountain
(7942, 2946, 10),(7942, 3107, 11),(7942, 3131, 12),(7942, 3135, 13),(7942, 3108, 20),(7942, 3137, 21),(7942, 15327, 26),(7942, 15326, 27), -- https://www.wowhead.com/classic/npc=7942/faralorn
(8139, 3107, 13),(8139, 3108, 14),(8139, 15327, 15),(8139, 3135, 16),(8139, 3137, 17),(8139, 15326, 18), -- https://www.wowhead.com/classic/npc=8139/jabbey
(8362, 3111, 5),(8362, 2947, 6),(8362, 2946, 9),(8362, 3131, 10),(8362, 3107, 18),(8362, 3135, 19),(8362, 3108, 24),(8362, 3137, 25),(8362, 15327, 30),(8362, 15326, 31), -- https://www.wowhead.com/classic/npc=8362/kuruk
(11038, 3107, 21),(11038, 3108, 22),(11038, 15327, 23),(11038, 3135, 24),(11038, 3137, 25),(11038, 15326, 26), -- https://www.wowhead.com/classic/npc=11038/caretaker-alen
(11555, 3107, 0),(11555, 3108, 0),(11555, 3135, 0),(11555, 3137, 0),(11555, 15326, 0),(11555, 15327, 0), -- https://www.wowhead.com/classic/npc=11555/gorn-one-eye
(12021, 3107, 10),(12021, 3108, 11),(12021, 3135, 12),(12021, 3137, 13),(12021, 15327, 20),(12021, 15326, 21), -- https://www.wowhead.com/classic/npc=12021/daeolyn-summerleaf
(12027, 2946, 10),(12027, 3107, 11),(12027, 3131, 12),(12027, 3135, 13),(12027, 3108, 20),(12027, 3137, 21),(12027, 15327, 26),(12027, 15326, 27), -- https://www.wowhead.com/classic/npc=12027/tukk
(12246, 3107, 13),(12246, 3108, 14),(12246, 15327, 15),(12246, 3135, 16),(12246, 3137, 17),(12246, 15326, 18), -- https://www.wowhead.com/classic/npc=12246/super-seller-680
(12959, 3107, 21),(12959, 3108, 22),(12959, 15327, 23),(12959, 3135, 24),(12959, 3137, 25),(12959, 15326, 26), -- https://www.wowhead.com/classic/npc=12959/nergal
(12960, 2946, 10),(12960, 3107, 11),(12960, 3131, 12),(12960, 3135, 13),(12960, 3108, 20),(12960, 3137, 21),(12960, 15327, 26),(12960, 15326, 27), -- https://www.wowhead.com/classic/npc=12960/christi-galvanis
(14624, 3107, 13),(14624, 3108, 14),(14624, 15327, 15),(14624, 3135, 16),(14624, 3137, 17),(14624, 15326, 18), -- https://www.wowhead.com/classic/npc=14624/master-smith-burninate
(15174, 3107, 21),(15174, 3108, 22),(15174, 15327, 23),(15174, 3135, 24),(15174, 3137, 25),(15174, 15326, 26); -- https://www.wowhead.com/classic/npc=15174/calandrath

UPDATE `npc_vendor` SET `comments` = 'Balanced Throwing Dagger' WHERE `item` = 2946;
UPDATE `npc_vendor` SET `comments` = 'Small Throwing Knife' WHERE `item` = 2947;
UPDATE `npc_vendor` SET `comments` = 'Crude Throwing Axe' WHERE `item` = 3111;
UPDATE `npc_vendor` SET `comments` = 'Weighted Throwing Axe' WHERE `item` = 3131;
UPDATE `npc_vendor` SET `comments` = 'Gleaming Throwing Axe' WHERE `item` = 15326;
UPDATE `npc_vendor` SET `comments` = 'Wicked Throwing Dagger' WHERE `item` = 15327;
UPDATE `npc_vendor` SET `comments` = 'Heavy Throwing Dagger' WHERE `item` = 3108;
UPDATE `npc_vendor` SET `comments` = 'Deadly Throwing Axe' WHERE `item` = 3137;
UPDATE `npc_vendor` SET `comments` = 'Keen Throwing Knife' WHERE `item` = 3107;
UPDATE `npc_vendor` SET `comments` = 'Sharp Throwing Axe' WHERE `item` = 3135;

