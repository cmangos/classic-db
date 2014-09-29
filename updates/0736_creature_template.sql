-- Applied workaround to toggle ON/OFF the new creature stat system for each NPC in the database
UPDATE `creature_template` SET `ArmorMultiplier` = -1 WHERE 1;
