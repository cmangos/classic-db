UPDATE quest_template SET DetailsEmote3=5, DetailsEmote4=0, CompleteEmote=0, OfferRewardEmote1=0, OfferRewardEmote2=0 WHERE entry=721;
UPDATE quest_template SET RequestItemsText='The Shadowforge clan... <cough> is dangerous. Be careful. <cough> You must find the amulet.', DetailsEmote1=0, DetailsEmote2=0, DetailsEmote3=0, IncompleteEmote=0, CompleteEmote=0, OfferRewardEmote1=0, OfferRewardEmote2=0 WHERE entry=722;
UPDATE quest_template SET DetailsEmote1=0, DetailsEmote2=0, DetailsEmoteDelay1=0, StartScript=723 WHERE entry=723;

DELETE FROM dbscripts_on_quest_start WHERE id=723;
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(723, 500, 0, 0, 0, 0, 0, 0, 0, 0, 957, 0, 0, 0, 0, 0, 0, 0, 0, 'Hammertoe Grez - Talk'),
(723, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 979, 0, 0, 0, 0, 0, 0, 0, 0, 'Hammertoe Grez - Talk'),
(723, 4500, 0, 15, 4984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hammertoe Grez - Cast Hammertoe\'s Sacrifice');

UPDATE broadcast_text SET ChatTypeID=2 WHERE Id=979;
