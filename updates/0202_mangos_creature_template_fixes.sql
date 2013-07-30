-- Changed rank of creature 910 (Defias Enchanter) to elite as it was in classic. This reverts revision 0158
-- Source: http://www.wowpedia.org/Defias_Enchanter
UPDATE `creature_template` SET `rank` = 1 WHERE `entry`= 910;
-- Fixed gossip_menu_id for creature 3332 (Lumack) wrongly assigned to two different values in revision 0177
UPDATE `creature_template` SET `gossip_menu_id` = 4741 WHERE `entry`= 3332;
