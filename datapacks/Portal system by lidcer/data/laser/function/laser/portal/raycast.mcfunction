
execute as @e[type=minecraft:item_display,tag=portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,limit=1] laser_ID store result entity @s transformation.scale[2] float 0.965 run scoreboard players get @e[tag=laser_raycaster,sort=random,limit=1] Portal_Laser_Distance
scoreboard players set @s Portal_Laser_Distance 0
tag @s add laser_raycaster
execute as @e[type=minecraft:item_display,tag=portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,limit=1] laser_ID run tp @s ^ ^ ^ ~ ~
execute unless entity @e[type=minecraft:item_display,distance=..0.1,tag=portal_laser,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_boots",components:{"minecraft:damage":9,"minecraft:unbreakable":{}},count:1},Tags:["laser","portal_laser","laser_new"],brightness:{sky:15,block:15}}
scoreboard players operation @e[type=minecraft:item_display,distance=..0.1,tag=laser_new,limit=1] laser_ID = @s laser_ID
tag @e[type=minecraft:item_display,distance=..0.1,tag=laser_new,limit=1] remove laser_new

execute positioned ^ ^ ^0.1 run function laser:laser/portal/raycast_loop