-- Fixed respawn time of creatures in outer part of Uldaman
UPDATE `creature` SET `spawntimesecs` = 600 WHERE `id` IN (4856, 4846, 4844, 4845, 4872, 4851, 2932);
