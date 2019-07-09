-- Peria and friends
INSERT INTO creature_addon (guid, emote) VALUES ('191183', '21');
INSERT INTO creature_addon (guid, emote) VALUES ('191197', '10');
INSERT INTO creature_addon (guid, emote) VALUES ('191184', '4');
-- Make guards stationary
UPDATE creature SET MovementType='0', spawndist=0 WHERE guid=191158;
UPDATE creature SET MovementType='0', spawndist=0 WHERE guid=191159;
-- Change Guard to Mountaineer, add emotes
INSERT INTO creature_addon (guid, emote) VALUES ('191164', '18');
INSERT INTO creature_addon (guid, emote) VALUES ('191196', '1');
-- Gnome Engineers
INSERT INTO creature_addon (guid, emote) VALUES ('191191', '133');
INSERT INTO creature_addon (guid, emote) VALUES ('191192', '133');
INSERT INTO creature_addon (guid, emote) VALUES ('191193', '133');
INSERT INTO creature_addon (guid, emote) VALUES ('191194', '133');
INSERT INTO creature_addon (guid, emote) VALUES ('191195', '133');
-- Add the campfire
INSERT INTO gameobject VALUES ( 900074, 3085, 0, -4667.08, -1715.54, 503.324, 3.07425, 0, 0, 0.999433, 0.0336635, 25, 25, 100, 1);
-- Change guard into mountaineer, add emotes
INSERT INTO creature_addon (guid, emote) VALUES ('191166', '66');
INSERT INTO creature_addon (guid, emote) VALUES ('191154', '22');
-- Flight Path Area
INSERT INTO creature_addon (guid, emote) VALUES ('191168', '3');
INSERT INTO creature_addon (guid, emote) VALUES ('191156', '28');
INSERT INTO creature_addon (guid, emote) VALUES ('191167', '1');
INSERT INTO creature_addon (guid, emote) VALUES ('191198', '1');
-- Change guard into Mountaineer & otherwise
UPDATE creature SET id='5595' WHERE guid=191148;
UPDATE creature SET id='5595' WHERE guid=191146;
