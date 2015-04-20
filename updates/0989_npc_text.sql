-- Fixed gossip menu text for NPC 786 (Grelin Whitebeard) who was using wrong text
-- This closes #759
UPDATE `npc_text` SET `text0_0` = 'Greetings, $glad:lass;. I\'m Grelin Whitebeard. I''m here to examine the threat posed by the growing numbers of trolls in Coldridge Valley. What have I found? It\'s a bit troubling...' WHERE `ID` = 15132;
