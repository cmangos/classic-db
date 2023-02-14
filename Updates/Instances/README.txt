=============================
CMaNGOS Classic-DB INSTANCE FILES
=============================

------------------------------
How do I use an instance file?
------------------------------

This set of files is included by default at the very end of a full Classic-DB build via the install script.
Instance files are preserved between releases and prioritized higher than regular DB updates.

Whenever you are working with any creature/object guids which are inside of dungeons or raids, you'll need to be modifying the corresponding instance file.
If changes are made outside an instance file which should have been contained within, they risk not being applied properly upon fresh DB build.

Please make use of the provided variables (@CGUID+XXX and @OGUID+XXX) when adding new creature and gameobject guids instead of hardcoding numbers in the files.
Try to follow the format and conventions of other authors before you so the content stays consistent and easy to understand.

Don't be afraid to add comments and spacing to make things more clear/readable!

Keep in mind that all of these files are still very much a work in progress - there is much to be improved on and added.
If you're looking for something to do, check the comments in the top header of each instance file. This space is reserved for any TODO notes and open related issues for the instance.

--------------------------------------------------
Which data should be maintained in instance files?
--------------------------------------------------

As a general rule of thumb, if the table/record references the guid of a specific creature or gameobject inside of a dungeon/raid, then it belongs.

Tables which usually contain the relevant data:
- creature
- creature_movement
- creature_addon
- creature_linking
- dbscript*
- gameobject
- gameobject_addon
- pool_creature/gameobject
- gameobject/creature_battleground

Try to keep modifications to data from other tables (such as loot, gossip, creature/gameobject_template, etc.) within regular incremental DB updates as normal.

Do NOT use the files at this time for anything spawned in the following maps:
0 - Eastern Kingdoms
1 - Kalimdor
