-- Replaced TBC spell by its Classic version
UPDATE dbscripts_on_quest_end SET datalong=13236 WHERE datalong=28892 AND id=4441;

-- Removed unneeded spell_script_target
DELETE from spell_script_target WHERE entry=7079;
