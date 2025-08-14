execute if score @s slot matches 2 run tag @s add menu.main
execute if score @s slot matches 5 run tag @s add menu.main
execute if score @s slot matches 8 run tag @s add menu.main

execute if score @s slot matches 1 run scoreboard players set crash timer 1
execute if score @s slot matches 4 run scoreboard players set crash timer 1
execute if score @s slot matches 7 run scoreboard players set crash timer 1


execute if entity @s[tag=menu.main,tag=menu.quit] run playsound minecraft:menu_back master @a ~ ~ ~ 1 1 1
tag @s[tag=menu.main,tag=menu.quit] remove menu.quit
scoreboard players set blok slot 1