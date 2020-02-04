-- Sync DB Scripts from Zul'Farrak with WotLK and TBC DBs 
DELETE FROM dbscripts_on_creature_movement WHERE id IN (760402, 760702) AND command=22;
DELETE FROM dbscripts_on_creature_movement WHERE id=760408;
INSERT INTO dbscripts_on_creature_movement VALUES
(760408, 0, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Bly - Enable Gossip');


DELETE FROM dbscripts_on_creature_movement WHERE id IN (760710, 760711);
INSERT INTO dbscripts_on_creature_movement VALUES
(760710, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Pause Movement'),
(760710, 0, 29, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Enable Gossip'),
(760711, 0, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Weegli Blastfuse - Disable Gossip');

UPDATE creature_movement_template SET script_id=760408 WHERE entry=7604 AND point=8;
UPDATE creature_movement_template SET script_id=760710 WHERE entry=7607 AND point=10;
UPDATE creature_movement_template SET script_id=760711 WHERE entry=7607 AND point=11;
