-- Fixed RequestItems for quest 8332 (Dukes of the Council) to use generic player name instead of actual player name
UPDATE quest_template SET RequestItemsText='Do you have the shard and the crests, $N? I will need them to make the twilight cultist\'s medallion of station.' WHERE entry=8332;
