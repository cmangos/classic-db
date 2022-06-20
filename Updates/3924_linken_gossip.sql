UPDATE gossip_menu SET condition_id=9023 WHERE entry=1961 AND text_id=2634; -- texts 4937	4938	4939	4940	4941	4942
-- other text "4935	I... I'm not really sure how I got here...$B$BI seem to remember traveling... a raft...$B$B"
DELETE FROM conditions WHERE condition_entry=9023;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(9023, 8, 3845, 0, 0, 0, 0, 'Quest \'It\'s a Secret to Everybody\' is rewarded');
