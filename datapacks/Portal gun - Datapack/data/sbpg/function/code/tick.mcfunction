# Peek timer, used in player_tick
#TODO: Set to 3 for faster

scoreboard players add sbpg:peek timer 1
execute if score sbpg:peek timer matches 10.. run scoreboard players set sbpg:peek timer 0
execute if score sbpg:peek timer matches 0 run worldborder set 6000000
execute if score sbpg:peek timer matches 0 run worldborder set 5900000 1

# Per-player tick
execute as @a[tag=!b_pic,tag=!o_pic] at @s run function sbpg:code/player_tick

# Slower stuff
scoreboard players add sbpg:tick_5 timer 1
execute if score sbpg:tick_5 timer matches 5 run function sbpg:code/tick_5
execute if score sbpg:tick_5 timer matches 1 run function sbpg:code/tick_4
execute if score sbpg:tick_5 timer matches 4 run function sbpg:code/tick_4
# TICK 20


# LOD SISTEM
scoreboard players add sbpg:tick_20 timer 1

execute at @a[limit=1] if score lods config matches 1 run function portal:lods/enabled
execute at @a[limit=1] if score lods config matches 0 run function portal:lods/disabled

execute if score sbpg:tick_20 timer matches 20 run function sbpg:code/tick_20

# Callbacks
execute if score sbpg:rotate callback matches 1.. as @e[tag=sbpg.rotate_callback] at @s run function sbpg:portals/rotate_callback

# Per-portal tick
execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal] at @s positioned ~ ~1.1 ~ positioned ^ ^-1 ^ run function sbpg:portals/portal_tick
# execute at @s positioned ~ ~1.6 ~ positioned ^ ^0.7 ^ run 

# Air updates
scoreboard players add sbpg:air_update timer 1
execute if score sbpg:air_update timer matches 2 as @e[tag=sbpg.hyperventilate] run data merge entity @s {Air:0s}
execute if score sbpg:air_update timer matches 2 as @e[tag=sbpg.hyperventilate] run data merge entity @s {Air:1s}
execute if score sbpg:air_update timer matches 2 run scoreboard players set sbpg:air_update timer 0

# Portal Motion Power

function sbpg:portals/check_active


scoreboard players set Motion config 0
execute if entity @e[type=minecraft:armor_stand,tag=sbpg.portal,tag=45_portal] run scoreboard players set Motion config 1
execute if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=floor] unless entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling] run scoreboard players set Motion config 1
execute if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] unless entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=ceiling] run scoreboard players set Motion config 1


execute if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=floor] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] run scoreboard players set Motion config 2
execute if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_first,tag=floor] run scoreboard players set Motion config 2



execute if entity @a[tag=gel_stand_blue,limit=1] run scoreboard players set Motion config 1
execute if entity @a[tag=gel_stand_orange,limit=1] run scoreboard players set Motion config 1