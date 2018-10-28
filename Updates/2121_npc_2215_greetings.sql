-- High Executor Darthalia now says: "missing US text".
-- She is supposed to say: "In order to serve the Dark Lady and Varimathras we need to advance the front on the Human Infestation.".
-- Sources:
-- https://www.youtube.com/watch?v=D9O903Wnmb4&list=PL49Ga_-r7iKkxrbckm9CkUhWzxqrOnw-n&index=14
-- https://git.fastblit.com/rowanxt/va-core/commit/fc64504a4b54fbf510104b69af5b136f85109c54
UPDATE creature_template SET GossipMenuId=0, NpcFlags=2 WHERE Entry=2215;
DELETE FROM questgiver_greeting WHERE Entry=2215;
INSERT INTO	questgiver_greeting (Entry, Type, Text, EmoteId, EmoteDelay) VALUES
(2215, 0, 'In order to serve the Dark Lady and Varimathras we need to advance the front on the Human Infestation.', 0, 0); 
