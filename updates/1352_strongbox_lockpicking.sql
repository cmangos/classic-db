-- Made Buccaneer's Strongbox despawn after being picked
UPDATE `gameobject_template` SET `data2`='0' WHERE `entry`='123330' OR `entry`='123331' OR `entry`='123332' OR `entry`='123333';
UPDATE `gameobject` SET `spawntimesecs`='5' WHERE `id`='123330' OR `id`='123331' OR `id`='123332' OR `id`='123333' OR `id`='178246';
