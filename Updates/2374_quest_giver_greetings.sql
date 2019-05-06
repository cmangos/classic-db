UPDATE questgiver_greeting SET Type=1 WHERE Entry=2713; -- Wanted Board (gameobject, not creature)

UPDATE questgiver_greeting SET Text="Curse that Brewers' League! They have access to all the best ingredients, while we're stuck here grubbing for grain and hops!$B$BI really would like to give them some bitter tasting justice..." WHERE Entry=1374; -- Rejold Barleybrew

DELETE FROM questgiver_greeting WHERE Entry IN (5770,2276,186420,4794,7884,10306,23572);
INSERT INTO questgiver_greeting (Entry, Type, EmoteId, EmoteDelay, Text) VALUES
(5770,0,0,0,"If we are to protect nature, then we must embrace its strength.  And we must show this strength to those who would harm the land."), -- Nara Wildmane
(2276,0,0,0,"When I was first offered the title of Southshore Magistrate I was exalted to have earned such a commission so early in my career.$B$BBut now that I'm here, I wonder if I'd have been better off shuffling papers in Stormwind."), -- Magistrate Henry Maleb
(186420,1,0,0,"This collection of scrolls contains various logistic and strategic information, as well as coded correspondences."), -- Syndicate Documents
(4794,0,0,0,"Researching in Theramore is an interesting job, but it's sure hard to find a soft bed in this town!"), -- Morgan Stern
(7884,0,0,0,""), -- Fraggar Thundermantle
(10306,0,0,0,""); -- Trull Failbane
