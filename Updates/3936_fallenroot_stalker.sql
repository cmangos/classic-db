UPDATE creature_template_addon SET bytes1=0, auras='7939 22766' WHERE entry=4798;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=4798);
