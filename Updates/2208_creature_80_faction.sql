/* Set Kobold Laborer to nonaggressive
  Per https://www.youtube.com/watch?v=OkBdqVZmROY
*/
UPDATE creature_template SET factionalliance=25, factionhorde=25 WHERE entry=80
