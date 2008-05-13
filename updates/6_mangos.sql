-- Gnomeregan Bosses

UPDATE `creature_template` SET `scriptname` = "mob_eventai" WHERE `entry` IN (6229, 7915, 7800);



-- Deadmine Boss Conversion

UPDATE `creature_template` SET `scriptname` = "mob_eventai" WHERE `entry` IN (3586, 643); 



DELETE FROM `game_event` WHERE (`entry`=100);

INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `description`) VALUES (100,

'2008-02-13 18:59:50' -- INSERT START DATE AND TIME HERE - CONCERT STARTS 10 SECONDS LATER

, '2020-01-01 00:00:00',

60 -- INSERT EVENT OCCURENCE DURATION HERE (in minutes)

,

5 -- INSERT EVENT DURATION HERE (in minutes)

, 'L70ETC Concert');

DELETE FROM `game_event_creature` WHERE abs(`event`) = 100;

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

(100000,100),

(100001,100),

(100002,100),

(100003,100),

(100004,100),

(100005,100),

(100006,100),

(100007,100),

(100008,100),

(100009,100);



-- ### SPAWNS ###

DELETE FROM `creature` WHERE `id` in (23721,23625,23619,23626,23624,23623,23830);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES

-- samuro spawn - Lead Vocals

(100000, 23625, 530, 0, 0, -2219.26, 5124.72, -16.5406, 6.08812, 25, 0, 0, 6100, 0, 0, 0),

-- Bergrisst spawn - Lead Guitar

(100001, 23619, 530, 0, 0, -2221.88, 5122.5, -16.52, 6.08419, 25, 0, 0, 5900, 7196, 0, 0),

-- Sig nicious spawn - Rhythm Guitar

(100002, 23626, 530, 0, 0, -2220.87, 5128.07, -16.5431, 6.07022, 25, 0, 0, 6400, 3155, 0, 0),

-- Mai'Kyl spawn - Bass Guitar

(100003, 23624, 530, 0, 0, -2220.98, 5130.86, -16.5221, 6.01916, 25, 0, 0, 7200, 3155, 0, 0),

-- Chief Thunder-Skins Spawn - Drummer

(100004, 23623, 530, 0, 0, -2226.86, 5127.81, -12.9949, 5.91769, 25, 0, 0, 11000, 3155, 0, 0),

-- L70ETC FX Controller spawn

(100005, 23830, 530, 0, 0, -2208.33, 5123.95, -20.1186, 2.94598, 25, 0, 0, 1, 0, 0, 0),

-- Concert Bruiser Spawns

(100006, 23721, 530, 0, 0, -2197.05, 5130.85, -20.4891, 3.4576, 25, 0, 0, 1, 0, 0, 0),

(100007, 23721, 530, 0, 0, -2200.36, 5113.89, -20.2293, 2.32662, 25, 0, 0, 1, 0, 0, 0),

(100008, 23721, 530, 0, 0, -2215.1, 5117.98, -20.106, 0.230397, 25, 0, 0, 1, 0, 0, 0),

(100009, 23721, 530, 0, 0, -2211.77, 5131.87, -20.1147, 5.22553, 25, 0, 0, 1, 0, 0, 0);



-- Set Scriptnames

UPDATE `creature_template` SET `scriptname`='mob_eventai' where `entry` in (23625,23619,23830,23853,23626,23624,23623);



-- change L70ETC FX Controller model to invisible

UPDATE `creature_template` SET `modelid_A` = 11686, `modelid_H` = 11686 WHERE `entry` = 23830;



-- set Darkmoon Faire (Terokkar Forest) length to very long

update `game_event` set length=10020000 where entry=3;



-- Set band invisible at start

DELETE FROM `creature_template_addon` WHERE `entry` in (23625,23619,23626,23624,23623);

INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES

('23619', '10032 0'),

('23623', '10032 0'),

('23624', '10032 0'),

('23625', '10032 0'),

('23626', '10032 0');