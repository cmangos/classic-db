-- Previously unassigned due to more than one candidate Broadcast Text ID
UPDATE dbscript_string SET broadcast_text_id=1157 WHERE entry=2000003338;
UPDATE dbscript_string SET broadcast_text_id=1217 WHERE entry=2000000087;
UPDATE dbscript_string SET broadcast_text_id=4667 WHERE entry=2000000651;
UPDATE dbscript_string SET broadcast_text_id=1541 WHERE entry=2000002001;
UPDATE dbscript_string SET broadcast_text_id=989 WHERE entry=2000003234;
UPDATE dbscript_string SET broadcast_text_id=2085 WHERE entry=2000003244;
UPDATE dbscript_string SET broadcast_text_id=2047 WHERE entry=2000003255;
UPDATE dbscript_string SET broadcast_text_id=2303 WHERE entry=2000003276;
UPDATE dbscript_string SET broadcast_text_id=2341 WHERE entry=2000003278;
UPDATE dbscript_string SET broadcast_text_id=1953 WHERE entry=2000003292;
UPDATE dbscript_string SET broadcast_text_id=8923 WHERE entry=2000005465;
-- Incorrect text : now fixed and correct Broadcast Text ID assigned
UPDATE dbscript_string SET broadcast_text_id=5289, content_default='$N, that''s it! I have finally figured it out!' WHERE entry=2000000030;
UPDATE dbscript_string SET broadcast_text_id=1156, content_default='%s removes the seeds from the Glowing Fruit...' WHERE entry=2000003337;
UPDATE dbscript_string SET broadcast_text_id=1158, content_default='%s plants the fruit seeds.' WHERE entry=2000003339;
UPDATE dbscript_string SET broadcast_text_id=1174, content_default='%s rises from the soil!' WHERE entry=2000003340;

-- Inexistant/utterly wrong text
-- Quest template text wrongly used as "say"
DELETE FROM dbscript_string WHERE entry=2000000243;
DELETE FROM dbscripts_on_quest_start WHERE dataint=2000000243;
-- Flavor random say that was not yet added in Classic
DELETE FROM dbscript_string WHERE entry=2000005064;
DELETE FROM dbscripts_on_relay WHERE dataint=2000005064;
DELETE FROM dbscript_random_templates WHERE id=9;
DELETE FROM dbscripts_on_gossip WHERE id=306201 AND command=45;
