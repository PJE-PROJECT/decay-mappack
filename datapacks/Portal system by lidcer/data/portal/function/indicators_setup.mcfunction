
# INDICATORS #
##############

#Give tag
tag @e[type=minecraft:glow_item_frame,tag=!indicator,nbt={Item:{id:"minecraft:light_blue_dye"}}] add indicator
tag @e[type=minecraft:glow_item_frame,tag=!indicator,nbt={Item:{id:"minecraft:blue_dye"}}] add indicator
tag @e[type=minecraft:glow_item_frame,tag=!indicator,nbt={Item:{id:"minecraft:purple_dye"}}] add indicator
tag @e[type=minecraft:glow_item_frame,tag=!indicator,nbt={Item:{id:"minecraft:green_dye"}}] add indicator
tag @e[type=minecraft:glow_item_frame,tag=!indicator,nbt={Item:{id:"minecraft:cyan_dye"}}] add indicator

tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=!hoverignore] add hoverignore
tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=!sbpg.dont_store_pos] add sbpg.dont_store_pos

#Invisible and Unvulnerable
data modify entity @e[type=minecraft:glow_item_frame,tag=indicator,sort=random,limit=1,nbt={Invisible:0b}] Invisible set value 1b
data modify entity @e[type=minecraft:glow_item_frame,tag=indicator,sort=random,limit=1,nbt={Invisible:0b}] Invulnerable set value 1b
#data modify entity @e[type=minecraft:glow_item_frame,tag=indicator,sort=random,limit=1,nbt={Invisible:0b}] Fixed set value 1

#Couple to lines
execute at @e[type=minecraft:glow_item_frame,tag=1] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!1] add 1
execute at @e[type=minecraft:glow_item_frame,tag=2] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!2] add 2
execute at @e[type=minecraft:glow_item_frame,tag=3] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!3] add 3
execute at @e[type=minecraft:glow_item_frame,tag=4] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!4] add 4
execute at @e[type=minecraft:glow_item_frame,tag=5] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!5] add 5
execute at @e[type=minecraft:glow_item_frame,tag=6] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!6] add 6
execute at @e[type=minecraft:glow_item_frame,tag=7] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!7] add 7
execute at @e[type=minecraft:glow_item_frame,tag=8] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!8] add 8
execute at @e[type=minecraft:glow_item_frame,tag=9] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!9] add 9
execute at @e[type=minecraft:glow_item_frame,tag=10] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!10] add 10
execute at @e[type=minecraft:glow_item_frame,tag=11] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!11] add 11
execute at @e[type=minecraft:glow_item_frame,tag=12] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!12] add 12
execute at @e[type=minecraft:glow_item_frame,tag=13] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!13] add 13
execute at @e[type=minecraft:glow_item_frame,tag=14] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!14] add 14
execute at @e[type=minecraft:glow_item_frame,tag=15] run tag @e[type=minecraft:glow_item_frame,distance=..1,tag=indicator,tag=!15] add 15