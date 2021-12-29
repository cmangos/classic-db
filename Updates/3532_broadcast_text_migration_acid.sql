UPDATE creature_ai_scripts JOIN creature_ai_texts ON action1_param1=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action1_param1=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action1_param2=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action1_param2=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action1_param3=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action1_param3=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;

UPDATE creature_ai_scripts JOIN creature_ai_texts ON action2_param1=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action2_param1=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action2_param2=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action2_param2=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action2_param3=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action2_param3=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;

UPDATE creature_ai_scripts JOIN creature_ai_texts ON action3_param1=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action3_param1=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action3_param2=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action3_param2=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;
UPDATE creature_ai_scripts JOIN creature_ai_texts ON action3_param3=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET action3_param3=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;

UPDATE dbscript_random_templates JOIN creature_ai_texts ON target_id=entry JOIN broadcast_text ON creature_ai_texts.broadcast_text_id=broadcast_text.id
SET target_id=broadcast_text_id, broadcast_text.`ChatTypeID`=creature_ai_texts.`type`, broadcast_text.SoundEntriesID1=CASE WHEN broadcast_text.SoundEntriesID1 > 0 THEN broadcast_text.SoundEntriesID1 ELSE creature_ai_texts.sound END, broadcast_text.EmoteID1=CASE WHEN broadcast_text.EmoteID1 > 0 THEN broadcast_text.EmoteID1 ELSE creature_ai_texts.emote END;

TRUNCATE TABLE creature_ai_texts;

-- Manual updates
UPDATE dbscript_random_templates SET target_id=552 WHERE target_id=-348;
UPDATE dbscript_random_templates SET target_id=553 WHERE target_id=-349;
UPDATE dbscript_random_templates SET target_id=554 WHERE target_id=-350;
UPDATE dbscript_random_templates SET target_id=556 WHERE target_id=-351;
UPDATE dbscript_random_templates SET target_id=557 WHERE target_id=-352;
UPDATE dbscript_random_templates SET target_id=73 WHERE target_id=-93;
UPDATE dbscript_random_templates SET target_id=74 WHERE target_id=-94;
UPDATE dbscript_random_templates SET target_id=75 WHERE target_id=-95;
UPDATE dbscript_random_templates SET target_id=76 WHERE target_id=-96;
UPDATE dbscript_random_templates SET target_id=995 WHERE target_id=-224;
UPDATE dbscript_random_templates SET target_id=996 WHERE target_id=-225;
UPDATE dbscript_random_templates SET target_id=997 WHERE target_id=-226;
UPDATE dbscript_random_templates SET target_id=998 WHERE target_id=-227;
