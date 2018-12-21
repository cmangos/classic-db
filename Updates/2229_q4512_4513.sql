-- Add potential corpses for item 11953, 11914, 11948 usage
DELETE FROM item_required_target WHERE entry IN (11953, 11914, 11948);
INSERT INTO item_required_target (entry, type, targetEntry) VALUES
(11914, 2, 7086), -- https://www.wowhead.com/quest=4512/a-little-slime-goes-a-long-way#comments:id=42411:reply=56995
(11948, 2, 7092), -- https://www.wowhead.com/quest=4512/a-little-slime-goes-a-long-way#comments:id=42411:reply=56995
-- 2655 https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=936798
(11953, 2, 2656), -- https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=936798
(11953, 2, 8766), -- https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=998607
(11953, 2, 7093), -- https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=1064287
(11953, 2, 6556), -- https://www.wowhead.com/quest=4512/a-little-slime-goes-a-long-way#comments:id=936518
(11953, 2, 6557), -- https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=1683069
(11953, 2, 6559); -- https://www.wowhead.com/quest=4513/a-little-slime-goes-a-long-way#comments:id=390641
