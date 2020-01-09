-- MySQL dump 10.13  Distrib 5.5.27, for Linux (x86_64)
--
-- Host: localhost    Database: mangos
-- ------------------------------------------------------
-- Server version   5.5.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- World optimization
--
-- The purpose of this SQL file is to contain queries which help keeping content
-- in the mangos-classic world database in a clean state.


-- Re-order content tables
--
-- Content tables are ordered by specific keys to allow for easier tracking of
-- changes in the version control system.
--

ALTER TABLE `areatrigger_involvedrelation` ORDER BY `id` ASC;
ALTER TABLE `areatrigger_tavern`  ORDER BY `id` ASC;
ALTER TABLE `areatrigger_teleport`  ORDER BY `id` ASC;
ALTER TABLE `battleground_events`  ORDER BY `map` ASC;
ALTER TABLE `battleground_template`  ORDER BY `id` ASC;
ALTER TABLE `battlemaster_entry`  ORDER BY `entry` ASC;
ALTER TABLE `conditions` ORDER BY `condition_entry` ASC;
ALTER TABLE `command`  ORDER BY `name` ASC;
ALTER TABLE `creature`  ORDER BY `guid` ASC;
ALTER TABLE `creature_addon`  ORDER BY `guid` ASC;
ALTER TABLE `creature_ai_scripts`  ORDER BY `id` ASC, `event_type`;
ALTER TABLE `creature_ai_summons`  ORDER BY `id` ASC;
ALTER TABLE `creature_ai_texts`  ORDER BY `entry` ASC;
ALTER TABLE `creature_battleground`  ORDER BY `guid` ASC;
ALTER TABLE `creature_equip_template`  ORDER BY `entry` ASC;
ALTER TABLE `creature_equip_template_raw`  ORDER BY `entry` ASC;
ALTER TABLE `creature_involvedrelation`  ORDER BY `quest` ASC;
ALTER TABLE `creature_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `creature_model_info`  ORDER BY `modelid` ASC;
ALTER TABLE `creature_linking_template`  ORDER BY `entry` ASC;
ALTER TABLE `creature_movement`  ORDER BY `id` ASC;
ALTER TABLE `dbscripts_on_creature_movement`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `creature_movement_template`  ORDER BY `entry` ASC;
ALTER TABLE `creature_onkill_reputation`  ORDER BY `creature_id` ASC;
ALTER TABLE `creature_questrelation`  ORDER BY `quest` ASC;
ALTER TABLE `creature_template`  ORDER BY `entry` ASC;
ALTER TABLE `creature_template_addon`  ORDER BY `entry` ASC;
ALTER TABLE `creature_template_spells`  ORDER BY `entry` ASC;
ALTER TABLE `dbscript_string`  ORDER BY `entry` ASC;
ALTER TABLE `db_version`  ORDER BY `version` ASC;
ALTER TABLE `disenchant_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `dbscripts_on_event`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `exploration_basexp`  ORDER BY `level` ASC;
ALTER TABLE `fishing_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `gameobject`  ORDER BY `guid` ASC;
ALTER TABLE `gameobject_battleground`  ORDER BY `guid` ASC;
ALTER TABLE `gameobject_involvedrelation`  ORDER BY `quest` ASC;
ALTER TABLE `gameobject_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `gameobject_questrelation`  ORDER BY `quest` ASC;
ALTER TABLE `dbscripts_on_go_use`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `gameobject_template`  ORDER BY `entry` ASC;
ALTER TABLE `game_event`  ORDER BY `entry` ASC;
ALTER TABLE `game_event_creature`  ORDER BY `guid` ASC;
ALTER TABLE `game_event_creature_data`  ORDER BY `guid` ASC;
ALTER TABLE `game_event_gameobject`  ORDER BY `guid` ASC;
ALTER TABLE `game_event_mail`  ORDER BY `event` ASC;
ALTER TABLE `game_event_quest`  ORDER BY `quest` ASC;
ALTER TABLE `game_graveyard_zone`  ORDER BY `id` ASC;
ALTER TABLE `game_tele`  ORDER BY `id` ASC;
ALTER TABLE `game_weather`  ORDER BY `zone` ASC;
ALTER TABLE `gossip_menu`  ORDER BY `entry` ASC;
ALTER TABLE `gossip_menu_option`  ORDER BY `menu_id` ASC;
ALTER TABLE `dbscripts_on_gossip`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `instance_template`  ORDER BY `map` ASC;
ALTER TABLE `item_enchantment_template`  ORDER BY `entry` ASC;
ALTER TABLE `item_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `item_required_target`  ORDER BY `entry` ASC;
ALTER TABLE `item_template`  ORDER BY `entry` ASC;
ALTER TABLE `mail_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `mangos_string`  ORDER BY `entry` ASC;
ALTER TABLE `npc_gossip`  ORDER BY `npc_guid` ASC;
ALTER TABLE `npc_text`  ORDER BY `ID` ASC;
ALTER TABLE `npc_trainer`  ORDER BY `entry` ASC;
ALTER TABLE `npc_trainer_template`  ORDER BY `entry` ASC;
ALTER TABLE `npc_vendor`  ORDER BY `entry` ASC, `item` ASC;
ALTER TABLE `npc_vendor_template`  ORDER BY `entry` ASC;
ALTER TABLE `page_text`  ORDER BY `entry` ASC;
ALTER TABLE `petcreateinfo_spell`  ORDER BY `entry` ASC;
ALTER TABLE `pet_levelstats`  ORDER BY `creature_entry` ASC;
ALTER TABLE `pet_name_generation`  ORDER BY `id` ASC;
ALTER TABLE `pickpocketing_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `playercreateinfo`  ORDER BY `race` ASC;
ALTER TABLE `playercreateinfo_action`  ORDER BY `race` ASC;
ALTER TABLE `playercreateinfo_item`  ORDER BY `race` ASC;
ALTER TABLE `playercreateinfo_spell`  ORDER BY `race` ASC;
ALTER TABLE `player_classlevelstats`  ORDER BY `class` ASC;
ALTER TABLE `player_levelstats`  ORDER BY `race` ASC;
ALTER TABLE `player_xp_for_level`  ORDER BY `lvl` ASC;
ALTER TABLE `points_of_interest`  ORDER BY `entry` ASC;
ALTER TABLE `pool_creature`  ORDER BY `guid` ASC;
ALTER TABLE `pool_creature_template`  ORDER BY `id` ASC;
ALTER TABLE `pool_gameobject`  ORDER BY `guid` ASC;
ALTER TABLE `pool_gameobject_template`  ORDER BY `id` ASC;
ALTER TABLE `pool_pool`  ORDER BY `pool_id` ASC;
ALTER TABLE `pool_template`  ORDER BY `entry` ASC;
ALTER TABLE `dbscripts_on_quest_end`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `dbscripts_on_quest_start`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `quest_template`  ORDER BY `entry` ASC;
ALTER TABLE `reference_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `reputation_reward_rate`  ORDER BY `faction` ASC;
ALTER TABLE `reputation_spillover_template`  ORDER BY `faction` ASC;
ALTER TABLE `reserved_name`  ORDER BY `name` ASC;
ALTER TABLE `scripted_areatrigger`  ORDER BY `entry` ASC;
ALTER TABLE `scripted_event_id`  ORDER BY `id` ASC;
ALTER TABLE `skill_fishing_base_level`  ORDER BY `entry` ASC;
ALTER TABLE `skinning_loot_template`  ORDER BY `entry` ASC;
ALTER TABLE `spell_affect`  ORDER BY `entry` ASC;
ALTER TABLE `spell_area`  ORDER BY `area` ASC;
ALTER TABLE `spell_bonus_data`  ORDER BY `entry` ASC;
ALTER TABLE `spell_chain`  ORDER BY `spell_id` ASC;
ALTER TABLE `spell_elixir`  ORDER BY `entry` ASC;
ALTER TABLE `spell_facing`  ORDER BY `entry` ASC;
ALTER TABLE `spell_learn_spell`  ORDER BY `entry` ASC;
ALTER TABLE `spell_pet_auras`  ORDER BY `spell` ASC;
ALTER TABLE `spell_proc_event`  ORDER BY `entry` ASC;
ALTER TABLE `spell_proc_item_enchant`  ORDER BY `entry` ASC;
ALTER TABLE `dbscripts_on_spell`  ORDER BY `id` ASC, `delay` ASC;
ALTER TABLE `spell_script_target`  ORDER BY `entry` ASC;
ALTER TABLE `spell_target_position`  ORDER BY `id` ASC;
ALTER TABLE `spell_threat`  ORDER BY `entry` ASC;
ALTER TABLE `transports`  ORDER BY `entry` ASC;
ALTER TABLE `world_template`  ORDER BY `map` ASC;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
