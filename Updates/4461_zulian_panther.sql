
UPDATE `creature_template` SET `SpeedWalk` = '1' WHERE (`Entry` = '11365');

-- correct more speedwalk/run values for highlevel classic npcs
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1843'; -- Foreman Jerris (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10204'; -- Misha (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1.2' WHERE `entry`='10264'; -- Solakar Flamewreath (1.2SW) (1.42857SR)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12900'; -- Somnus (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='4', `SpeedRun`= 15 / 7 WHERE `entry`='13256'; -- Lokholar the Ice Lord (4SW) (2.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='4', `SpeedRun`= 15 / 7 WHERE `entry`='13419'; -- Ivus the Forest Lord (4SW) (2.14286SR)
UPDATE `creature_template` SET `SpeedWalk`= 8 / 7 WHERE `entry`='13539'; -- Champion Coldmine Surveyor (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`= 8 / 7 WHERE `entry`='13542'; -- Champion Irondeep Explorer (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`= 8 / 7 WHERE `entry`='13548'; -- Champion Coldmine Explorer (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`= 8 / 7 WHERE `entry`='14021'; -- Winterax Sentry (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`= 8 / 7 WHERE `entry`='14533'; -- Simone the Seductress (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedRun`= 15 / 7 WHERE `entry`='14988'; -- Ohgan (1SW) (2.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1.2', `SpeedRun`= 3 / 7 WHERE `entry`='15224'; -- Dream Fog (1.27SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15467'; -- Omen (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15730'; -- Pat's Snowcloud Guy (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15902'; -- Giant Spotlight (1SW) (1.14286SR)
UPDATE `creature_template` SET `SpeedRun`= 10 / 7 WHERE `entry`='16124'; -- Unrelenting Trainee (1SW) (1.42857SR)
UPDATE `creature_template` SET `SpeedRun`= 6 / 7 WHERE `entry`='16129'; -- Shadow Fissure (1SW) (0.857143SR)

