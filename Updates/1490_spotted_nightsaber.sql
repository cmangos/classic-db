-- Fixed quality of item 8632 (Reins of the Spotted Nightsaber): it should be rare instead of common
-- Fixed item 8632 (Reins of the Spotted Nightsaber) by fixing model of NPC 7689 (Spotted Nightsaber)
UPDATE item_template SET Quality = 3 WHERE entry = 8632;
UPDATE creature_template SET ModelId1 = 6447 WHERE Entry = 7689;
