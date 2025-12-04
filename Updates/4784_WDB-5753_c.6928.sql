-- Innkeeper Grosk 6928
-- vendor list corrected
-- event 8
DELETE FROM `npc_vendor` WHERE `entry` = 6928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(6928, 21815, 0, 0, 1, 500, 'Love Token'), -- Event ID 8 Active
(6928, 21829, 0, 0, 2, 500, 'Perfume Bottle'),
(6928, 21833, 0, 0, 3, 500, 'Cologne Bottle'),
-- default list
(6928, 117, 0, 0, 4, 0, 'Tough Jerky'),
(6928, 2287, 0, 0, 5, 0, 'Haunch of Meat'),
(6928, 3770, 0, 0, 6, 0, 'Mutton Chop'),
(6928, 3771, 0, 0, 7, 0, 'Wild Hog Shank'),
(6928, 4599, 0, 0, 8, 0, 'Cured Ham Steak'),
(6928, 8952, 0, 0, 9, 0, 'Roasted Quail'),
(6928, 159, 0, 0, 10, 0, 'Refreshing Spring Water'),
(6928, 1179, 0, 0, 11, 0, 'Ice Cold Milk'),
(6928, 1205, 0, 0, 12, 0, 'Melon Juice'),
(6928, 1708, 0, 0, 13, 0, 'Sweet Nectar'),
(6928, 1645, 0, 0, 14, 0, 'Moonberry Juice'),
(6928, 8766, 0, 0, 15, 0, 'Morning Glory Dew');

