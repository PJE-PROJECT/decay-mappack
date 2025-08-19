
#Loading screen
tag @a[tag=test_subject,tag=loading_logo_end] add loading_logo
tag @a[tag=test_subject,tag=loading_logo_load] add loading_logo
stopsound @a[limit=1]
clear @a[limit=1]
#tp @s ~ ~ ~
title @s title [{"text":" ","type":"text"}]
gamemode spectator @s
spectate @e[type=minecraft:armor_stand,tag=loading_logo_stand,limit=1] @s

execute unless entity @e[type=minecraft:item_display,tag=loading_logo_p,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["loading_logo_p","markerignore"],item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":77,"minecraft:unbreakable":{}},count:1},item_display:"head",brightness:{sky:15,block:15}}
execute unless entity @e[type=minecraft:armor_stand,tag=loading_logo_stand,limit=1] run summon minecraft:armor_stand ~ ~1.6 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Tags:["loading_logo_stand","markerignore"]}

#effect give @s minecraft:night_vision 1 255 true
execute if entity @s[scores={time=1}] run function portal:ambient/disable

execute if entity @s[scores={time=1}] run item replace entity @e[tag=elevator_main,tag=arrival,distance=..10] container.0 with air



execute if entity @s[scores={time=5}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=78]
execute if entity @s[scores={time=10}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=79]
execute if entity @s[scores={time=15}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=80]
execute if entity @s[scores={time=20}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=81]
execute if entity @s[scores={time=25}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=82]
execute if entity @s[scores={time=30}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=83]
execute if entity @s[scores={time=35}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=84]
execute if entity @s[scores={time=40}] run item replace entity @e[type=minecraft:item_display,tag=loading_logo_p] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=85]

scoreboard players add @s time 1
execute if entity @s[scores={time=50..}] run kill @e[type=minecraft:item_display,tag=loading_logo_p]
execute if entity @s[scores={time=50..}] run kill @e[type=minecraft:armor_stand,tag=loading_logo_stand]

execute if entity @s[tag=loading_logo_end,scores={time=50..}] run function portal:maps/next


execute if entity @s[tag=loading_logo_load,scores={time=50..}] as @e[type=minecraft:marker,tag=mapamb] at @s if score @s map = saved map run function portal:maps/ambient
execute if entity @s[tag=loading_logo_load,scores={time=50..}] run tp @s @e[type=minecraft:armor_stand,tag=saved_player_pos,limit=1]

execute if entity @a[tag=test_subject,tag=loading_logo_load,scores={time=50..}] run function saves:preload

execute if entity @s[scores={time=50..}] run tag @s remove loading_logo_load
execute if entity @s[scores={time=50..}] run tag @s remove loading_logo_end
execute if entity @s[scores={time=50..}] run tag @s remove loading_logo

gamemode adventure @a[tag=test_subject,tag=!loading_logo,tag=!goo_killed,scores={time=50..}]
scoreboard players set @a[tag=test_subject,tag=!loading_logo,tag=!goo_killed,scores={time=50..}] time 0
