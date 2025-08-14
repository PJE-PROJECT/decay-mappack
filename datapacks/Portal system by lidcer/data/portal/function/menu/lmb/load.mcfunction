
execute if score @s slot matches 0 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load
execute if score @s slot matches 1 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load
execute if score @s slot matches 3 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load
execute if score @s slot matches 4 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load
execute if score @s slot matches 6 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load
execute if score @s slot matches 7 if entity @e[type=minecraft:marker,tag=loadcoords,limit=1] run tag @s add loading_logo_load

tag @s[tag=loading_logo_load] remove menu
tag @s[tag=loading_logo_load] remove menu.load
tag @s[tag=loading_logo_load] add test_subject

clear @s[tag=loading_logo_load]

execute if score @s slot matches 2 run tag @s add menu.main
execute if score @s slot matches 5 run tag @s add menu.main
execute if score @s slot matches 8 run tag @s add menu.main
execute if entity @s[tag=menu.main,tag=menu.load] run playsound minecraft:menu_back master @a ~ ~ ~ 1 1 1
tag @s[tag=menu.main,tag=menu.load] remove menu.load
scoreboard players set blok slot 1