
DELETE FROM `creature_questrelation` WHERE `quest` IN (SELECT `entry` FROM `quest_template` WHERE `title` IN ('Ribbons of Sacrifice', 'Talismans of Merit'));
