-- Fixed quest / gameobjects relation in Darkshore for the washed ashore quest line (Alliance only)
-- Thanks Galatean for reporting. Thanks trulynullified for fixing.
-- This closes #647 
UPDATE `gameobject_questrelation` SET `quest` = '4728' WHERE `id` = '175226';
UPDATE `gameobject_questrelation` SET `quest` = '4730' WHERE `id` = '175227';
UPDATE `gameobject_questrelation` SET `quest` = '4722' WHERE `id` = '176190';
UPDATE `gameobject_questrelation` SET `quest` = '4732' WHERE `id` = '176191';
UPDATE `gameobject_questrelation` SET `quest` = '4727' WHERE `id` = '176196';
UPDATE `gameobject_questrelation` SET `quest` = '4725' WHERE `id` = '176197';
UPDATE `gameobject_questrelation` SET `quest` = '4731' WHERE `id` = '176198';
UPDATE `gameobject_questrelation` SET `quest` = '4733' WHERE `id` = '175230';
UPDATE `gameobject_questrelation` SET `quest` = '4723' WHERE `id` = '175233';

-- Fixed quest text for quest 4727 (Beached Sea Turtle) which was using text from a similar quest instead
UPDATE `quest_template` SET `OfferRewardText` = 'You\'ve found even more beached creatures, $N?  Sea turtles were commonly found frolicking along the base of Nordrassil before it was destroyed.  With the birth of Teldrassil, however, these creatures have been seen in ever decreasing numbers.  Some, as we have discovered, end their lives here for some unknown reason.$B$BYour aid will perhaps unlock the mystery before us.  Please accept this in exchange for the remains you have provided for our study.' WHERE `entry` = 4727;
