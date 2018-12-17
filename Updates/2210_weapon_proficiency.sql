-- Fix level requirement for most weapon skills
/* Fix weapon skill training required level for:
    15984 One-Handed Axes
    15986 Two-Handed Axes
    15985 One-Handed Maces
    15987 Two-Handed Maces
    15996 Guns
    15992 Fist Weapons
    15995 Crossbows
    15988 Daggers
    15997 Thrown
    15994 Bows
    15989 Staves
    1847  One-Handed Swords
    15983 Two-Handed Swords 
   Per http://web.archive.org/web/20060618113726/http://www.thottbot.com:80/?cp=Warrior
*/
UPDATE npc_trainer SET reqlevel=1 WHERE spell IN (15984, 15986, 15985, 15987, 15996, 15992, 15995, 15988, 15997, 15994, 15989, 1847, 15983);
