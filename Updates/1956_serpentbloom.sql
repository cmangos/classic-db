-- Removing displayId for Serpentblooms trap removes the "hard to click" issue and makes the plant disappear when claimed like it should
UPDATE `gameobject_template` SET `displayId`='0' WHERE `entry`='19535';
