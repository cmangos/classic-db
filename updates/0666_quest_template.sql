-- Fixed textes for quest 3115 (Tainted Memorandum) which were refering to actual player name
-- Thanks Zingzah for pointing. This closes #516 
UPDATE `quest_template` SET
`OfferRewardText` = 'But none of that matters. What matters is that you\'ve seen your own Holy Light! You know where power truly comes from. You realize that having our own allies is much more... prudent. Special allies. Allies that, no matter the task, will obey till their last breath.$B$BAnd that\'s where I come in, $N. I can train you in the beginnings of those special powers. Seek me out often and I will do what I can to teach you more spells.',
`RequestItemsText` = 'Wonderful! You got my memorandum obviously.$B$BIgnore the fools around you, $N. The Holy Light?! The sword and shield?! These aren\'t paths for ones as open minded as us. Look at what "normal" magic did to our home. Coupled with those damned tinkerers, our race almost became extinct. And now we have to rely on the dwarves-- they\'d rather spend time allying with humans than help us rebuild our own home. We\'re like second-class citizens. Have you seen the way they look at us?'
WHERE `entry` = 3115;
