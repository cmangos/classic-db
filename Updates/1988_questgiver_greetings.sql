-- Fix wrong questgiver greeting text for NPC 239
-- Now different from NPC 238
UPDATE questgiver_greeting SET text='Adventure from lands far and near $bMeeting with folks both odd and queer $bBut if of me a question you ask $bYou must first complete a simple task!' WHERE entry=239;
