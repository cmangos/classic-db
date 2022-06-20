UPDATE gossip_menu SET condition_id=9022 WHERE entry=1301 AND text_id=1934; -- gossip wont show in tbc client due to going straight to vendor menu

DELETE FROM conditions WHERE condition_entry=9022; -- 1605 cant be used due to conflict with wotlk-db
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(9022, 7, 197, 230, 0, 0, 0, 'Has Tailoring at 230 or above');
