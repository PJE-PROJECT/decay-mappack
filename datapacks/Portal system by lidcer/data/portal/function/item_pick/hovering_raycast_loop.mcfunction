scoreboard players add @s Distance 1
tp @e[tag=prop,tag=hovering,limit=1] ^ ^ ^-1
data modify entity @e[tag=prop,tag=hovering,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=prop,tag=hovering,tag=radio] at @s run tp @s ^ ^ ^ ~180 ~

execute as @e[tag=prop,tag=hovering] at @s positioned ~ ~-0.5 ~ if entity @a[distance=..0.8] at @a[limit=1] run tp @s ~ ~0.1 ~


execute if block ^ ^ ^0.3 #portal:hoverignore if block ^0.1 ^ ^ #portal:hoverignore if block ^-0.1 ^ ^ #portal:hoverignore if block ^ ^0.1 ^ #portal:hoverignore if block ^ ^-0.1 ^ #portal:hoverignore if entity @s[scores={Distance=..10}] unless entity @e[type=minecraft:shulker,distance=..1,tag=collus] positioned ^ ^ ^0.3 run function portal:item_pick/hovering_raycast_loop