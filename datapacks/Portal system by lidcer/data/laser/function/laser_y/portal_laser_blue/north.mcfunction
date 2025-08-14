execute store result score laser.portal.rotation.ray buffer run data get entity @s Rotation[0]
scoreboard players set laser.portal.rotation.portal buffer 180

execute if score laser.portal.rotation.ray buffer matches 90..180 run scoreboard players operation laser.portal.rotation.portal buffer -= laser.portal.rotation.ray buffer
execute if score laser.portal.rotation.ray buffer matches -180..-90 run scoreboard players operation laser.portal.rotation.portal buffer += laser.portal.rotation.ray buffer


scoreboard players set laser.portal.ceiling buffer 90
scoreboard players operation laser.portal.ceiling buffer -= laser.portal.rotation.portal buffer
execute if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=floor,limit=1] run scoreboard players operation laser.portal.ceiling buffer *= #-1 const
execute store result storage laser:ray x int 1 run scoreboard players get laser.portal.ceiling buffer
execute if score laser.portal.rotation.ray buffer matches 90..180 run function laser:laser_y/portal_laser_blue/ray/north/left with storage laser:ray
execute if score laser.portal.rotation.ray buffer matches -180..-90 run function laser:laser_y/portal_laser_blue/ray/north/right with storage laser:ray