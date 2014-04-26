SET @ENTRY := 2000000169;

UPDATE `quest_template` SET `StartScript` = 8447 WHERE `entry` = 8447;

DELETE FROM `spell_target_position` WHERE `id` = 25004;
INSERT INTO `spell_target_position` VALUES
(25004, 1, 7724.630, -2313.499, 453.423, 0);

/*
SCRIPT_FLAG_BUDDY_AS_TARGET     = 0x01
SCRIPT_FLAG_REVERSE_DIRECTION	= 0x02	
SCRIPT_FLAG_SOURCE_TARGETS_SELF	= 0x04	
SCRIPT_FLAG_COMMAND_ADDITIONAL	= 0x08

0: originalSource / buddyIfProvided -> originalTarget
1: originalSource -> buddy
2: originalTarget -> originalSource / buddyIfProvided
3: buddy -> originalSource
4: originalSource / buddyIfProvided -> originalSource / buddyIfProvided
5: originalSource -> originalSource
6: originalTarget -> originalTarget
7: buddy -> buddy
*/


/*
Levitate 1706
Levitate 27986

Malfurion's Shade 24999
*/



 UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 15362;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 8447;
INSERT INTO `dbscripts_on_quest_start` VALUES
(8447, 2, 0, 0, 0, 0, 0, 2, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7827.875, -2250.874, 462.84, 4.5775, ''),
(8447, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7815.584, -2303.253, 456.105, 3.8440, ''),
(8447, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7780.359, -2325.917, 454.214, 2.9376, ''),
(8447, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7747.799, -2317.133, 453.423, 2.8512, ''),
(8447, 28, 0, 0, 0, 0, 0, 2, @ENTRY + 2, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 28, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 31, 15, 25004, 0, 0, 0, 0, 0, 0, 0, 0, 7724.630, -2313.499, 453.423, 0, 'Throw object - cast spell'),
(8447, 40, 10, 15362, 71000, 0, 0, 0, 0, 0, 0, 0, 7724.630, -2313.499, 455.423, 6.1773, 'Summons Malfurion'),
(8447, 40, 15, 24999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell visual'), -- 24999
-- (8447, 40, 15, 24999, 0, 15362, 35, 1 + 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell visual'), -- 24999
(8447, 41, 1, 15, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Malfurion roars'),
(8447, 41, 0, 0, 0, 0, 0, 0, @ENTRY + 3, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 41, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 45, 0, 0, 0, 15362, 35, 0, @ENTRY + 4, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 45, 1, 1, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 50, 0, 0, 0, 0, 0, 0, @ENTRY + 5, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 57, 0, 0, 0, 15362, 35, 0, @ENTRY + 6, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 57, 1, 1, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 68, 0, 0, 0, 0, 0, 0, @ENTRY + 7, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 68, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 73, 0, 0, 0, 15362, 35, 0, @ENTRY + 8, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 73, 1, 1, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 84, 0, 0, 0, 0, 0, 0, @ENTRY + 9, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 84, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 100, 0, 0, 0, 15362, 35, 0, @ENTRY + 10, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 100, 1, 1, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 105, 0, 0, 0, 15362, 35, 0, @ENTRY + 11, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 105, 1, 1, 0, 15362, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 109, 0, 0, 0, 0, 0, 0, @ENTRY + 12, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 109, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 111, 0, 0, 0, 0, 0, 0, @ENTRY + 13, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 111, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8447, 111, 7, 8447, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Complete quest'),
(8447, 112, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7848.3, -2216.35, 470.89, 3.9095, 'Returns back to grove');


DELETE FROM `db_script_string` WHERE `entry` BETWEEN @ENTRY + 1 AND @ENTRY + 13;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(@ENTRY + 1, 'Come, $N. The lake is around the bend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 2, 'Stand near me, $N. I will protect you should anything go wrong.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 3, 'Malfurion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 4, 'Remulos, old friend. It is good to see you once more. I knew the message would find its way to you - one way or another.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 5, 'It was shrouded in nightmares, Malfurion. What is happening in the Dream? What could cause such atrocities?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 6, 'I fear for the worst, old friend. Within the Dream we fight a new foe, born of an ancient evil. Ysera\'s noble brood has fallen victim to the old whisperings. It seems as if the Nightmare has broken through the realm to find a new host on Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 7, 'I sensed as much, Malfurion. Dark days loom ahead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 8, 'Aye Remulos, prepare the mortal races.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 9, 'You have been gone too long, Malfurion. Peace between the Children of Azeroth has become tenuous at best. What of my father? Of your brother? Have you any news?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 10, 'Cenarius fights at my side. Illidan sits atop his throne in Outland - brooding. I\'m afraid that the loss to Arthas proved to be his breaking point. Madness has embraced him, Remulos. He replays the events in his mind a thousand times per day, but in his mind, he is the victor and Arthas is utterly defeated. He is too far gone, old friend. I fear that the time may soon come that our bond is tested and it will not be as it was at the Well in Zin-Azshari.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 11, 'Remulos, I am being drawn back... Tyrande... send her my love... Tell her I am safe... Tell her... Tell her I will return... Farewell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 12, 'Farewell, old friend... Farewell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 13, 'Let us return to the grove, mortal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);