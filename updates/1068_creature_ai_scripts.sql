
DELETE FROM `creature_ai_scripts` WHERE `id`='847701';
DELETE FROM `creature_ai_scripts` WHERE `id`='1037501';

UPDATE `creature_template` SET `AIName`='' WHERE `Entry`='8477';
UPDATE `creature_template` SET `AIName`='' WHERE `Entry`='10375';
