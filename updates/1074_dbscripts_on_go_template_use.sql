-- Fixed some script texts used in quest 4322 (Jail Break!) in Blackrock Depths
SET @STRING_START := 2000005099;

-- DELETE FROM db_script_string WHERE entry in (@STRING_START,@STRING_START+1,@STRING_START+2,@STRING_START+3);
INSERT INTO db_script_string (entry, content_default) VALUES
(@STRING_START,'Get him out of there!'),
(@STRING_START+1,'Perhaps Ograbisi will use your head as a tiny little hat when I\'m through with you.'),
(@STRING_START+2,'Where I come from, you get shanked for opening another inmate\'s cell door!'),
(@STRING_START+3,'Ograbisi needs new hat.');

UPDATE `dbscripts_on_go_template_use` SET `dataint` = @STRING_START WHERE `id` = 170562;
UPDATE `dbscripts_on_go_template_use` SET `dataint` = @STRING_START + 1 WHERE `id` = 170569;
UPDATE `dbscripts_on_go_template_use` SET `dataint` = @STRING_START + 2 WHERE `id` = 170567;
UPDATE `dbscripts_on_go_template_use` SET `dataint` = @STRING_START + 3 WHERE `id` = 170568;
