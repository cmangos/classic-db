-- Fixed items 23247 & 23379 for MidSummer Festival
-- Fixed charges and duration of item 23379 (Cinder Bracers) from MidSummer Festival
-- Made items 23379 and 23247 (Burning Blossom) used realtime duration
-- Thanks @Neotmiren for pointing and fixing. This closes #868
-- Sources: 
-- http://www.wowhead.com/item=23379/cinder-bracers
-- http://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-guides/1275-midsummer-fire-festival-print.html
UPDATE item_template SET spellcharges_1=-3, duration=14*24*60*60 WHERE entry=23379 AND spellcharges_1=-1 AND duration=0;
UPDATE item_template SET ExtraFlags=2 WHERE entry IN (23247, 23379);
