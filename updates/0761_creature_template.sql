-- Lady Sylvanas Windrunner has no script in 1.12
-- Laments of the Highborne got introduced in TBC
UPDATE `creature_template` SET `ScriptName` = '' WHERE `Entry` = '10181';
