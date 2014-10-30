
SET @JEZELLE := '5702'; -- Jezelle Pruitt

SET @TEXT := '2000005634';
SET @SEARCHRANGE := '25';

-- -------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@JEZELLE);
SET @NAME := (SELECT `name` FROM `creature_template` WHERE `entry`=@JEZELLE);

UPDATE `creature` SET `position_x`='1796.797', `position_y`='134.7121', `position_z`='-63.75994', `orientation`='4.136430', `MovementType`='2' WHERE `id`=@JEZELLE;

UPDATE `creature_template` SET `UnitFlags`='768', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='5727';
UPDATE `creature_template` SET `UnitFlags`='768', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MinLootGold`='0', `MaxLootGold`='0' WHERE `Entry`='5728';

DELETE FROM `creature` WHERE `id` IN ('5726', '5727', '5728', '5729', '5730');
DELETE FROM `creature_movement` WHERE `id`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@JEZELLE;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`=(CONCAT(@GUID, '01'));
DELETE FROM `db_script_string` WHERE `entry` BETWEEN (@TEXT + 00) AND (@TEXT + 11);

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(@JEZELLE, '1', '1796.797', '134.7121', '-63.75994', '245000', (CONCAT(@GUID, '01')), '0', '0', '0', '0', '0', '0', '0', '0', '4.13643', '0', '0');

INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
((CONCAT(@GUID, '01')), '010', '0', '0', '0', '0', '0', '0', (@TEXT + 00), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 1'))),
((CONCAT(@GUID, '01')), '021', '0', '0', '0', '0', '0', '0', (@TEXT + 01), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 2'))),
((CONCAT(@GUID, '01')), '027', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '028', '10', '5730', '45000', '0', '0', '0', '0', '0', '0', '0', '1793.064', '128.0174', '-63.75994', '0.5759587', (CONCAT(@NAME, ' - Summoning Class - Spawn Imp'))),
((CONCAT(@GUID, '01')), '028.5', '15', '7791', '0', '5730', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Imp'))),
((CONCAT(@GUID, '01')), '028.5', '20', '1', '3', '5730', @SEARCHRANGE, '15', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Movement Imp'))),
((CONCAT(@GUID, '01')), '030', '0', '0', '0', '0', '0', '0', (@TEXT + 02), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 3'))),
((CONCAT(@GUID, '01')), '055', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '055', '15', '7791', '0', '5730', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Imp'))),
((CONCAT(@GUID, '01')), '056.5', '18', '0', '0', '5730', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Despawn Imp'))),
((CONCAT(@GUID, '01')), '061', '0', '0', '0', '0', '0', '0', (@TEXT + 03), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 4'))),
((CONCAT(@GUID, '01')), '067', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '068', '10', '5729', '45000', '0', '0', '0', '0', '0', '0', '0', '1792.874', '128.0506', '-63.75994', '5.078908', (CONCAT(@NAME, ' - Summoning Class - Spawn Voidwalker'))),
((CONCAT(@GUID, '01')), '068.5', '15', '7791', '0', '5729', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Voidwalker'))),
((CONCAT(@GUID, '01')), '068.5', '20', '1', '3', '5729', @SEARCHRANGE, '15', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Movement Voidwalker'))),
((CONCAT(@GUID, '01')), '071', '0', '0', '0', '0', '0', '0', (@TEXT + 04), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 5'))),
((CONCAT(@GUID, '01')), '097', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '097', '15', '7791', '0', '5729', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Voidwalker'))),
((CONCAT(@GUID, '01')), '098.5', '18', '0', '0', '5729', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Despawn Voidwalker'))),
((CONCAT(@GUID, '01')), '103', '0', '0', '0', '0', '0', '0', (@TEXT + 05), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 6'))),
((CONCAT(@GUID, '01')), '109', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '110', '10', '5728', '45000', '0', '0', '0', '0', '0', '0', '0', '1792.973', '128.3312', '-63.75994', '0.03490658', (CONCAT(@NAME, ' - Summoning Class - Spawn Succubus'))),
((CONCAT(@GUID, '01')), '110.5', '15', '7791', '0', '5728', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Succubus'))),
((CONCAT(@GUID, '01')), '110.5', '20', '1', '3', '5728', @SEARCHRANGE, '15', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Movement Succubus'))),
((CONCAT(@GUID, '01')), '111', '0', '0', '0', '0', '0', '0', (@TEXT + 06), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 7'))),
((CONCAT(@GUID, '01')), '137', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '137', '15', '7791', '0', '5728', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Succubus'))),
((CONCAT(@GUID, '01')), '138.5', '18', '0', '0', '5728', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Despawn Succubus'))),
((CONCAT(@GUID, '01')), '143', '0', '0', '0', '0', '0', '0', (@TEXT + 07), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 8'))),
((CONCAT(@GUID, '01')), '149', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '150', '10', '5726', '45000', '0', '0', '0', '0', '0', '0', '0', '1792.861', '128.017', '-63.75994', '3.700098', (CONCAT(@NAME, ' - Summoning Class - Spawn Felhunter'))),
((CONCAT(@GUID, '01')), '150.5', '15', '7791', '0', '5726', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Felhunter'))),
((CONCAT(@GUID, '01')), '150.5', '20', '1', '3', '5726', @SEARCHRANGE, '15', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Movement Felhunter'))),
((CONCAT(@GUID, '01')), '152', '0', '0', '0', '0', '0', '0', (@TEXT + 08), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 9'))),
((CONCAT(@GUID, '01')), '177', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '177', '15', '7791', '0', '5726', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Felhunter'))),
((CONCAT(@GUID, '01')), '178.5', '18', '0', '0', '5726', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Despawn Felhunter'))),
((CONCAT(@GUID, '01')), '184', '0', '0', '0', '0', '0', '0', (@TEXT + 09), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 10'))),
((CONCAT(@GUID, '01')), '190', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '191', '10', '5727', '45000', '0', '0', '0', '0', '0', '0', '0', '1793.005', '128.1787', '-63.75993', '3.298672', (CONCAT(@NAME, ' - Summoning Class - Spawn Felsteed'))),
((CONCAT(@GUID, '01')), '191.5', '15', '7791', '0', '5727', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Felsteed'))),
((CONCAT(@GUID, '01')), '191.5', '20', '1', '3', '5727', @SEARCHRANGE, '15', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Movement Felsteed'))),
((CONCAT(@GUID, '01')), '192', '0', '0', '0', '0', '0', '0', (@TEXT + 10), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 11'))),
((CONCAT(@GUID, '01')), '218', '15', '7794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport'))),
((CONCAT(@GUID, '01')), '218', '15', '7791', '0', '5727', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Teleport Felsteed'))),
((CONCAT(@GUID, '01')), '219.5', '18', '0', '0', '5727', @SEARCHRANGE, '7', '0', '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Despawn Felsteed'))),
((CONCAT(@GUID, '01')), '224', '0', '0', '0', '0', '0', '0', (@TEXT + 11), '0', '0', '0', '0', '0', '0', '0', (CONCAT(@NAME, ' - Summoning Class - Say 12')));

INSERT INTO `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
((@TEXT + 00), 'If you\'re here, then it means you are prepared to begin this study of summoning demonic cohorts to do your bidding. We will start with the lowliest creatures you will be able to call and continue from there. Let us begin.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 1'))),
((@TEXT + 01), 'The easiest creature for you to summon is the imp. You should already be able to bring forth this minion but for completeness\' sake I will start with him.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 2'))),
((@TEXT + 02), 'This foul little beast is the imp. It is small and weak, making it almost useless as a meatshield, and its damage output is mediocre at best. This creature is best used for support of a larger group.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 3'))),
((@TEXT + 03), 'Now that you have had a chance to study the imp, let us move on the next minion you will be able to summon, the voidwalker.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 4'))),
((@TEXT + 04), 'This demonic entity is know as the Voidwalker. Its strenght and endurance are significant, making it ideal for defense. Send it to attack your enemy, then use a shield while you use your spells and abilities to drain away your opponent\'s life.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 5'))),
((@TEXT + 05), 'If you\'ve never seen one, it is a sight to behold. A very impressive creature both on and off the field of battle. Next, let us take a look at what I am sure all you male students have been waiting for. The succubus.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 5'))),
((@TEXT + 06), 'All right now. Aside from the obvious distractions a minion like this will provide against your masculine foes, she is also capable of dealing out impressive amounts of damage. However, her fragile endurance makes her almost useless as a shield.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 6'))),
((@TEXT + 07), 'Study hard and you might one day be able to summon one on your own, but for now it\'s time to move to the felhunter.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 7'))),
((@TEXT + 08), 'What you see before you is a felhunter. This creature\'s natural talents include spell lock and other abilities which make it unequalled when facing a magically attuned opponent.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 8'))),
((@TEXT + 09), 'When facing a spellcaster of any kind, this feral beast will be your best friend. Now, let us take a look at something a bit different. This next creature will aid your travels and make your future journeys much easier. Let\'s take a look at a felsteed.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 9'))),
((@TEXT + 10), 'I doubt you have had much occasion to see such a creature. These demonic equines will make your travels much faster by acting as your mount as long as you control them. However, they are difficult to control, so be sure you are ready before attempting it.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 10'))),
((@TEXT + 11), 'There you have it. Our lesson on summoning has come to an end. A new class will begin shortly, so if you wish to brush up, feel free to stay around.', '0', '0', '33', '1', (CONCAT(@NAME, ' - Say 11')));
