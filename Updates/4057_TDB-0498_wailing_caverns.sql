-- Disciple of Naralex should have a small Detection
UPDATE `creature_template` SET `Detection`='5' WHERE (`Entry`='3678');

-- Correct broadcast text emote
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1265');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1268');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1269');
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='1270');

-- Let Raptor move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='3636');

-- Deviate Viper and Adder dont move on spawn
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='5755');
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='5048');

-- Deviate Moccasin move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='5762');

-- Nightmare Ectoplasm
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='5763');

-- Mutanos move on spawn
UPDATE `creature_template` SET `MovementType`='2' WHERE (`Entry`='3654');

