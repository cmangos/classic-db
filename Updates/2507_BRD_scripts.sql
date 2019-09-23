UPDATE dbscripts_on_go_template_use SET dataint=0 WHERE id IN (170568, 170569, 170567) AND command=22;

DELETE FROM dbscripts_on_creature_movement WHERE id IN (950001, 950002);
INSERT INTO dbscripts_on_creature_movement VALUES
(950001, 0, 31, 9545, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 9545'),
(950001, 1, 0, 0, 0, 0, 9545, 20, 0, 2000000261, 2000000262, 2000000263, 2000000264, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950001, 1, 36, 0, 0, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - Face Nagmara'),
(950001, 2, 36, 0, 0, 0, 9545, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Grim Patron'),
(950001, 3, 0, 0, 0, 0, 0, 0, 0, 2000000265, 2000000266, 2000000267, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950001, 5, 36, 1, 0, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - restore orientation'),
(950001, 6, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation'),
(950002, 0, 31, 9547, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 9547'),
(950002, 1, 0, 0, 0, 0, 9547, 20, 0, 2000000261, 2000000262, 2000000263, 2000000264, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950002, 1, 36, 0, 0, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - Face Nagmara'),
(950002, 2, 36, 0, 0, 0, 9547, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Guzzling Patron'),
(950002, 3, 0, 0, 0, 0, 0, 0, 0, 2000000265, 2000000266, 2000000267, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950002, 5, 36, 1, 0, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - restore orientation'),
(950002, 6, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation');
