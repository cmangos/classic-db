-- Adds completion text for quest 1653 (The Test of Righteousness)
-- source: http://www.wowwiki.com/Quest:The_Test_of_Righteousness_(1)
UPDATE `quest_template` SET `OfferRewardText` = 'Good day, $N. The Light is with you, I trust?$B$BWhat\'s that? You were sent by Duthorian!? My wife, how is she? I knew there was going to be trouble if I left.$B$BPlease tell me she\'s... oh, thank goodness. I\'m so glad that she\'s safe. The Defias were a threat long before these attacks, but now the King\'s advisors cannot deny it.$B$BWhat else did Duthorian have to say? You\'re the one that was sent to protect my wife? Then I thank you again, $N. I couldn\'t think of a better test of valor than that.' WHERE `entry` = 1653;

