-- Making Amends should not be offered when reputation is neutral or above
-- As should other quests
-- http://www.wowhead.com/quest=9266/making-amends
-- http://www.wowhead.com/quest=9259/traitor-to-the-bloodsail
-- http://www.wowhead.com/quest=9267/mending-old-wounds
-- http://www.wowhead.com/quest=9268/war-at-sea
UPDATE quest_template SET RequiredMaxRepValue=0 WHERE entry IN (9259, 9266, 9267, 9268);
