-- Fix movement of NPC 15553 (Doctor Weavil's Flying Machine) as it is supposed to fly (surprinsgly)
UPDATE creature_template SET InhabitType=4 WHERE Entry=15553;

-- Add missing gossip for NPC 11811 (Narain Soothfancy) only used in epic quest 8620 (The Only Prescription)
DELETE FROM npc_text WHERE id=7884;
INSERT INTO npc_text VALUES
(7884, 'It... It\'s foggy, $N. I can\'t see anything! Wait... Wait a minute. I see... I see Doctor Weavil\'s hideout. It... YES! I believe he is holding a chapter of the book!$B$BLet me see if I can zoom this thing out to get a better vantage point.$B$B<Narain appears to be going cross-eyed.>$B$BAlcaz Island! That devious bastard is on Alcaz Island!', '', 0, 1, 0, 1, 0, 1, 0, 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

SET @COND = 989;

DELETE FROM conditions WHERE condition_entry BETWEEN @COND + 1 AND @COND + 2;
INSERT INTO conditions VALUES
(@COND + 1, 24, 21130, 1, 'Player Has Less Than 1 of Item ID 21130 in Inventory/Bank'),
(@COND + 2, -1, 97, @COND + 1, '(Quest ID 8620 Taken AND Player Has Less Than 1 of Item ID 21130 in Inventory/Bank)');

DELETE FROM gossip_menu WHERE entry=6646 AND text_id=7884;
INSERT INTO gossip_menu VALUES
(6646, 7884, 0, @COND + 2);
