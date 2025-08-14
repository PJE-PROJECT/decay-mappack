execute unless score @s slot matches 4 run playsound minecraft:menu_accept master @a ~ ~ ~ 1 1 1
#Main menu
execute if score @s slot matches 5 run tag @s add menu.load
execute if score @s slot matches 0 run tag @s add menu.load
tag @s[tag=menu.main,tag=menu.load] remove menu.main

execute if score @s slot matches 1 run tag @s add menu.new
execute if score @s slot matches 6 run tag @s add menu.new
tag @s[tag=menu.main,tag=menu.new] remove menu.main

execute if score @s slot matches 2 run tag @s add menu.options
execute if score @s slot matches 7 run tag @s add menu.options
tag @s[tag=menu.main,tag=menu.options] remove menu.main

execute if score @s slot matches 3 run tag @s add menu.quit
execute if score @s slot matches 8 run tag @s add menu.quit
tag @s[tag=menu.main,tag=menu.quit] remove menu.main
scoreboard players set blok slot 1