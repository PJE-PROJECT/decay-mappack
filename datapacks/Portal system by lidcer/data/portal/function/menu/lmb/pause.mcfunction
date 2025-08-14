execute if score @s slot matches 0 run function portal:unpause with storage 1:1

execute if score @s slot matches 1 run function portal:unpause with storage 1:1
execute if score @s slot matches 1 at @s run function saves:save_quick

execute if score @s slot matches 2 run function portal:unpause with storage 1:1
execute if score @s slot matches 2 at @s run tag @s add loading_logo_load

execute if score @s slot matches 3 at @s run tag @s remove menu.pause
execute if score @s slot matches 3 run playsound minecraft:menu_accept master @a ~ ~ ~ 1 1 1
execute if score @s slot matches 3 at @s run tag @s add menu.options


execute if score @s slot matches 4 run function portal:menu/open
execute if score @s slot matches 4 run function portal:unpause with storage 1:1
execute if score @s slot matches 4 run tp 0 50 0


execute if score @s slot matches 5 run function portal:unpause with storage 1:1

execute if entity @s[tag=menu.main,tag=menu.pause] run playsound minecraft:menu_back master @a ~ ~ ~ 1 1 1
tag @s[tag=menu.main,tag=menu.pause] remove menu.pause
scoreboard players set blok slot 1