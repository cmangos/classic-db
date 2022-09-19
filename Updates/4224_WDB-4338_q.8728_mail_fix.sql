-- q.8728 'The Good News and The Bad News'
-- gold & delay added to mail (Player should receive it 36hrs after complete) 
UPDATE quest_template SET RewMailTemplateId=0, RewMailDelaySecs=0 WHERE entry=8728;
DELETE FROM dbscripts_on_quest_end WHERE id IN (8728);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8728,1,38,123,11811,1000000,0,0,0,129600,0,0,0,0,0,0,0,'send mail with 36hrs delay to Player');
UPDATE quest_template SET CompleteScript = 8728 WHERE entry = 8728;

