-- Fixed quest 2954 (The Stone Watcher): the quest giver will now display its gossip menu
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags` | 1 WHERE `Entry` = 7918;
