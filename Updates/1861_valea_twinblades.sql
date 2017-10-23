-- classic-db/issues/133
-- add missing plaque for Valea Twinblades
--
DELETE FROM page_text WHERE entry=2177;
INSERT INTO page_text (entry, text, next_page) VALUES 
(2177,'Valea Twinblades$B$BWarrior of the Scarlet Crusade$B$BCitizen of Alterac$B$BLast seen deep in the Eastern Plaguelands$B$B',0);
