
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `Entry`='12777';
UPDATE `creature_template` SET `MinLevel`='55', `MaxLevel`='55' WHERE `Entry`='12792';

DELETE FROM `creature_template_classlevelstats` WHERE `Level`='64' and`Class`='1';
DELETE FROM `creature_template_classlevelstats` WHERE `Level`='65' and`Class`='1';
DELETE FROM `creature_template_classlevelstats` WHERE `Level`='64' and`Class`='2';
DELETE FROM `creature_template_classlevelstats` WHERE `Level`='65' and`Class`='2';
DELETE FROM `creature_template_classlevelstats` WHERE `Level`='64' and`Class`='8';
DELETE FROM `creature_template_classlevelstats` WHERE `Level`='65' and`Class`='8';
