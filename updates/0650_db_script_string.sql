-- Fixed a few texts for NPC 3518 (Thomas Miller) in Stormwind
UPDATE `db_script_string` SET `content_default` = 'Fresh bread for sale!' WHERE `entry` IN (2000005099, 2000005101);
UPDATE `db_script_string` SET `content_default` = 'Get it while it\'s hot!' WHERE `entry` IN (2000005100, 2000005102);
