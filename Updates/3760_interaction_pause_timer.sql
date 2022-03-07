-- Remove gossip flag changes from Private Thorsen
DELETE FROM `dbscripts_on_creature_movement` WHERE `command`=29 AND `id` IN (73801, 73807);

-- Remove gossip flag changes from Short John Mithril
DELETE FROM `dbscripts_on_creature_movement` WHERE `command`=29 AND `id` IN (1450801, 1450803);
UPDATE `creature_movement_template` SET `Comment`='Short John Mithril - Yell 1' WHERE `Entry`=14508 AND `Point`=1;
UPDATE `creature_movement_template` SET `Comment`='Short John Mithril - Run Off, MovementType 0' WHERE `Entry`=14508 AND `Point`=35;

UPDATE `creature_template` SET `InteractionPauseTimer`=0 WHERE `Entry` IN (738, 14508); -- Private Thorsen, Short John Mithril
UPDATE `creature_template` SET `InteractionPauseTimer`=5000 WHERE `Entry`=9077; -- Warlord Goretooth
UPDATE `creature_template` SET `InteractionPauseTimer`=30000 WHERE `Entry`=11317; -- Jinar'Zillen

