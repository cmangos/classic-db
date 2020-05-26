-- Remove stun immunity from Battleguard Sartura: stun immunity is granted by Whirlwind spell when she is using it
-- Source: https://wow.gamepedia.com/Battleguard_Sartura
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~2048 WHERE Entry=15516;
