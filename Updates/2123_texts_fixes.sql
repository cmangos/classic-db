
-- ... -> . . .
-- 'Oh that's just my tutor, Uncle Stalvan. He's a nice old man.' -> "Oh that's just my tutor, Uncle Stalvan. He's a nice old man."
-- https://wow.gamepedia.com/Muddy_Journal_Pages
UPDATE page_text SET text=". . .anger and fury the likes of which I never knew existed! How dare she. As I was instructing Giles in the meaning of numbers, Tilloa appears before me with a suitor, holding hands in public nonetheless! What an uncouth young man. Rather than introduce me properly, Tilloa simply said, \"Oh that's just my tutor, Uncle Stalvan. He's a nice old man.\" Old! At that word my cheeks flushed with heat. I am but a few years older and yet she betrays. . ." WHERE entry=23;

-- ... -> . . .
-- https://wow.gamepedia.com/A_Bloodstained_Journal_Page
UPDATE page_text SET text=". . .downward spiral of despair. First she mocks me and now she is engaged. The ungracious charlatan was pretending to love when truly she desired to hurt me all along. A black void lurks within me now and it grows with each waking moment. The blood I shall spill pales in comparison to the tears I have shed. . ." WHERE entry=24;

-- You Too Good! -> You Too Good.
-- http://web.archive.org/web/20050121010006/http://wow.allakhazam.com:80/db/quest.html?wquest=6608
UPDATE quest_template SET Title='You Too Good.' WHERE    entry=6608;

-- Found no evidence online of there ever being a typo in the title.
-- So corrected: Zandalrian -> Zandalarian.
-- http://web.archive.org/web/20071112112304/http://wow.allakhazam.com:80/db/quest.html?wquest=8141
-- http://web.archive.org/web/20060521045922/http://wow.allakhazam.com:80/db/quest.html?wquest=8142
-- http://web.archive.org/web/20060521045936/http://wow.allakhazam.com:80/db/quest.html?wquest=8143
-- http://web.archive.org/web/20051117130641/http://wow.allakhazam.com:80/db/quest.html?wquest=8144
UPDATE quest_template SET Title='Zandalarian Shadow Talisman' WHERE entry IN (8141, 8142, 8143);
UPDATE quest_template SET Title='Zandalarian Shadow Mastery Talisman' WHERE entry=8144;

-- Removed ? at the end.
-- https://wow.gamepedia.com/Green_Hills_of_Stranglethorn_-_Chapter_I
-- https://www.wowhead.com/item=2728/green-hills-of-stranglethorn-page-4
UPDATE page_text SET text="In the years that followed, after Stormwind betrayed the Stonemasons' Guild, Sir Erlgadin grew bitter about the role of the nobles within the Kingdom.  He no longer wished to uphold the position that his father's bloodline had earned for him in the House of Nobles.  But I digress.  The purpose of this story is not to act as a political treatise or a biography.  This is the account of my experiences hunting big game in the green hills of Stranglethorn?." WHERE entry=156;
