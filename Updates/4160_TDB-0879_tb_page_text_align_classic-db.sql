DELETE FROM `page_text` WHERE `entry` = 9999;
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
-- extra needed for all dbs in some form
(9999, 'Howdy! You have found a loot bug. We are terribly sorry about that, we will fix it just as soon as possible. However, You need to help us first. Please go to https://github.com/cmangos/issues/issues/ and fill out a "New issue", with the location you found this message and we will resolve the issue. Continued-MaNGOS Team', 0);

