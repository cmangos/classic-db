ALTER TABLE db_version CHANGE COLUMN required_z2828_01_mangos_spell_groups required_z2829_01_mangos_proc_cooldown bit;

UPDATE spell_proc_event SET cooldown=cooldown*1000 WHERE entry BETWEEN 0 AND 100000;

UPDATE spell_proc_event SET cooldown=3500 WHERE entry=324;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=11213;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=13983;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=16620;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16257;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=15600;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=18137;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=16864;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20375;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=21185;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22618;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22620;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=23552;
UPDATE spell_proc_event SET cooldown=120000 WHERE entry=22648;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=23572;
UPDATE spell_proc_event SET cooldown=9 WHERE entry=29074;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29441;

INSERT INTO spell_proc_event(entry,cooldown) VALUES
(905,3500),
(27561,20000),
(3582,10000),
(3417,4000),
(8876,4000),
(5202,3000),
(7849,5000),
(945,3500),
(7445,5000),
(325,3500),
(7446,5000),
(8134,3500),
(10432,3500),
(10431,3500),
(12281,200),
(12574,1000),
(12577,1000),
(15641,5000),
(12575,1000),
(12812,200),
(12576,1000),
(12815,200),
(12813,200),
(12814,200),
(13879,1000),
(13961,200),
(13960,200),
(13964,200),
(13767,6000),
(14869,8000),
(13962,200),
(14796,8000),
(12787,4000),
(15573,4000),
(14178,8000),
(13963,200),
(15733,3000),
(14071,1000),
(19449,3000),
(15506,4000),
(14870,8000),
(16280,500),
(16277,500),
(16278,500),
(14070,1000),
(16279,500),
(16792,2000),
(15876,9000),
(15852,10000),
(18189,1000),
(18983,30000),
(19194,3000),
(19818,3000),
(19308,3500),
(18943,3000),
(19362,3000),
(19817,3000),
(19312,3500),
(19309,3500),
(19311,3500),
(19310,3500),
(20920,1000),
(20918,1000),
(20915,1000),
(20919,1000),
(23378,3000),
(21853,5000),
(24256,240000),
(27539,10000),
(26341,20000),
(29446,1000),
(29075,9),
(29220,10000),
(29076,9),
(31255,5000),
(29444,1000),
(29445,1000),
(29447,1000);