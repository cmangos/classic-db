-- Added missing quest completion text for quests 1019 & 1047 (The New Frontier)
-- This closes #111
UPDATE quest_template SET OfferRewardText='What makes you think I wish to be pestered by the likes of you, $C? Wait - let me stop the important duties I attend to on a daily basis so I can help you locate a doodad somewhere. By all means, the welfare of Darnassus - nay, all of Teldrassil - should come second to the acquisition of a bauble for your collection.$B$BThe fools in Moonglade waste my time with their call for assistance, and now I must endure this?' WHERE Entry IN (1019, 1047);
