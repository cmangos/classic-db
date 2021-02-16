-- Add a few missing broadcast text IDs
UPDATE dbscript_string SET broadcast_text_id=6005 WHERE entry=2000003200;
UPDATE dbscript_string SET broadcast_text_id=6020 WHERE entry=2000003201;
UPDATE dbscript_string SET broadcast_text_id=5966 WHERE entry=2000003202;
UPDATE dbscript_string SET broadcast_text_id=5968 WHERE entry=2000003203;
UPDATE dbscript_string SET broadcast_text_id=5967 WHERE entry=2000003204;
UPDATE dbscript_string SET broadcast_text_id=6025 WHERE entry=2000003205;
UPDATE dbscript_string SET broadcast_text_id=6091 WHERE entry=2000003206;
UPDATE dbscript_string SET broadcast_text_id=6072 WHERE entry=2000003207;
UPDATE dbscript_string SET broadcast_text_id=6073 WHERE entry=2000003208;
UPDATE dbscript_string SET broadcast_text_id=6074 WHERE entry=2000003209;
UPDATE dbscript_string SET broadcast_text_id=6098 WHERE entry=2000003210;
UPDATE dbscript_string SET broadcast_text_id=6099 WHERE entry=2000003211;
UPDATE dbscript_string SET broadcast_text_id=6100 WHERE entry=2000003212;
UPDATE dbscript_string SET broadcast_text_id=1115, content_default='Take a stone from the table, $N.  You will need it for your quest.' WHERE entry=2000003213;

-- Synchronise text entry with WotLK-DB one
UPDATE dbscript_string SET entry=2000005089, content_default='Go swiftly, $n. My fate is in your hands.', broadcast_text_id=1341 WHERE entry=2000000002;
