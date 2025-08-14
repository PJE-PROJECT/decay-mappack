
tag @s add laser_raycaster
execute as @e[type=minecraft:item_display,tag=laser] if score @s laser_ID = @e[tag=laser_raycaster,sort=random,limit=1] laser_ID store result entity @s transformation.scale[2] float 0.965 run scoreboard players get @e[tag=laser_raycaster,sort=random,limit=1] Distance

execute as @e[type=minecraft:item_display,tag=laser,tag=!portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,tag=laser_emitter,sort=random,limit=1] laser_ID run data merge entity @s {transformation:{translation:[0.0f,0.33f,0.0f]}}


scoreboard players set @s Distance 0
execute as @e[type=minecraft:item_display,tag=laser,tag=!portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,sort=random,limit=1] laser_ID run tp @s ^ ^ ^ ~ ~
execute unless entity @e[type=minecraft:item_display,distance=..0.1,tag=laser,tag=!portal_laser,sort=random,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_boots",components:{"minecraft:damage":9,"minecraft:unbreakable":{}},count:1},Tags:["laser","laser_new"],brightness:{sky:15,block:15}}


scoreboard players operation @e[type=minecraft:item_display,distance=..0.1,tag=laser_new,limit=1] laser_ID = @s laser_ID
tag @e[type=minecraft:item_display,distance=..0.1,tag=laser_new,limit=1] remove laser_new

execute positioned ^ ^ ^ run function laser:laser/raycast_loop
tag @s remove laser_raycaster
