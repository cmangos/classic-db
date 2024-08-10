-- Correct Detection for Moam 15340 - https://www.youtube.com/watch?v=9UStUPWbFds - https://youtu.be/CJE_ujKwwX0?feature=shared&t=1374
UPDATE `creature_template` SET `Detection` = 65 WHERE `entry` = 15340;

-- Improve Detection for AV Archers - https://youtu.be/0KcOHcYGiBk?feature=shared&t=20
UPDATE `creature_template` SET `Detection` = 70, `ExtraFlags` = `ExtraFlags`|2048 WHERE `entry` IN (13358,13359);

