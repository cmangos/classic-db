-- Make NPC 2215 (High Executor Darthalia) roam
-- Source: https://www.youtube.com/watch?v=D9O903Wnmb4&list=PL49Ga_-r7iKkxrbckm9CkUhWzxqrOnw-n&index=14
UPDATE creature SET MovementType=1, spawndist=3 WHERE id=2215;
