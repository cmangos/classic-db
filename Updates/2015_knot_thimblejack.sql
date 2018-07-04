-- Extended gossips of NPC 14338 (Knot Thimblejack) in Dire Maul to handle properly patterns and quests related to the Gordok Ogre Suit event

-- -------------------------------------------
-- Knot Thimblejack
-- -------------------------------------------

-- Made repeatable quest 5519 (Gordok Ogre Suit) only available after completing initial quest 5518
UPDATE quest_template SET PrevQuestId=5518 WHERE entry=5519;

-- Added the gossip menu options for Knot Thimblejack related to Gordok Ogre Suit patterns
SET @COND := 919;

-- Conditions for skill proficiency and quest completion
DELETE FROM conditions WHERE condition_entry BETWEEN @COND AND @COND + 8;
INSERT INTO conditions VALUES
(@COND + 0, 7, 197, 275, 'Has Skill ID 197, Minimum Skill Value 275'),  -- Tailoring
(@COND + 1, 7, 165, 275, 'Has Skill ID 165, Minimum Skill Value 275'),  -- Leatherworking
(@COND + 2, 8, 5518, 0, 'Quest ID 5518 Rewarded'),
(@COND + 3, 17, 22813, 1, 'NOT Player Has Learned Spell: 22813'),   -- Create Gordok Ogre Suit (Tailoring)
(@COND + 4, 17, 22815, 1, 'NOT Player Has Learned Spell: 22815'),   -- Create Gordok Ogre Suit (Leatherworking)
(@COND + 5, -1, @COND + 2, @COND + 3, '(Quest ID 5518 Rewarded AND NOT Player Has Learned Spell: 22813)'),
(@COND + 6, -1, @COND + 2, @COND + 4, '(Quest ID 5518 Rewarded AND NOT Player Has Learned Spell: 22815)'),
(@COND + 7, -1, @COND, @COND + 5, '(Has Skill ID 197, Minimum Skill Value 275 AND (Quest ID 5518 Rewarded AND NOT Player Has Learned Spell: 22813))'),
(@COND + 8, -1, @COND + 1, @COND + 6, '(Has Skill ID 165, Minimum Skill Value 275 AND (Quest ID 5518 Rewarded AND NOT Player Has Learned Spell: 22815))');

-- Added missing gossip menu option for each pattern (tailoring & leatherworking)
DELETE FROM gossip_menu_option WHERE menu_id=5667 AND id IN (2, 3);
INSERT INTO gossip_menu_option VALUES
(5667, 2, 0, 'Please teach me how to make a Gordok Ogre Suit!', 1, 1, -1, 0, 566701, 0, 0, '', @COND + 7),  -- Tailoring
(5667, 3, 0, 'Please teach me how to make a Gordok Ogre Suit!', 1, 1, -1, 0, 566702, 0, 0, '', @COND + 8);  -- Leatherworking

-- Added missing script for creating Ogre Suit patterns
DELETE FROM dbscripts_on_gossip WHERE id IN (566701, 566702);
INSERT INTO dbscripts_on_gossip VALUES
(566701, 0, 15, 22814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Gordok Ogre Suit (Tailoring)'),
(566702, 0, 15, 22816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Gordok Ogre Suit (Leatherworking)');

