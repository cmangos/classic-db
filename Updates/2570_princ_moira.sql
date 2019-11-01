
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('948', '8', '4004', '0', 'Quest ID 4004 Rewarded'),
('949', '8', '4363', '0', 'Quest ID 4363 Rewarded'),
('950', '-2', '948', '949', '(Quest ID 4004 OR Quest ID 4363 Rewarded)');

UPDATE `creature_loot_template` SET `condition_id` = '950' WHERE (`entry` = '8929') and (`item` IN ('12553', '12554', '12556', '12557'));
