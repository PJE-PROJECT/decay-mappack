scoreboard players set @a[tag=in_funnel] funnel_enter_delay 1
execute unless entity @e[type=minecraft:slime,tag=funnel_r,limit=1] run playsound minecraft:player_enter_tbeam ambient @a ~ ~ ~ 0.8 1 0.8
execute unless entity @e[type=minecraft:slime,tag=funnel_r,limit=1] run summon minecraft:slime ~ ~0.5 ~ {Age:-2147483647,Team:"NoColl",Invulnerable:1b,Tags:["funnel_r","portable"],DeathLootTable:"1",Size:0b}
execute unless entity @e[type=minecraft:slime,tag=funnel_r,limit=1] run ride @s[tag=in_funnel] mount @e[type=minecraft:slime,tag=funnel_r,limit=1]
tp @s @s