--      CLEANING QUERIES BY YEHONAL
--
-- INFO: this queries will clean your db
-- from almost all useless or unreferenced
-- rows.
--
-- CAUTIONS:
-- 1) most of this queries has been
-- build for ZeroProject DB and shouldn't be
-- executed on other DBs.
-- 2) executing this file it will take
-- different minutes ,  according to
-- your computer performances
--


-- ##########################################
--  players and pet infos:
-- ##########################################

DELETE FROM `player_classlevelstats` WHERE `level`>60;
DELETE FROM `player_levelstats` WHERE `level`>60 OR `race`>9;
DELETE FROM `playercreateinfo` WHERE `race`>9;
DELETE FROM `playercreateinfo_action` WHERE `race`>9;
DELETE FROM `playercreateinfo_item` WHERE `race`>9;
DELETE FROM `playercreateinfo_spell` WHERE `race`>9;

DELETE FROM `pet_levelstats` WHERE `level`>60 OR `creature_entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `petcreateinfo_spell` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);



-- ##########################################
-- creature tables:
-- ##########################################

DELETE FROM `creature` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);

DELETE FROM `creature_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);

DELETE FROM `creature_questrelation` WHERE id NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_questrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_involvedrelation` WHERE id  NOT IN (SELECT `entry` FROM `creature_template`);

DELETE FROM creature_onkill_reputation WHERE creature_id  NOT IN (SELECT `entry` FROM `creature_template`);

UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;

UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` AND `creature_template`.`RegenHealth` = '1';


-- ##########################################
-- NPC tables:
-- ##########################################

DELETE FROM npc_vendor WHERE item NOT IN ( SELECT entry FROM item_template);
DELETE FROM npc_vendor WHERE entry NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM npc_trainer WHERE entry NOT IN(SELECT entry FROM creature_template);

DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);


-- ##########################################
-- loot tables:
-- ##########################################


-- ------------------------------------------
-- SQL PROCEDURE TO CLEAN reference_loot_template from not exist references
-- -------------------------------------------
-- START

DELIMITER $$
DROP PROCEDURE IF EXISTS _reference_cleaning $$
CREATE PROCEDURE _reference_cleaning()
BEGIN

    DECLARE entries INT DEFAULT 0;
    DECLARE cnt INT DEFAULT 0;
    DECLARE i INT DEFAULT 0;
    DECLARE ok BOOL DEFAULT FALSE;
    DECLARE temp INT DEFAULT 0;

    -- store all referenced entries to compare with other tables
    DECLARE reference_loot CURSOR FOR
        SELECT DISTINCT(-`entry`) FROM `reference_loot_template`
        WHERE `mincountorref`>0;

    -- rowcount to process the _while_ (must be the same of previous)
    SET @cnt := ( SELECT COUNT(DISTINCT(`entry`)) FROM reference_loot_template WHERE mincountorref>0 );

    OPEN reference_loot;

    WHILE (i<@cnt) DO

      SET ok = FALSE;
      SET @temp = 0;

      FETCH NEXT
      FROM reference_loot
      INTO  entries;

      -- start to find entries[i] in all loot_tables ( also self )
	
	SET @temp := ( SELECT DISTINCT(`mincountorref`)  FROM `reference_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries );
	
	IF @temp<>0 THEN
	 SET ok = TRUE;
	END IF;

	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `item_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
	  IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
        END IF;
	
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `creature_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
	  IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
	END IF;
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `gameobject_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
	  IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
	END IF;
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `disenchant_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
          IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
        END IF;
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `skinning_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
          IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
        END IF;
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `fishing_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
          IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
        END IF;
	
	IF NOT ok THEN
          SET @temp := ( SELECT DISTINCT(`mincountorref`) FROM `pickpocketing_loot_template` WHERE mincountorref<0 AND `mincountorref`=entries);
          IF @temp<>0 THEN
	      SET ok = TRUE;
	  END IF;
        END IF;


     -- delete entry if not found

	IF NOT ok THEN
	 DELETE FROM `reference_loot_template` WHERE `entry`=-entries ;
	END IF;

     -- next
	SET i = i+1;
	
  END WHILE;

  CLOSE reference_loot;


END $$
DELIMITER ;
CALL _reference_cleaning();
DROP PROCEDURE IF EXISTS _reference_cleaning ;


-- -----------------------
-- END
-- -----------------------





-- PICKPOCKETING

-- No join query:  DELETE FROM pickpocketing_loot_template WHERE entry NOT IN ( SELECT DISTINCT(pickpocketloot) FROM creature_template WHERE pickpocketloot>0);
CREATE INDEX `pickpocketloot_idx` ON `creature_template` (`pickpocketloot`);
DELETE t1.* FROM `pickpocketing_loot_template` t1 LEFT JOIN `creature_template` t2 ON t1.`entry` = t2.`pickpocketloot` WHERE t2.`pickpocketloot` IS NULL;
DROP INDEX `pickpocketloot_idx` ON `creature_template`;


-- SKINNING

-- No join query:  DELETE FROM skinning_loot_template WHERE entry NOT IN ( SELECT DISTINCT(skinloot) FROM creature_template WHERE skinloot>0);
CREATE INDEX `skinloot_idx` ON `creature_template` (`skinloot`);
DELETE FROM t1 USING `skinning_loot_template` t1 LEFT OUTER JOIN `creature_template` t2 ON t1.`entry` = t2.`skinloot` WHERE t2.`skinloot` IS NULL;
DROP INDEX `skinloot_idx` ON `creature_template`;


-- Creatures LOOT

CREATE INDEX `lootid_idx` ON `creature_template` (`lootid`);
DELETE `v0`.* FROM `creature_loot_template` AS `v0` LEFT JOIN `creature_template` AS `v1` ON `v0`.`entry`=`v1`.`lootid` AND `v1`.`lootid`>0 WHERE `v1`.`lootid` IS NULL;
DROP INDEX `lootid_idx` ON `creature_template`;

-- Gameobject Loot

CREATE INDEX `data1_idx` ON `gameobject_template` (`data1`);
DELETE `v0`.* FROM `gameobject_loot_template` AS `v0` LEFT JOIN `gameobject_template` AS `v1` ON (`type`=3 OR `type`=25) AND `v0`.`entry`=`v1`.`data1` AND `v1`.`data1`>0 WHERE `v1`.`data1` IS NULL;
DROP INDEX `data1_idx` ON `gameobject_template`;


-- ITEMs LOOT

DELETE FROM item_loot_template WHERE ( entry NOT IN ( SELECT entry FROM item_template) OR item NOT IN ( SELECT entry FROM item_template) ) AND mincountOrRef>0;


-- QUEST LOOT

DELETE FROM mail_loot_template WHERE ( item NOT IN ( SELECT entry FROM item_template) AND mincountOrRef>0 )  OR entry NOT IN ( SELECT RewMailTemplateId FROM quest_template);


-- -----------------------------
-- CLEANING LOOT WITH WRONG ITEMS
-- ------------------------------

-- Clean creature_loot_template

DELETE FROM `creature_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`) AND mincountOrRef>0;

-- Clean reference_loot_template

DELETE FROM `reference_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`) AND mincountOrRef>0;

-- Clean gameobject_loot_template

DELETE FROM `gameobject_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`) AND mincountOrRef>0;

-- Clean fishing_loot_template

DELETE FROM fishing_loot_template WHERE item NOT IN ( SELECT entry FROM item_template) AND mincountOrRef>0;

-- Clean disenchant_loot_template

DELETE FROM `disenchant_loot_template` WHERE `entry` NOT IN ( SELECT DISTINCT(DisenchantID) FROM item_template) AND mincountOrRef>0;

-- Clean Pickpocketing_loot_template
DELETE FROM pickpocketing_loot_template WHERE item NOT IN ( SELECT entry FROM item_template) AND mincountOrRef>0;

-- clean skinning
-- No join query:  DELETE FROM skinning_loot_template WHERE item NOT IN ( SELECT entry FROM item_template);
DELETE FROM t1 USING `skinning_loot_template` t1 LEFT OUTER JOIN `item_template` t2 ON t1.`item` = t2.`entry` WHERE t2.`entry` IS NULL;


-- update referenced fields ( after wrong items deleting )

UPDATE gameobject_template SET data1=0 WHERE data1 NOT IN ( SELECT entry FROM gameobject_loot_template) AND (`type`=3 OR `type`=25);
UPDATE creature_template SET lootid=0 WHERE lootid NOT IN (SELECT entry FROM creature_loot_template);
UPDATE creature_template SET skinloot=0 WHERE skinloot NOT IN (SELECT entry FROM skinning_loot_template);
UPDATE creature_template SET pickpocketloot=0 WHERE pickpocketloot NOT IN (SELECT entry FROM pickpocketing_loot_template);
UPDATE quest_template SET RewMailTemplateId=0 WHERE RewMailTemplateId>0 AND RewMailTemplateId NOT IN ( SELECT entry FROM mail_loot_template);


-- rows without references ( creature_loot_template will take a while )

DELETE FROM t1 USING `creature_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `gameobject_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `item_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `mail_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `disenchant_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `skinning_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `pickpocketing_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;
DELETE FROM t1 USING `fishing_loot_template` t1 LEFT OUTER JOIN `reference_loot_template` t2 ON t1.`mincountorref` = -t2.`entry` WHERE t1.`mincountorref` < 0 AND t2.`entry` IS NULL;


-- ##########################################
-- gobject_tables:
-- ##########################################

UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);

DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` IN (11, 12) AND `datalong` NOT IN (SELECT `guid` FROM `gameobject`);

-- ##########################################
-- instance tables:
-- ##########################################




-- ##########################################
-- quest tables:
-- ##########################################

DELETE FROM quest_start_scripts WHERE  id NOT IN ( SELECT startScript FROM quest_template ) AND id NOT IN ( SELECT completescript FROM quest_template );
DELETE FROM quest_end_scripts WHERE  id NOT IN ( SELECT startScript FROM quest_template ) AND id NOT IN ( SELECT completescript FROM quest_template );

-- ##########################################
-- game_event and eventai tables
-- ##########################################

DELETE FROM `game_event_creature` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature_quest` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_gameobject` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);

-- ##########################################
-- various:
-- ##########################################


DELETE FROM battlemaster_entry WHERE entry NOT IN (SELECT `entry` FROM `creature_template`);

-- to speed up
DELETE FROM db_script_string WHERE entry NOT IN ( SELECT dataint FROM event_scripts WHERE `command`=0) AND entry NOT IN ( SELECT dataint FROM spell_scripts WHERE `command`=0) AND entry NOT IN ( SELECT dataint FROM quest_end_scripts WHERE `command`=0)
AND entry NOT IN ( SELECT dataint FROM quest_start_scripts WHERE `command`=0) AND entry NOT IN ( SELECT dataint FROM gameobject_scripts WHERE `command`=0)
AND entry NOT IN ( SELECT textid1 FROM creature_movement WHERE `textid1`<>0)
AND entry NOT IN ( SELECT textid2 FROM creature_movement WHERE `textid2`<>0)
AND entry NOT IN ( SELECT textid3 FROM creature_movement WHERE `textid3`<>0)
AND entry NOT IN ( SELECT textid4 FROM creature_movement WHERE `textid4`<>0)
AND entry NOT IN ( SELECT textid5 FROM creature_movement WHERE `textid5`<>0);


DELETE FROM gameobject_battleground WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM creature_battleground WHERE guid NOT IN (SELECT guid FROM creature);

DELETE FROM item_required_target
WHERE entry NOT IN (SELECT entry FROM item_template) OR targetEntry NOT IN (SELECT entry FROM creature_template) ;


DELETE FROM spell_script_target
WHERE ( (`type`=1 OR `type`=2) AND targetEntry NOT IN (SELECT entry FROM creature_template)  )
OR    ( `type`=0 AND targetEntry NOT IN (SELECT entry FROM gameobject_template) );


-- ##########################################
-- WAYPOINTS:
-- ##########################################


DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);

-- GENERAL CLEANUP COULD HAVE SOME QUERIES ALREADY EXECUTED BEFORE

-- ########### GENERAL CLEANUP QUERIES ###########


UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` AND `creature_template`.`RegenHealth` = '1';
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` IN (11, 12) AND `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);
