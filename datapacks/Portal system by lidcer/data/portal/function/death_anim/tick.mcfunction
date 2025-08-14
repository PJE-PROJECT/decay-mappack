scoreboard players add @s time 1
title @s[tag=!killed] times 90 10 0
title @s[tag=!killed] title [{"text":"\ue003","type":"text"}]


kill @e[tag=sbpg.click_detector,limit=1]

$execute if entity @s[tag=!killed] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,Tags:["killed_box","markerignore"],Rotation:[$(rot_x)f,$(rot_y)f]}
tag @s[tag=!killed] add killed
gamemode spectator @s
spectate @e[type=minecraft:armor_stand,tag=killed_box,sort=nearest,limit=1] @s

data modify entity @e[type=minecraft:armor_stand,tag=killed_box,limit=1] Motion[1] set value -0.5d

data modify entity @e[type=minecraft:armor_stand,tag=killed_box,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute at @s rotated as @s run tp @s ~ ~ ~ ~ ~

execute as @e[type=minecraft:armor_stand,tag=killed_box,sort=nearest,limit=1] at @s if block ~ ~ ~ #portal:death_anim_air unless block ~ ~-0.1 ~ #portal:death_anim_air run data modify entity @s NoGravity set value 1
execute as @e[type=minecraft:armor_stand,tag=killed_box,sort=nearest,limit=1] at @s if block ~ ~ ~ #portal:death_anim_air unless block ~ ~-0.1 ~ #portal:death_anim_air run tp @s ~ ~-0.8 ~


execute if score @s time matches 101.. run tag @s add loading_logo_load
execute if score @s time matches 101.. run gamemode adventure @s
execute if score @s time matches 101.. run kill @e[type=minecraft:armor_stand,tag=killed_box,sort=nearest,limit=1]
execute if score @s time matches 101.. run tag @s remove killed
execute if score @s time matches 101.. run tag @s remove death_anim