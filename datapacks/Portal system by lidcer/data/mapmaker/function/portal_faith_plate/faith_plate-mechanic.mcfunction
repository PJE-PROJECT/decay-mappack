
execute if entity @e[type=!minecraft:item_display,distance=..1,tag=!faith_plate,tag=!hovering,limit=1] run function mapmaker:portal_faith_plate/catapult_force
execute if entity @e[tag=SitPlate,limit=1] run function mapmaker:portal_faith_plate/catapult_force

scoreboard players add @e[type=minecraft:item_display,tag=plate_model,tag=plate_anim] animationtime 1
scoreboard players add @e[type=minecraft:item_display,tag=plate_model,tag=cooldown] time 1

execute if block ~ ~-2 ~ minecraft:air run kill @e[distance=..0.5,tag=faith_plate]


execute as @e[type=minecraft:item_display,tag=plate_model,tag=plate_anim,scores={animationtime=90..}] run data modify entity @s item.components."minecraft:potion_contents".custom_color set value 838808032
tag @e[type=minecraft:item_display,tag=plate_model,tag=plate_anim,scores={animationtime=90..}] remove plate_anim

tag @e[type=minecraft:item_display,tag=plate_model,scores={time=10..}] remove cooldown

scoreboard players set @e[type=minecraft:item_display,tag=plate_model,tag=!cooldown,scores={time=10..}] time 0
scoreboard players set @e[type=minecraft:item_display,tag=plate_model,tag=!plate_anim,scores={animationtime=190..}] animationtime 0