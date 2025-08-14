execute as @e[type=minecraft:item_display,tag=portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,limit=1] laser_ID unless entity @e[tag=cube,tag=!laser_cube,distance=..1] unless entity @e[distance=..1,tag=laser_stop,tag=!hovering] store result entity @s transformation.scale[2] float 0.956 run scoreboard players get @e[tag=laser_raycaster,sort=random,limit=1] Portal_Laser_Distance
execute as @e[type=minecraft:item_display,tag=portal_laser] if score @s laser_ID = @e[tag=laser_raycaster,limit=1] laser_ID if entity @e[tag=cube,distance=..1] store result entity @s transformation.scale[2] float 1 run scoreboard players get @e[tag=laser_raycaster,sort=random,limit=1] Portal_Laser_Distance




execute if entity @s[tag=portal_raycaster] as @e[type=minecraft:marker,tag=laser_end] if score @s laser_ID = @e[tag=laser_raycaster,sort=random,limit=1] laser_ID run tp @s ^ ^ ^
execute if entity @s[tag=portal_raycaster] unless entity @e[type=minecraft:marker,distance=..0.1,tag=laser_end,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["laser_end","laser_end_new"]}
execute if entity @s[tag=portal_raycaster] run scoreboard players operation @e[type=minecraft:marker,distance=..0.1,tag=laser_end_new,limit=1] laser_ID = @s laser_ID


tag @s remove laser_raycaster

#execute as @e[tag=laser] if score @s laser_ID = @e[tag=laser_cube,tag=hovering,sort=random,limit=1] laser_ID run kill @s


execute unless entity @e[distance=..0.8,tag=sbpg.portal,tag=sbpg.active] unless entity @e[distance=..1,tag=laser_cube] unless entity @e[distance=..1,tag=laser_catcher] run function laser:laser/effects
