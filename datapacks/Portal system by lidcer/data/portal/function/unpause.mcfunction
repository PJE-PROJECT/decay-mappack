playsound minecraft:menu_back master @a ~ ~ ~ 1 1 1
ride @s dismount
$tp @s ~ ~ ~ $(x) $(y)
tp @e[type=minecraft:turtle,tag=pause.sit,limit=1] ~ -666 ~
kill @e[type=minecraft:turtle,tag=pause.sit,limit=1]
tag @e[type=minecraft:item_display,tag=arm64,tag=error,tag=arm_anim] remove arm_anim
tag @e[type=minecraft:item_display,tag=arm64,tag=headbut,tag=arm_anim] remove arm_anim

tag @s[tag=!menu.main] remove menu
tag @s remove menu.pause
clear @s
execute if score gunhold config matches 1 run tag @s add gun_hold
item replace entity @s[tag=gun_hold,tag=itempicker_activated] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=2,minecraft:custom_name='""',minecraft:dyed_color={rgb:838808001},minecraft:custom_data={portalgunmodel:1b}]
kill @e[type=minecraft:item_display,tag=blur]
kill @e[type=minecraft:interaction,tag=menu.click]
scoreboard players set pause timer 0

execute as @e[tag=prop] run data modify entity @s NoGravity set value 0b
execute as @e[tag=prop] run data modify entity @s Marker set value 0b
execute as @e[tag=prop] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s pmotion.x
execute as @e[tag=prop] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s pmotion.y
execute as @e[tag=prop] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s pmotion.z


execute as @e[tag=gel_blob] run data modify entity @s NoGravity set value 0b
execute as @e[tag=gel_blob] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s pmotion.x
execute as @e[tag=gel_blob] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s pmotion.y
execute as @e[tag=gel_blob] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s pmotion.z