
DELETE a FROM creature_addon a INNER JOIN creature b ON a.guid=b.guid WHERE b.id IN (12460, 12461);

UPDATE `creature_template_addon` SET `auras`='19818 22276 22282' WHERE `entry`='12460';
UPDATE `creature_template_addon` SET `auras`='22276' WHERE `entry`='12461';
