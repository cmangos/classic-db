SET @TEXTID  := 2000000399;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN @TEXTID + 1 AND @TEXTID + 4;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(@TEXTID + 1, 'So sorry to leave a customer but we have places to go and people to swindle. We will be back sometime later today. Good-bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Cork Gizelton Leaving Kormek\'s Hut'),
(@TEXTID + 2, 'I am looking for some bodyguards that would like to protect the Gizelton Caravan. We are stopped on the road east of Kormek\'s Hut, north of Kolkar Centaur Village.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 22, 'Cork Quest 5821 Yell'),
(@TEXTID + 3, 'Time for the Gizelton Caravan to head on out! We\'ll be back soon but if you cannot wait, head north to Kormek\'s Hut. We open shop in about an hour.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Rigger Gizelton leaving South End '),
(@TEXTID + 4, 'This is Rigger Gizelton asking for assistance escorting my caravan past Mannoroc Coven. I\'m on the road east of Shadowprey village.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 22, 'Rigger Quest 5843 Yell');
