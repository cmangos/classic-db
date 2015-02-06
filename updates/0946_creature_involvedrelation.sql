
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (SELECT `entry` FROM `quest_template` WHERE `title` IN ('Ribbons of Sacrifice', 'Talismans of Merit'));
