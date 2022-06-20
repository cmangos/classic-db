-- Add quest start script for quest 'Heartswood' id 1738

DELETE FROM dbscripts_on_quest_start WHERE id='1738'; -- does not exist
UPDATE quest_template SET StartScript='1738' WHERE entry='1738';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1738,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer -  Set Active'),
(1738,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer -  Remove Questgiver Flag'),
(1738,1000,0,10,6246,41000,0,0,0,8,0,0,0,0,0,-2241.6555, -2372.8064, 92.35401, 0.139626339077949523,0,0,'Heartswood - Takar the Seer -  Spawn Latherion'),
(1738,1000,1,10,6245,41000,0,0,0,8,0,0,0,0,0,-2243.052, -2372.8, 92.316696, 3.368485450744628906,0,0,'Heartswood - Takar the Seer -  Spawn Anathera'),
(1738,1000,2,1,27,0,0,6245,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Emote STATE_READYUNARMED'),
(1738,1000,3,1,27,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - Emote STATE_READYUNARMED'),
(1738,2000,0,1,35,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Emote OneShotAttackUnarmed'),
(1738,3000,0,36,0,0,0,6246,5,1,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Face Latherion'),
(1738,4000,0,1,35,0,0,6245,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - Emote OneShotAttackUnarmed'),
(1738,4000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Emote Talk'),
(1738,4000,2,0,0,0,0,0,0,0,2310,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Say Text'),
(1738,7000,0,1,39,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Emote OneShotParryUnarmed'),
(1738,8000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Emote Talk'),
(1738,8000,1,0,0,0,0,0,0,0,2311,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Say Text'),
(1738,11000,0,1,37,0,0,6245,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - Emote OneShotAttack2HTight'),
(1738,15000,0,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Emote Laugh'),
(1738,15000,1,0,0,0,0,0,0,0,2312,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Say Text'),
(1738,18000,0,1,0,0,0,6245,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - Remove EmoteState'),
(1738,20000,0,28,7,0,0,6245,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - StandState Dead'),
(1738,21000,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Emote Wave'),
(1738,21000,1,0,0,0,0,0,0,0,2314,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Say Text'),
(1738,23000,0,3,0,0,0,6246,5,0,0,0,0,0,0,0,0,0,3.137,0,0,'Heartswood - Latherion - Face Anathere'),
(1738,23000,1,1,0,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Remove EmoteState'),
(1738,23000,0,0,0,0,0,6246,5,0,2313,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Say Text'),
(1738,27000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Face Player'),
(1738,27000,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Emote Talk'),
(1738,27000,2,0,0,0,0,0,0,0,2317,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer - Say Text'),
(1738,28000,0,0,0,0,0,6245,5,0,2316,0,0,0,0,0,0,0,0,0,0,'Heartswood - Anathere - Say Text'),
(1738,31000,0,28,8,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - State Kneel'),
(1738,31000,1,0,0,0,0,6246,5,0,2315,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Say Text'),
(1738,34000,0,28,0,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - Remove Standstate'),
(1738,37000,0,28,7,0,0,6246,5,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Latherion - State Dead'),
(1738,41000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer -  Remove Active'),
(1738,41000,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Heartswood - Takar the Seer -  Add Questgiver Flag');

UPDATE broadcast_text SET EmotesID='15' WHERE (Id='2313');

-- ServerToClient: SMSG_COMPRESSED_UPDATE_OBJECT (0x01F6) Length: 355 ConnIdx: 0 Time: 05/14/2009 16:13:34.000 Number: 586230
-- [15] OBJECT_FIELD_GUID: Full: 0xF13000186505A28D Type: Creature Entry: 6245 Low: 369293
-- [15] OBJECT_FIELD_TYPE: 9
-- [15] OBJECT_FIELD_ENTRY: 6245
-- [15] OBJECT_FIELD_SCALE_X: 1
-- [15] UNIT_FIELD_BYTES_0: 0/1/1/1
-- [15] UNIT_FIELD_HEALTH: 449
-- [15] UNIT_FIELD_POWER3: 100/1.4E-43
-- [15] UNIT_FIELD_POWER4: 100/1.4E-43
-- [15] UNIT_FIELD_POWER5: 1000000/1.401298E-39
-- [15] UNIT_FIELD_MAXHEALTH: 449/6.29E-43
-- [15] UNIT_FIELD_MAXPOWER3: 100/1.4E-43
-- [15] UNIT_FIELD_MAXPOWER4: 100/1.4E-43
-- [15] UNIT_FIELD_MAXPOWER5: 1000000/1.401298E-39
-- [15] UNIT_FIELD_LEVEL: 19/2.7E-44
-- [15] UNIT_FIELD_FACTIONTEMPLATE: 35/4.9E-44 (35)
-- [15] UNIT_VIRTUAL_ITEM_SLOT_ID: 3433/4.81E-42
-- [15] UNIT_FIELD_FLAGS: 33555200

UPDATE creature_template SET MinLevel='19', MaxLevel='19', Faction='35', UnitFlags='33555200' WHERE (Entry='6245');

-- [14] OBJECT_FIELD_GUID: Full: 0xF13000186605A28C Type: Creature Entry: 6246 Low: 369292
-- [14] OBJECT_FIELD_TYPE: 9
-- [14] OBJECT_FIELD_ENTRY: 6246
-- [14] OBJECT_FIELD_SCALE_X: 1
-- [14] UNIT_FIELD_BYTES_0: 0/2/0/0
-- [14] UNIT_FIELD_HEALTH: 404
-- [14] UNIT_FIELD_POWER1: 456/6.39E-43
-- [14] UNIT_FIELD_POWER3: 100/1.4E-43
-- [14] UNIT_FIELD_POWER4: 100/1.4E-43
-- [14] UNIT_FIELD_POWER5: 1000000/1.401298E-39
-- [14] UNIT_FIELD_MAXHEALTH: 404/5.66E-43
-- [14] UNIT_FIELD_MAXPOWER1: 456/6.39E-43
-- [14] UNIT_FIELD_MAXPOWER3: 100/1.4E-43
-- [14] UNIT_FIELD_MAXPOWER4: 100/1.4E-43
-- [14] UNIT_FIELD_MAXPOWER5: 1000000/1.401298E-39
-- [14] UNIT_FIELD_LEVEL: 19/2.7E-44
-- [14] UNIT_FIELD_FACTIONTEMPLATE: 35/4.9E-44 (35)
-- [14] UNIT_VIRTUAL_ITEM_SLOT_ID: 3494/4.896E-42
-- [14] UNIT_FIELD_FLAGS: 33555200

UPDATE creature_template SET MinLevel='19', MaxLevel='19', Faction='35', UnitFlags='33555200' WHERE (Entry='6246');
