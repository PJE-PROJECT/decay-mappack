# Summon all entities
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["sbpg.portal","sbpg.portal_edge","sbpg.portal_new","45_portal","north"],Pose:{Head:[-45.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",components:{"minecraft:damage":6,"minecraft:dyed_color":{rgb:24831},"minecraft:unbreakable":{}},count:1}],NoGravity:1b,Invulnerable:1b,Fire:32767s,Marker:1b}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["sbpg.portal","sbpg.portal_main","al","sbpg.portal_new","45_portal","north"],Rotation:[180.0f,-45.0f]}
summon minecraft:armor_stand ~-0.11 ~0.005 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":3},count:1}],Tags:["pic","markerignore","pic_new"],Pose:{Head:[45.0f,0.0f,0.0f]}}


# Initialise main AEC (get matrices, apply ID, etc.)
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=sbpg.portal_new,limit=1] run function sbpg:portals/initialise_aec/down

execute as @e[type=minecraft:armor_stand,distance=..1,tag=sbpg.portal_new] store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players get colour workspace