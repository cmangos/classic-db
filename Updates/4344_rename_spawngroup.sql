
UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4095 ',''));
UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4097',''));
UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4099 ',''));

UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4093 ',''));
UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4094 ',''));
UPDATE `spawn_group` SET `name`=(SELECT REPLACE(name,'4096 ',''));
