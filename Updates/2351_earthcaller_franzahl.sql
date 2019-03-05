-- Add missing gossip for NPC 14348 (Earthcaller Franzahl) in Winterspring
-- Source: https://wow.gamepedia.com/Earthcaller_Franzahl

-- Clean up old NPC gossip_menu
DELETE FROM npc_gossip WHERE npc_guid=40995;
-- Use temporary gossip entry as actual one is not known
SET @ID := 50309;
UPDATE creature_template SET GossipMenuId=@ID WHERE Entry=14348;


-- Add missing texts
DELETE FROM npc_text WHERE id BETWEEN 6986 AND 6989;
INSERT INTO npc_text VALUES
(6986, 'Elementium? I have not heard that word uttered from the mouth of a mortal in decades.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6987, ' A former student of mine by the name of Krixix spent a lifetime attempting to make contact with the chained Gods of the underworld. He pursued that which would spring up from the ravaged earth... That which would form only as a result of the elements clashing in the titanic conflict.$B$BElementium as it would be known to mortals.$B$BOne day, nearly a decade ago, Krixix\'s pursuit lead to a fissure forming in this very gorge.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6988, 'Aye, he had done what was thought to be impossible. Out from the fissure sprung an agent of Therazane!$B$BFrom my vantage point, I could see the goblin holding conversation with the agent of the Old God. What happened after that was terrible...', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(6989, 'The fissure closed and Krixix was gone! Swallowed whole!$B$BBe warned, $r, what you wish for could very well become that which you do not want. You play with beings and arcana that are older than time itself!$B$BShould Krixix be alive and should he have the information which you seek, you can be certain that he will not give up said information. He has faced terrors far worse than you could ever dream to perpetuate.', '', 0, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Add missing gossip 
DELETE FROM gossip_menu WHERE entry BETWEEN @ID AND @ID + 4;
INSERT INTO gossip_menu VALUES
(@ID, 6985, 0, 0),
(@ID + 1, 6986, 0, 0),
(@ID + 2, 6987, 0, 0),
(@ID + 3, 6988, 0, 0),
(@ID + 4, 6989, 0, 0);

-- Add missing gossip options
DELETE FROM gossip_menu_option WHERE menu_id BETWEEN @ID AND @ID + 4;
INSERT INTO gossip_menu_option VALUES
(@ID, 0, 0, 'Are you the Earthshaper capable of creating Elementium?', 1, 1, @ID + 1, 0, 0, 0, 0, NULL, 311),
(@ID + 1, 0, 0, 'What do you know of it, Franzahl?', 1, 1, @ID + 2, 0, 0, 0, 0, NULL, 0),
(@ID + 2, 0, 0, 'A fissure?', 1, 1, @ID + 3, 0, 0, 0, 0, NULL, 0),
(@ID + 3, 0, 0, 'So what happened?', 1, 1, @ID + 4, 0, 0, 0, 0, NULL, 0),
(@ID + 4, 0, 0, 'Goodbye.', 1, 1, -1, 0, 0, 0, 0, NULL, 0);
