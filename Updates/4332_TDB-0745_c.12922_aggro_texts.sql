-- https://wowpedia.fandom.com/wiki/Imp_(warlock_minion)?oldid=2251011
-- As with the other warlock pets, the Imp talks. When asked to attack, it will sometimes complain about it in Common or Orcish. At other times, it says something indecipherable in Demonic.
-- https://www.wowhead.com/classic/npc=12922/imp-minion - two texts might be demonic lang.
-- -- https://github.com/cmangos/issues/wiki/broadcast_text#LanguageID
DELETE FROM `dbscript_random_templates` WHERE `id` = 1;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1, 0, 746, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- Alright I'm going! Stop yelling!
(1, 0, 747, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- This better be the last one!
(1, 0, 749, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- You better back me up on this one!
(1, 0, 750, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- Why did I have to get stuck with this repulsive, feeble excuse for a warlock? - Demonic
(1, 0, 751, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- Make yourself useful and help me out here!
(1, 0, 752, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- Just release me already! I've had enough!
(1, 0, 753, 0, 'Imp Minion 12922 - Random Aggro Texts'), -- What? You mean you can't kill this one by yourself?
(1, 0, 754, 0, 'Imp Minion 12922 - Random Aggro Texts'); -- If you touch me again it'll be the last thing you touch! - Demonic

