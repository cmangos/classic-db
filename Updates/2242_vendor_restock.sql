 -- https://web.archive.org/web/20160602130320/http://www.wowhead.com/npc=8178/nina-lightbrew#sells
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8178 AND item=3928;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8178 AND item=6149;
UPDATE npc_vendor SET maxcount=1, incrtime=14400 WHERE entry=8178 AND item=9300;

-- https://web.archive.org/web/20120730230823/http://www.wowhead.com:80/npc=8177/rartar#sells
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8177 AND item=3928;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8177 AND item=6149;
UPDATE npc_vendor SET maxcount=1, incrtime=14400 WHERE entry=8177 AND item=9300;

-- https://web.archive.org/web/20120114022129/http://www.wowhead.com:80/npc=8157/logannas#sells
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8157 AND item=3928;
UPDATE npc_vendor SET maxcount=1, incrtime=1800 WHERE entry=8157 AND item=6057;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=8157 AND item=6149;
UPDATE npc_vendor SET maxcount=1, incrtime=1800 WHERE entry=8157 AND item=9302;

-- https://web.archive.org/web/20111001032753/https://www.wowhead.com/npc=4899#sells
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=4899 AND item=1710;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=4899 AND item=3827;
DELETE FROM npc_vendor WHERE entry=4899 AND item=6217;

-- https://web.archive.org/web/20120129015803/http://www.wowhead.com:80/npc=3134/kzixx#sells
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=3134 AND item=3385;
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=3134 AND item=6053; -- make same as 3490

-- https://web.archive.org/web/20150627062838/http://www.wowhead.com/npc=1685/xandar-goodbeard	
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=1685 AND item=6053; -- same as 3490
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=1685 AND item=5640;

-- https://web.archive.org/web/20121107043620/http://www.wowhead.com:80/npc=2812/drovnar-strongbrew
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=2812 AND item=1710;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2812 AND item=3827;
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=2812 AND item=6056;	

-- https://web.archive.org/web/20150423003852/http://www.wowhead.com:80/npc=2805/deneb-walker#sells
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=2805 AND item=954;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=1478;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=1711;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=1712;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=2290;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=3012;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=2805 AND item=3385;

-- https://web.archive.org/web/20120517031454/http://www.wowhead.com:80/npc=4083/jeeda
-- https://www.wowhead.com/npc=2380/nandar-branson
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=2380 AND item=1710;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=2380 AND item=3827;
UPDATE npc_vendor SET maxcount=1, incrtime=7200 WHERE entry=2380 AND item=6055; -- same as 4083

-- https://web.archive.org/web/20120317112511/http://www.wowhead.com:80/npc=2480/brokin
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=2480 AND item=1710;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=2480 AND item=3827;

-- https://web.archive.org/web/20120221170452/http://www.wowhead.com:80/npc=1307/charys-yserian
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=1307 AND item=3385;

-- https://web.archive.org/web/20111127102001/http://www.wowhead.com:80/npc=983/thultazor#sells
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=983 AND item=6149;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=983 AND item=3928;

-- https://web.archive.org/web/20120503194414/http://www.wowhead.com:80/npc=958/dawn-brightstar#sells
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=958 AND item=2455;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=958 AND item=858;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=958 AND item=3012;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=958 AND item=955;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=958 AND item=3013;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=958 AND item=1181;
UPDATE npc_vendor SET maxcount=3, incrtime=7200 WHERE entry=958 AND item=1180;
UPDATE npc_vendor SET maxcount=2, incrtime=7200 WHERE entry=958 AND item=954;

-- Alchemy Supplies Vendor Template
UPDATE npc_vendor_template SET maxcount=3, incrtime=7200 WHERE entry=127 AND item IN (858,3385);