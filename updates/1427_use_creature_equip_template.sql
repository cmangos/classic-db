
UPDATE `creature_template` AS a INNER JOIN `creature_equip_template` AS b ON a.`entry`= b.`entry` SET a.`equipmenttemplateid` = a.`entry`;
