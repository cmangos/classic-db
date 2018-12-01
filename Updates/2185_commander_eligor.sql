-- Reexport script for Bortherhood of Light council in Light's Hope Chapel
-- with better timing to avoid texts scrolling too fast especially the last ones

-- NPC 16115 (Commander Eligor Dawnbringer) will handle all the script
-- with NPC 16114 (Scarlet Commander Marjhan) as a buddy
UPDATE creature SET MovementType=2 WHERE id=16115;

DELETE FROM creature_movement_template WHERE entry=16115;
INSERT INTO creature_movement_template VALUES
(16115, 0, 1, 2298.86, -5341.83, 90.8799, 2.16421, 480000, 1611501, NULL);

DELETE FROM dbscripts_on_creature_movement WHERE id=1611501;
INSERT INTO dbscripts_on_creature_movement VALUES
(1611501, 1, 31, 16114, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 16114'),
(1611501, 2, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),	-- prevent players from breaking the script by displaying gossip or giving/taking quest
(1611501, 2, 29, 3, 2, 0, 16114, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags removed'),
(1611501, 2, 0, 0, 0, 0, 16114, 15, 7, 2000000618, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 10, 0, 0, 0, 0, 0, 0, 0, 2000000619, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 17, 0, 0, 0, 0, 0, 0, 0, 2000000620, 0, 0, 0, 0, 0, 0, 0, 'text emote'),
(1611501, 19, 0, 0, 0, 0, 0, 0, 0, 2000000621, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 23, 0, 0, 0, 0, 0, 0, 0, 2000000622, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 38, 0, 0, 0, 0, 16114, 15, 7, 2000000623, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 42, 0, 0, 0, 0, 0, 0, 0, 2000000624, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 46, 0, 0, 0, 0, 16114, 15, 7, 2000000625, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 52, 0, 0, 0, 0, 0, 0, 0, 2000000626, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 65, 0, 0, 0, 0, 16114, 15, 7, 2000000627, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 71, 0, 0, 0, 0, 0, 0, 0, 2000000628, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 76, 0, 0, 0, 0, 16114, 15, 7, 2000000629, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 80, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 82, 0, 0, 0, 0, 0, 0, 0, 2000000630, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 96, 0, 0, 0, 0, 0, 0, 0, 2000000631, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 115, 0, 0, 0, 0, 0, 0, 0, 2000000632, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 132, 0, 0, 0, 0, 0, 0, 0, 2000000633, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 152, 0, 0, 0, 0, 0, 0, 0, 2000000634, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 165, 28, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1611501, 166, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added'), -- resume gossip and quest giver flags
(1611501, 166, 29, 3, 1, 0, 16114, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'npcFlags added');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000000618 AND 2000000634;
INSERT INTO dbscript_string VALUES
(2000000618, 'Your message did reach us, Commander, but by no means is our involvement here sanctioned by the Grand Crusader.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000619, 'Your leader takes residence at the doorstep to Naxxramas. Do you think he does not feel the pressure?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000620, '%s lowers the sound of his voice to a whisper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL),
(2000000621, 'Even demons are capable of fear...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000622, 'Scourge activity in the Plaguelands has increased ten-fold. We are receiving reports of Scourge attacks from as far away as Kalimdor! Now how do you suppose this has happened? How have the wretched undead done that which was previously thought impossible? Is nowhere safe?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000623, 'The heathens will be forced to react. Orcs, bull-men...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000624, 'Tauren.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000625, 'Whatever. The revolting, unkempt Horde filth...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000626, 'You lack tact, Commander. This is not surprising. However, you are right in that the Horde will be forced to act. But not just the Horde. They already come - heroes from across the world.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000627, 'Too little, too late. The dam has broken. We are a bump in the road at best.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000628, 'So why are you here? What are we to do if there is no hope?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000629, 'There is always... Ashbringer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000630, 'So this is what you have come for? To try and claim that which is the reason for the Dawn\'s existence and the Crusade\'s downfall? You open old wounds with your words, Commander!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, NULL),
(2000000631, 'The Ashbringer is dead and there will never be another like him. The lesser Mograine is a far cry from the man his father was. You know this, Commander! It was, after all, your own leadership that was responsible for the death of the Scarlet Highlord Mograine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 274, NULL),
(2000000632, 'It was your leadership that manipulated a grieving child to try and recover the sword. A child that has grown into a man with nothing but vengeance and hatred in his heart! And for what? You are no closer to the sword now than you were five years ago.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000633, 'Yet you think that recovering Ashbringer will somehow turn the tide of battle? Let me let you in on a little secret, Commander: The power of the Ashbringer came from the man who would wield it... I was there, Commander. I watched him burn legions of undead in righteous fire before he would even unsheathe the blade. Alas, your grasp on history is ... lacking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(2000000634, 'Now be silent and note where you are, lest I inform Lord Fordring and his knights that you are no longer here on amicable terms. I am certain he would take great pleasure in seeing to your \'atonement.\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, NULL);
