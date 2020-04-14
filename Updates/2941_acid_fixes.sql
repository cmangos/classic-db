DELETE FROM dbscript_random_templates WHERE id=10;
INSERT INTO dbscript_random_templates VALUES
(10, 0, -141, 0, 'Thomas Miller - Random OOC Texts'),
(10, 0, -142, 0, 'Thomas Miller - Random OOC Texts'),
(10, 0, -204, 0, 'Thomas Miller - Random OOC Texts'),
(10, 0, -205, 0, 'Thomas Miller - Random OOC Texts');

DELETE FROM dbscripts_on_relay WHERE id IN (9000, 9002);
INSERT INTO dbscripts_on_relay VALUES 
(9000, 0, 0, 28, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Crusade NPC Ashbringer Event response - Stand'),
(9000, 0, 0, 20, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Crusade NPC Ashbringer Event response - Set Movement to Idle'),
(9000, 1000, 0, 36, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Crusade NPC Ashbringer Event response - Set Facing to Player'),
(9000, 2000, 0, 28, 8, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Crusade NPC Ashbringer Event response - Kneel'),
(9002, 0, 0, 15, 28443, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Inquisitor Fairbanks - Cast Transform Ghost'),
(9002, 0, 0, 36, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Inquisitor Fairbanks - Set Facing to Player'),
(9002, 2000, 0, 29, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'High Inquisitor Fairbanks - Add Gossip NpcFlag');
