#tag @s[tag=!stand_gel] add stand_gel
effect give @s jump_boost 1 3 true
scoreboard players set #test main_score 0
execute if score #vy main_score matches ..-1 if entity @s[tag=!motion_cooldown] unless entity @e[type=minecraft:item_frame,distance=..0.8,tag=orange_gel,tag=D,limit=1] run function physical_things:player/end_falling
tag @s remove motion_cooldown
execute if score #test main_score matches 1 run tag @s add motion_cooldown