-- Remove Cooking Skill Requirement for Quest Beer Basted Boar Ribs 384
-- https://www.wowhead.com/quest=384/beer-basted-boar-ribs
-- https://wowwiki.fandom.com/wiki/Quest:Beer_Basted_Boar_Ribs?oldid=1488854
UPDATE quest_template set RequiredSkill=0, RequiredSkillValue=0 WHERE entry=384;
