-- Fixed typos in text.
-- http://wowwiki.wikia.com/wiki/Quest:Blood_Feeders
UPDATE quest_template SET	-- gusts -> guests
	OfferRewardText="Sweet, mon! Good news, perhaps we will have fewer unwanted dinner guests tonight.$B$BAs I said earlier, we are in your debt... maybe you would care for one of these for your deed?"
	-- there -> their
	, RequestItemsText="Hey mon, have you slain the hairy blood feeders? I fear none here in Stonetalon but I don't go walking around here at night... if you know what I mean mon!$B$BAs long as I stay off their dinner plate then all is well.$B$BGood luck to you, $C!"
WHERE entry=6461;
