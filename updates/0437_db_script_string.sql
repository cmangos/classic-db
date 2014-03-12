-- Fixing dialogue of creature 3520 (Ol' Emma)
-- Thanks Swater96 for reporting, fixes #325
-- Source: http://wowpedia.org/Ol%27_Emma
-- Source: http://www.wowhead.com/npc=3520#comments
UPDATE `db_script_string` SET `content_default` = 'Jack and Jill my wrinkled patoot! I do all the water luggin\' \'round here.' WHERE `entry` = 2000005103;
UPDATE `db_script_string` SET `content_default` = 'Where\'s the water, Emma? Get the water, Emma? If\'n it weren\'t fer me, that lot wouldn\'t know what water looks like.' WHERE `entry` = 2000005104;
UPDATE `db_script_string` SET `content_default` = 'O\'ourse I\'m talking to myself. Only way to get a decent conversation in this city.' WHERE `entry` = 2000005105;
UPDATE `db_script_string` SET `content_default` = 'As if I don\'t have better things to do in my old age than carry buckets of water.' WHERE `entry` = 2000005106;