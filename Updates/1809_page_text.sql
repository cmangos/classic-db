-- Added missing text to pages 1471 & 1490
-- Thanks @M2us for pointing and researching. This closes #118
UPDATE page_text SET text="Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $Ghim:her; to find proof of the black dragonflight's involvement with the Blackrock orcs. Should such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient millitary force to aid Lakeshire.$B$BRegards,$B$B$B$BHighlord Bolvar Fordragon" WHERE entry IN (1471, 1490);
