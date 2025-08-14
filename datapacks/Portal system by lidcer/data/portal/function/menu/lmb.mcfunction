#Pause menu
execute if entity @s[tag=menu.pause,tag=!menu.main] if score blok slot matches 0 run function portal:menu/lmb/pause

#Main menu
execute if entity @s[tag=menu.main,tag=!menu.load] if score blok slot matches 0 run function portal:menu/lmb/menu
#Load
execute if entity @s[tag=menu.load,tag=!menu.main] if score blok slot matches 0 run function portal:menu/lmb/load
#Quit
execute if entity @s[tag=menu.quit,tag=!menu.main] if score blok slot matches 0 run function portal:menu/lmb/quit
#New
execute if entity @s[tag=menu.new,tag=!menu.main] if score blok slot matches 0 run function portal:menu/lmb/new
#Options
execute if entity @s[tag=menu.options,tag=!menu.main] if score blok slot matches 0 run function portal:menu/lmb/options


scoreboard players set blok slot 0
advancement revoke @s only portal:left_click


