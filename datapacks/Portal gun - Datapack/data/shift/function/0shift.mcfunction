execute at @a run teleport @e[type=minecraft:shulker,tag=Shiftsh,limit=1] ~ ~1 ~
scoreboard players set @a shift 0
schedule function shift:stopshift 4