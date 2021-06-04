-- Update for Ashbringer Event
-- timers fixed (wotlkDB had them broken due to mistake during backports)
-- Scarlet Commander Mograine will face his father.. instead of player - Fixed
-- Scarlet Commander Mograine will (special) die after hit by spell - cannot die in normal way koz it has death Say there.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1644001);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1644001,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Mograine - Set Movement to Idle'),
(1644001,1000,0,0,0,0,0,0,0,2000005981,0,0,0,0,0,0,0,'Highlord Mograine - Ashbringer Event Say 1'),
(1644001,3000,28,0,0,0,3976,20,0,0,0,0,0,0,0,0,0,'Scarlet Commander Mograine - Stand'),
(1644001,3900,36,0,0,0,3976,20,3,0,0,0,0,0,0,0,0,'Scarlet Commander Mograine - face Highlord Mograine'), -- added
(1644001,4000,0,0,0,0,3976,20,0,2000005982,0,0,0,0,0,0,0,'Scarlet Commander Mograine - Ashbringer Event Say 2'),
(1644001,4000,36,0,0,0,3976,20,2,0,0,0,0,0,0,0,0,'Scarlet Commander Mograine - Face Highlord Mograine'),
(1644001,8000,0,0,0,0,0,0,0,2000005983,0,0,0,0,0,0,0,'Highlord Mograine - Ashbringer Event Say 2'),
(1644001,8000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Mograine - Question Emote'),
(1644001,12000,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Mograine - Point Emote'),
(1644001,16000,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,'Highlord Mograine - Roar Emote'),
(1644001,20000,0,0,0,0,3976,10,0,2000005984,0,0,0,0,0,0,0,'Scarlet Commander Mograine - Ashbringer Event Say 3'),
(1644001,23000,15,28697,0,0,3976,20,1,0,0,0,0,0,0,0,0,'Highlord Mograine - Cast Forgiveness on Scarlet Commander Mograine'),
(1644001,26000,0,0,0,0,0,0,0,2000005985,0,0,0,0,0,0,0,'Highlord Mograine - Ashbringer Event Say 3');
