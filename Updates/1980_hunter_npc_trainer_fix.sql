--Thorgas Grimson, the Hunter trainer in Dun Morogh, only offers Parry (level 8, 2 silver) to new hunters.
--Sources--
--Abilities offered - https://classicdb.ch/?npc=895#teaches-ability
--Hunter spells - https://classicdb.ch/?spells=7.3

INSERT INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('895', '13164', '100', '0', '0', '4', '0');
INSERT INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('895', '2003', '100', '0', '0', '4', '0');
INSERT INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('895', '5298', '100', '0', '0', '6', '0');
INSERT INTO `mangos`.`npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('895', '3048', '100', '0', '0', '6', '0');
UPDATE `mangos`.`npc_trainer` SET `spell`='1547', `spellcost`='10', `reqlevel`='1' WHERE `entry`='895' and`spell`='3128';
