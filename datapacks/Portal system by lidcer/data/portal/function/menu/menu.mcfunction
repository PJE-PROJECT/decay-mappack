effect give @s mining_fatigue infinite 255 true
effect give @s minecraft:haste infinite 127 true
effect give @s minecraft:invisibility infinite 1 true

execute if entity @s[tag=!menu.pause] if score pause timer matches 0 run scoreboard players add menumusic timer 1
execute if entity @s[tag=!menu.pause] if score pause timer matches 0 if score menumusic timer matches 1 run playsound minecraft:portal2_background01 ambient @a 0 50 0 0.6 1 0.6
execute if entity @s[tag=!menu.pause] if score pause timer matches 0 if score menumusic timer matches 2100.. run scoreboard players set menumusic timer 0

execute unless entity @e[type=minecraft:interaction,tag=menu.click,limit=1] run summon minecraft:interaction ~ ~ ~ {Tags:["menu.click"],width:4,height:4}
tp @e[type=minecraft:interaction,tag=menu.click,limit=1] @s

execute store result score @s slot run data get entity @s SelectedItemSlot
execute unless score @s slot = @s slot_prev run playsound minecraft:menu_focus master @a ~ ~ ~ 1 1 1
execute store result score @s slot_prev run data get entity @s SelectedItemSlot

execute if entity @s[tag=!menu.pause] if score pause timer matches 0 run item replace entity @s weapon.offhand with minecraft:iron_horse_armor[minecraft:custom_model_data=1,minecraft:custom_name='""']


execute if score pause timer matches 1..12 run scoreboard players add pause timer 1
execute store result storage 1:1 pause int 1 run scoreboard players get pause timer
execute if entity @s[tag=menu.pause] run function portal:menu/pause with storage 1:1

execute if entity @s[tag=menu.main] run function portal:menu/main
execute if entity @s[tag=menu.load] run function portal:menu/load
execute if entity @s[tag=menu.new] run function portal:menu/new
execute if entity @s[tag=menu.options] run function portal:menu/options
execute if entity @s[tag=menu.quit] run function portal:menu/quit

kill @e[type=minecraft:item]