-- Removed item 5876 (Blueleaf Tuber) from creature loot tables in Razorfen Kraul instance as it is looted
-- from gameobject 20920 (Blueleaf Tuber)
-- Source: http://www.wowhead.com/item=5876#contained-in-object
DELETE FROM `creature_loot_template` WHERE `item` = 5876;
