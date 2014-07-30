-- fixed quest 9211 (The Ice Guard) + 9213 (The Shadow Guard) : made them repeatable
-- This closes #510 
-- Source: https://web.archive.org/web/20071103001520/http://wow.allakhazam.com/db/quest.html?wquest=9211
-- https://web.archive.org/web/20070604071106/http://wow.allakhazam.com/db/quest.html?wquest=9213
UPDATE `quest_template` SET `specialflags` = 1 WHERE `entry` = 9211;
UPDATE `quest_template` SET `specialflags` = 1 WHERE `entry` = 9213;
