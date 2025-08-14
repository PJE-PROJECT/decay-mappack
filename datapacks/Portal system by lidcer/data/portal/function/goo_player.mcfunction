scoreboard players add @s time 1
title @a[tag=test_subject,tag=!goo_killed] times 90 10 0
title @a[tag=test_subject,tag=!goo_killed] title [{"text":"\ue003","type":"text"}]

execute positioned as @a[tag=test_subject,tag=!goo_killed] run playsound minecraft:fs_fm_water_wade_03 ambient @a ~ ~ ~ 1 1 0
execute positioned as @a[tag=test_subject,tag=!goo_killed] run playsound minecraft:underwater ambient @a ~ ~ ~ 1 1 0
execute if entity @a[tag=test_subject,tag=!goo_killed] run kill @e[tag=sbpg.click_detector,limit=1]


execute positioned as @a[tag=test_subject,tag=!goo_killed] if block ~ ~0.5 ~ #portal:water run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,Tags:["goo_killed_box","markerignore"]}
execute positioned as @a[tag=test_subject,tag=!goo_killed] if block ~ ~0.5 ~ #portal:water run tag @a[tag=!goo_killed] add goo_killed
gamemode spectator @s
spectate @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=nearest,limit=1] @s

data modify entity @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=random,limit=1] Motion[1] set value -0.5d

data modify entity @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute at @s rotated as @s run tp @s ~ ~ ~ ~ ~

execute at @s if block ~ ~-0.1 ~ #portal:water run tp @s ~ ~-0.1 ~
execute as @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=nearest,limit=1] at @s if block ~ ~ ~ #portal:water unless block ~ ~-0.1 ~ #portal:water run data modify entity @s NoGravity set value 1
execute as @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=nearest,limit=1] at @s if block ~ ~ ~ #portal:water unless block ~ ~-0.1 ~ #portal:water run tp @s ~ ~-0.8 ~


execute if score @s time matches 101.. run scoreboard players operation gunhold config = gunhold_saved map
execute if score @s time matches 101.. run tag @s add loading_logo_load
execute if score @s time matches 101.. run gamemode adventure @s
execute if score @s time matches 101.. run kill @e[type=minecraft:armor_stand,tag=goo_killed_box,sort=nearest,limit=1]
execute if score @s time matches 101.. run tag @s remove goo_killed