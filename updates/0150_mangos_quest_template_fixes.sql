-- Fixed minimum level requirement for various Darkmoon Faire quests
-- Thanks to Neotmiren for pointing and fixing
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` IN (7881,7889,7894,7899);
-- Despite being currently marked as lvl 6 on wowhead/wowwiki, quests 7905 and 7926 were indeed lvl 10 quests back in classic
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` IN (7882,7890,7895,7900, 7905,7926);
UPDATE `quest_template` SET `MinLevel` = 20 WHERE `entry` IN (7883,7891,7896,7901);
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` IN (7884,7892,7897,7902);
UPDATE `quest_template` SET `MinLevel` = 40 WHERE `entry` IN (7885,7893,7898,7903,7939,7941,7942,7943,8222,8223);
