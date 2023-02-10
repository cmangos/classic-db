-- Diff some script_texts with broadcast_text - classicmangos has 631 more differences with this query
-- use other method then used in https://github.com/cmangos/tbc-db/commit/d3ee28a1fe9fe27eb8862e751e0944eb8bdb7760#r99870535
-- SELECT CONCAT('UPDATE `broadcast_text` SET ',
-- CASE WHEN A.`SoundEntriesID1` != B.`sound` THEN CONCAT('`SoundEntriesID1`=\'',B.`sound`,'\', ') ELSE '' END,
-- CASE WHEN A.`ChatTypeId` != B.`type` THEN CONCAT('`ChatTypeId`=\'',B.`type`,'\', ') ELSE '' END,
-- CASE WHEN A.`LanguageID` != B.`language` THEN CONCAT('`LanguageID`=\'',B.`language`,'\', ') ELSE '' END,
-- CASE WHEN A.`EmoteID1` != B.`emote` THEN CONCAT('`EmoteID1`=\'',B.`emote`,'\', ') ELSE '' END,
-- CONCAT('WHERE `Id`=\'',A.Id,'\';')
-- ) as sql_stmt
-- from broadcast_text A
-- join script_texts B ON A.Id=B.broadcast_text_id
-- WHERE b.broadcast_text_id != 0
-- ORDER BY A.ID;

-- due to only scriptdev having chattype overwrite, lets use normal text emote for these and overwrite in scriptdev wherever needed.
UPDATE `broadcast_text` SET `ChatTypeId`='2' WHERE `Id`='1191'; -- "%s goes into a frenzy!" - 2/3 can be Text Emote or Boss Emote, find different versions used.
UPDATE `broadcast_text` SET `ChatTypeId`='2' WHERE `Id`='2384'; -- "%s becomes enraged!" - 2/3 can be Text Emote or Boss Emote, find different versions used.
-- UPDATE `broadcast_text` SET `ChatTypeId`='3' WHERE `Id`='7213'; -- "%s takes in a deep breath..." - 2/3 can be Text Emote or Boss Emote, find different versions used.

UPDATE `broadcast_text` SET `ChatTypeId`='2' WHERE `Id`='10755'; -- "%s emits a strange noise." - should be 2 https://github.com/cmangos/wotlk-db/blob/ab5ed952acead783c17080939037c818f85f03ef/Updates/4665_Naxx_Miscs.sql#L41

-- UPDATE `broadcast_text` SET `SoundEntriesID1`='10486' WHERE `Id`='17563'; -- "You'll be sorry!" 10486 / 10496 sound the same!?

UPDATE `broadcast_text` SET `EmoteID1`='11' WHERE `Id`='2047'; -- "%s laughs." - prestor EMOTE_IN_KEEP_LAUGH (EMOTE_ONESHOT_LAUGH)

UPDATE `broadcast_text` SET `EmoteID1`='22' WHERE `Id`='9845'; -- "Let the games begin!" - victor_nefarius SAY_GAMESBEGIN_2 (EMOTE_ONESHOT_SHOUT)

UPDATE `broadcast_text` SET `SoundEntriesID1`='8800' WHERE `Id`='12854'; -- "You have failed!" - see soundentries near this one, this was assigned wrongly. - faerlina SAY_SLAY1
UPDATE `broadcast_text` SET `SoundEntriesID1`='11542' WHERE `Id`='20094'; -- "You have failed!" - add sound - vashj SAY_SLAY2

UPDATE `broadcast_text` SET `SoundEntriesID1`='8825', `ChatTypeId`='1' WHERE `Id`='13041'; -- "You are mine now." - shares sound/text with archimonde (10988) - heigan SAY_AGGRO1
UPDATE `broadcast_text` SET `SoundEntriesID1`='10988', `ChatTypeId`='6' WHERE `Id`='18258'; -- "You are mine now." - archimonde SAY_SOUL_CHARGE1

UPDATE `broadcast_text` SET `SoundEntriesID1`='10278', `ChatTypeId`='6' WHERE `Id`='18260'; -- "A-kreesh!" - archimonde SAY_AIR_BURST1
UPDATE `broadcast_text` SET `SoundEntriesID1`='10989', `ChatTypeId`='1' WHERE `Id`='17636'; -- "A-kreesh!" - omor SAY_CURSE - shares text with archimonde (10278) - archimonde SAY_AIR_BURST1

UPDATE `broadcast_text` SET `SoundEntriesID1`='10367', `ChatTypeId`='1' WHERE `Id`='14602'; -- "Tune 'em up good, boys!" - mekgineer SAY_MECHANICS

-- female/male shows which is what
UPDATE `broadcast_text` SET `EmoteID1`='0' WHERE `Id`='15882'; -- 17946	isla starmane - SAY_ISLA_START - 15882 Ok, let's get out of here!
UPDATE `broadcast_text` SET `EmoteID1`='1' WHERE `Id`='17946'; -- 17946	drijya SAY_DRIJYA_7 - 15882 Ok, let's get out of here!

UPDATE `broadcast_text` SET `SoundEntriesID1`='11042', `ChatTypeId`='6' WHERE `Id`='18259'; -- "Bow to my will!" - archimonde SAY_SOUL_CHARGE2
UPDATE `broadcast_text` SET `SoundEntriesID1`='11269', `ChatTypeId`='1' WHERE `Id`='20203'; -- "Bow to my will!" - kaelthas SAY_MINDCONTROL2

UPDATE `broadcast_text` SET `SoundEntriesID1`='11157' WHERE `Id`='20860'; -- "Anar'alah belore!" - telonicus SAY_TELONICUS_AGGRO
UPDATE `broadcast_text` SET `SoundEntriesID1`='11529' WHERE `Id`='21705'; -- "Anar'alah belore!" - council vera SPECIAL2

UPDATE `broadcast_text` SET `SoundEntriesID1`='8630' WHERE `Id`='18450'; -- "Lambs for the slaughter!" - veknilash SAY_AGGRO_1
UPDATE `broadcast_text` SET `SoundEntriesID1`='12463' WHERE `Id`='25628'; -- "Ah, more lambs to the slaughter!" - brutallus YELL_AGGRO


-- ('-1230038','No!','0','0','0','0','5265','Grim Patron SAY_PISSED_PATRON_2'),
-- ('-1560032','No!','10471','0','0','5','5265','thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
UPDATE `broadcast_text` SET `SoundEntriesID1`='0', `EmoteID1`='0' WHERE `Id`='5265'; -- Thrall Sound not used there. - Find correct one...

-- 16018	Thrall, come outside and face your fate. [PH]
-- 16019	Taretha's life hangs in the balance. Surely you care for her. Surely you wish to save her... 
-- 16020	No!
UPDATE `broadcast_text` SET `SoundEntriesID1`='10471', `EmoteID1`='5' WHERE `Id`='16020'; -- Thrall Sound

