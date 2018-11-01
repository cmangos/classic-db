-- http://www.wowhead.com/item=1357/captain-sanders-treasure-map#comments:id=248635
UPDATE creature_loot_template SET condition_id=0 WHERE entry IN (126,127,171,391,456,458,513,515,517,520,519) AND item=1357;
-- http://www.wowhead.com/quest=152/the-coast-isnt-clear#comments:id=56914
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN (152);
-- http://www.wowhead.com/quest=104/the-coastal-menace#comments:id=56915
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN (104);
-- http://www.wowhead.com/quest=103/keeper-of-the-flame#comments:id=705881
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN (103);
