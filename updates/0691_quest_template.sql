-- fixed quest 9227 (Superior Armaments of Battle - Exalted Amongst the Dawn)
-- fixed quest 9228 (Epic Armaments of Battle - Exalted Amongst the Dawn): made them repeatable
-- Sources: http://www.wowhead.com/quest=9227 http://www.wowhead.com/quest=9228
UPDATE `quest_template` SET `specialflags` = 1 WHERE `entry` IN (9227, 9228);
