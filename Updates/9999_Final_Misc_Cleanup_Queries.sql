-- =========================================================================================================================================================
-- =================                    APPLY LATEST ITEM NAMES AND REFERENCE NAMES TO LOOT / REFERENCE / VENDOR TABLES                    ================= 
-- =========================================================================================================================================================
UPDATE `reference_loot_template` SET comments='';
UPDATE `reference_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `reference_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `creature_loot_template` SET comments='';
UPDATE `creature_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `creature_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `gameobject_loot_template` SET comments='';
UPDATE `gameobject_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `gameobject_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `disenchant_loot_template` SET comments='';
UPDATE `disenchant_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `disenchant_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `fishing_loot_template` SET comments='';
UPDATE `fishing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `fishing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `item_loot_template` SET comments='';
UPDATE `item_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `item_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `skinning_loot_template` SET comments='';
UPDATE `skinning_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `skinning_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `pickpocketing_loot_template` SET comments='';
UPDATE `pickpocketing_loot_template` ct JOIN `item_template` it ON it.entry = ct.item AND ct.MinCountOrRef > 0 SET ct.comments = CONCAT(ct.comments, "", it.name);
UPDATE `pickpocketing_loot_template` ct JOIN `reference_loot_template_names` rltn ON rltn.entry = -ct.MinCountOrRef AND ct.MinCountOrRef < 0 SET ct.comments = CONCAT(ct.comments, "", rltn.name);

UPDATE `npc_vendor_template` SET comments='';
UPDATE `npc_vendor_template` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

UPDATE `npc_vendor` SET comments='';
UPDATE `npc_vendor` ct JOIN `item_template` it ON it.entry = ct.item SET ct.comments = CONCAT(ct.comments, "", it.name);

-- ==============================
-- Populate Condition Comments
-- ==============================

UPDATE conditions SET comments=NULL WHERE comments='';
-- CONDITION_NONE
UPDATE conditions SET comments=CONCAT('Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=0 AND comments IS NULL; -- CONDITION_AURA
UPDATE conditions SET comments=CONCAT('NOT Player Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=1 AND comments IS NULL; -- CONDITION_NO_AURA
UPDATE conditions SET comments=CONCAT('Source of Condition Has Aura: ',value1, ', EffectIndex: ',value2) WHERE type=1 AND flags=2 AND comments IS NULL; -- CONDITION_SOURCE_AURA
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory') WHERE type=2 AND flags=0 AND comments IS NULL; -- CONDITION_ITEM
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory') WHERE type=2 AND flags=1 AND comments IS NULL; -- CONDITION_NOITEM
UPDATE conditions SET comments=CONCAT('Player Has Item ID ',value1,' Equipped') WHERE type=3 AND comments IS NULL; -- CONDITION_ITEM_EQUIPPED
UPDATE conditions SET comments=CONCAT('Is In Area ID: ',value1) WHERE type=4 AND value2=0 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('NOT In Area ID: ',value1) WHERE type=4 AND value2=1 AND comments IS NULL; -- CONDITION_AREAID
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hated With Faction ID: ',value1) WHERE type=5 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Hostile With Faction ID: ',value1) WHERE type=5 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Unfriendly With Faction ID: ',value1) WHERE type=5 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Neutral With Faction ID: ',value1) WHERE type=5 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Friendly With Faction ID: ',value1) WHERE type=5 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Honored With Faction ID: ',value1) WHERE type=5 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Revered With Faction ID: ',value1) WHERE type=5 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Has Minimum Rank Exalted With Faction ID: ',value1) WHERE type=5 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MIN
UPDATE conditions SET comments=CONCAT('Alliance Player') WHERE type=6 AND value1=469 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Horde Player') WHERE type=6 AND value1=67 AND comments IS NULL; -- CONDITION_TEAM
UPDATE conditions SET comments=CONCAT('Has Skill ID ',value1,', Minimum Skill Value ',value2) WHERE type=7 AND comments IS NULL; -- CONDITION_SKILL
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Rewarded') WHERE type=8 AND flags=0 AND comments IS NULL; -- CONDITION_QUEST_REWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Rewarded') WHERE type=8 AND flags=1 AND comments IS NULL; -- CONDITION_QUEST_NOT_REWARDED
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken') WHERE type=9 AND value2=0 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND NOT Completed') WHERE type=9 AND value2=1 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Taken AND Completed') WHERE type=9 AND value2=2 AND comments IS NULL; -- CONDITION_QUESTTAKEN
UPDATE conditions SET comments=CONCAT('Player has any Argent Dawn Commission Aura Active (17670,23930,24198,29112,29113)') WHERE type=10 AND comments IS NULL; -- CONDITION_AD_COMMISSION_AURA
UPDATE conditions SET comments=CONCAT('Event ID ',value1, ' Active') WHERE type=12 AND flags=0 AND comments IS NULL; -- CONDITION_ACTIVE_EVENT
UPDATE conditions SET comments=CONCAT('Game Event ',value1,' NOT Active') WHERE type=12 AND flags=1 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_GAME_EVENT
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area') WHERE type=13 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value2, ' NOT Present in Current Area') WHERE type=13 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Area Flag ',value1, ' Present in Current Area AND Area Flag ',value2,' NOT Present in Current Area') WHERE type=13 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_AREA_FLAG
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1) WHERE type=14 AND value1 !=0 AND value2=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player ClassMask: ',value2) WHERE type=14 AND value1 =0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player RaceMask: ',value1, ' AND Player ClassMask: ',value2) WHERE type=14 AND value1 !=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_RACE_CLASS
UPDATE conditions SET comments=CONCAT('Player Level == ',value1) WHERE type=15 AND value2=0 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level >= ',value1) WHERE type=15 AND value2=1 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Level <= ',value1) WHERE type=15 AND value2=2 AND comments IS NULL; -- CONDITION_LEVEL
UPDATE conditions SET comments=CONCAT('Player Has Learned Spell: ',value1) WHERE type=17 AND value2=0 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('NOT Player Has Learned Spell: ',value1) WHERE type=17 AND value2=1 AND comments IS NULL; -- CONDITION_SPELL
UPDATE conditions SET comments=CONCAT('ScriptDev: InstanceConditionID Value: ',value1) WHERE type=18 AND comments IS NULL; -- CONDITION_INSTANCE_SCRIPT
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' Available') WHERE type=19 AND comments IS NULL; -- CONDITION_QUESTAVAILABLE
-- CONDITION_ACHIEVEMENT
-- CONDITION_ACHIEVEMENT_REALM
UPDATE conditions SET comments=CONCAT('Quest ID ',value1,' NOT Taken AND NOT Rewarded') WHERE type=22 AND comments IS NULL; -- CONDITION_QUEST_NONE
UPDATE conditions SET comments=CONCAT('Player Has ',value2,' or more of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND flags=0 AND comments IS NULL; -- CONDITION_ITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Player Has Less Than ',value2,' of Item ID ',value1,' in Inventory/Bank') WHERE type=23 AND flags=1 AND comments IS NULL; -- CONDITION_NOITEM_WITH_BANK
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' Active') WHERE type=26 AND flags=0 AND comments IS NULL; -- CONDITION_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('Holiday ',value1,' NOT Active') WHERE type=26 AND flags=1 AND comments IS NULL; -- CONDITION_NOT_ACTIVE_HOLIDAY
UPDATE conditions SET comments=CONCAT('Player can learn Ability from Spell ID: ',value1) WHERE type=28 AND value2=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('(Player can learn Ability from Spell ID ',value1,' AND NOT has Item ID ',value2,' in Inventory or Bank)') WHERE type=28 AND value2 !=0 AND comments IS NULL; -- CONDITION_LEARNABLE_ABILITY
UPDATE conditions SET comments=CONCAT('Skill level of Skill ID ',value1,' Below level ',value2) WHERE type=29 AND comments IS NULL; -- CONDITION_SKILL_BELOW
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hated With Faction ID: ',value1) WHERE type=30 AND value2=0 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Hostile With Faction ID: ',value1) WHERE type=30 AND value2=1 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Unfriendly With Faction ID: ',value1) WHERE type=30 AND value2=2 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Neutral With Faction ID: ',value1) WHERE type=30 AND value2=3 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Friendly With Faction ID: ',value1) WHERE type=30 AND value2=4 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Honored With Faction ID: ',value1) WHERE type=30 AND value2=5 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Revered With Faction ID: ',value1) WHERE type=30 AND value2=6 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Has Maximum Rank Exalted With Faction ID: ',value1) WHERE type=30 AND value2=7 AND comments IS NULL; -- CONDITION_REPUTATION_RANK_MAX
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed') WHERE type=31 AND value2=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Dungeon Encounter ID ',value1,' Completed OR Dungeon Encounter ID ',value2,' Completed') WHERE type=31 AND value2 !=0 AND comments IS NULL; -- CONDITION_COMPLETED_ENCOUNTER
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint == ',value1) WHERE type=33 AND value2=0 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint <= ',value1) WHERE type=33 AND value2=1 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
UPDATE conditions SET comments=CONCAT('Source of Condition''s Last Waypoint >= ',value1) WHERE type=33 AND value2=2 AND comments IS NULL; -- CONDITION_LAST_WAYPOINT
-- CONDITION_XP_USER
UPDATE conditions SET comments=CONCAT('Player Gender: Male') WHERE type=35 AND value1=0 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: Female') WHERE type=35 AND value1=1 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player Gender: None') WHERE type=35 AND value1=2 AND flags=0 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: Male') WHERE type=35 AND value1=0 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: Female') WHERE type=35 AND value1=1 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('NPC Gender: None') WHERE type=35 AND value1=2 AND flags=2 AND comments IS NULL; -- CONDITION_GENDER
UPDATE conditions SET comments=CONCAT('Player is Dead') WHERE type=36 AND value1=0 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead') WHERE type=36 AND value1=1 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead') WHERE type=36 AND value1=2 AND value2=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Player is Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=0 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Group are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=1 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('All Players in Instance are Dead OR NOT Within ',value2,'y of Source') WHERE type=36 AND value1=2 AND value2 !=0 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature Source is Dead') WHERE type=36 AND value1=3 AND comments IS NULL; -- CONDITION_DEAD_OR_AWAY
UPDATE conditions SET comments=CONCAT('Creature of Entry ',value1,' Found Alive Within ',value2,'y of Source') WHERE type=37 AND comments IS NULL; -- CONDITION_CREATURE_IN_RANGE
UPDATE conditions SET comments=CONCAT('OutdoorPvP AreaID: ',value1,' IsConditionFulfilled Value: ',value2) WHERE type=38 AND comments IS NULL; -- CONDITION_PVP_SCRIPT
UPDATE conditions SET comments=CONCAT('Equal or More than ',value2,' of Entry: ',value1) WHERE type=39 AND comments IS NULL; -- CONDITION_SPAWN_COUNT
UPDATE conditions SET comments=CONCAT('WorldStateID: ',value1,' Event: ',value2) WHERE type=40 AND comments IS NULL; -- CONDITION_WORLD_SCRIPT
-- CONDITION_UNUSED_7
UPDATE conditions SET comments=CONCAT('WorldStateID: ',value1,' WorldStateConditionSign: ',value2,' otherOperand: ',value3) WHERE type=42 AND comments IS NULL; -- CONDITION_WORLDSTATE

-- NOT, OR, AND (Run a few times to completely fill out the most complex conditions)
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1 -- CONDITION_NOT
   SET t.comments = CONCAT('NOT (',t1.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.comments IS NULL
   AND t.type = -3;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_OR
   SET t.comments = CONCAT('(',t1.comments,' OR ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -2;
   
UPDATE conditions t, (SELECT DISTINCT condition_entry, comments FROM conditions) t1, (SELECT DISTINCT condition_entry, comments FROM conditions) t2 -- CONDITION_AND
   SET t.comments = CONCAT('(',t1.comments,' AND ',t2.comments,')')
 WHERE t.value1 = t1.condition_entry AND t.value2= t2.condition_entry AND t.comments IS NULL
   AND t.type = -1;

