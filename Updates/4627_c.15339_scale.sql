-- Correct default scale for Ossirian the Unscarred 15339
-- improves aggro radius due to size for Ossirian
-- correct some other scales based on vmangos (classic only)
UPDATE `creature_template` SET `Scale`='0' WHERE `entry`='15339'; -- Ossirian the Unscarred (1S)
UPDATE `creature_template` SET `Scale`='0' WHERE `entry`='1653'; -- Bloodsail Elder Magus (1.33S)
UPDATE `creature_template` SET `Scale`='2' WHERE `entry`='15806'; -- Qiraji Lieutenant (4S)
UPDATE `creature_template` SET `Scale`='1.1' WHERE `entry`='15756'; -- Greater Silithid Flayer (0S)
UPDATE `creature_template` SET `Scale`='2' WHERE `entry`='15757'; -- Qiraji Lieutenant General (2.5S)
UPDATE `creature_template` SET `Scale`='2' WHERE `entry`='15758'; -- Supreme Anubisath Warbringer (0S)
UPDATE `creature_template` SET `Scale`='1.4' WHERE `entry`='15759'; -- Supreme Silithid Flayer (0S)
UPDATE `creature_template` SET `Scale`='0.5' WHERE `entry`='15808'; -- Minor Silithid Flayer (0S)
UPDATE `creature_template` SET `Scale`='0.5' WHERE `entry`='15811'; -- Faltering Silithid Flayer (0S)
UPDATE `creature_template` SET `Scale`='2' WHERE `entry`='15812'; -- Qiraji Officer (4S)
UPDATE `creature_template` SET `Scale`='2.5' WHERE `entry`='15813'; -- Qiraji Officer Zod (0S)
UPDATE `creature_template` SET `Scale`='2.5' WHERE `entry`='15814'; -- Qiraji Lieutenant Jo-rel (0S)
UPDATE `creature_template` SET `Scale`='2.5' WHERE `entry`='15815'; -- Qiraji Captain Ka'ark (1S)
UPDATE `creature_template` SET `Scale`='2.5' WHERE `entry`='15816'; -- Qiraji Major He'al-ie (0S)
UPDATE `creature_template` SET `Scale`='2.5' WHERE `entry`='15817'; -- Qiraji Brigadier General Pax-lish (0S)
UPDATE `creature_template` SET `Scale`='3' WHERE `entry`='15818'; -- Lieutenant General Nokhor (2.5S)
UPDATE `creature_template` SET `Scale`='1.35' WHERE `entry`='15847'; -- Might of Kalimdor Shaman (0S)
UPDATE `creature_template` SET `Scale`='1.25' WHERE `entry`='15849'; -- Might of Kalimdor Druid (0S)
UPDATE `creature_template` SET `Scale`='1.35' WHERE `entry`='15855'; -- Tauren Rifleman (0S)
UPDATE `creature_template` SET `Scale`='1.35' WHERE `entry`='15856'; -- Tauren Primalist (0S) -- trauen seemingly 1.35 and 1.25 in same creature_template if they share entry and sex

