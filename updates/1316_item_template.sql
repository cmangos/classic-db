-- Fixed faction requirements of PvP items (consumables)
-- from BG supply officers
-- Thanks @Kelzior and @TheTrueAnimal for reporting. This contributes to #675 and #819 
-- Sources: 
-- http://wowwiki.wikia.com/wiki/Major_Healing_Draught?oldid=179857
-- http://www.wowhead.com/item=17348/major-healing-draught#comments

UPDATE item_template SET RequiredReputationFaction = 0, RequiredReputationRank = 0 WHERE entry IN
(17348,17349,17351,17352,19060,19066,19067,19061,19062,19068,19301,19307,19318);
