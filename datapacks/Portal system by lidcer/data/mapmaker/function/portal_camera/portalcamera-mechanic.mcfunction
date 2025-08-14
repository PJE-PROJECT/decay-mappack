
execute if entity @s[tag=lookingatyou,tag=!pco] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=portalcam_base] if block ^ ^0.5 ^-1 minecraft:air run kill @e[distance=..0.3,tag=cam]

execute if entity @s[tag=cam,tag=N] positioned ~ ~ ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=south] run tag @e[distance=..0.2,tag=cam] add unmount
execute if entity @s[tag=cam,tag=S] positioned ~ ~ ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=north] run tag @e[distance=..0.2,tag=cam] add unmount
execute if entity @s[tag=cam,tag=W] positioned ~ ~ ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=east] run tag @e[distance=..0.2,tag=cam] add unmount
execute if entity @s[tag=cam,tag=E] positioned ~ ~ ~ if entity @e[distance=..0.9,tag=sbpg.portal,tag=sbpg.active,tag=west] run tag @e[distance=..0.2,tag=cam] add unmount






execute if entity @s[tag=cam,tag=unmount] run particle minecraft:crit ~ ~ ~ 0 0 0 0.4 7

execute if entity @s[tag=portalcam_base_1,tag=unmount,tag=S] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[0.0f,0.0f],Motion:[0.0d,0.0d,0.25d]}
execute if entity @s[tag=portalcam_base_1,tag=unmount,tag=N] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[180.0f,0.0f],Motion:[0.0d,0.0d,-0.25d]}
execute if entity @s[tag=portalcam_base_1,tag=unmount,tag=W] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[90.0f,0.0f],Motion:[-0.25d,0.0d,0.0d]}
execute if entity @s[tag=portalcam_base_1,tag=unmount,tag=E] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"],Rotation:[-90.0f,0.0f],Motion:[0.25d,0.0d,0.0d]}

execute if entity @s[tag=portalcam_base_2,tag=unmount,tag=S] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1506,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[0.0f,0.0f],Motion:[0.0d,0.0d,0.25d]}
execute if entity @s[tag=portalcam_base_2,tag=unmount,tag=N] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1506,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[180.0f,0.0f],Motion:[0.0d,0.0d,-0.25d]}
execute if entity @s[tag=portalcam_base_2,tag=unmount,tag=W] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1506,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[90.0f,0.0f],Motion:[-0.25d,0.0d,0.0d]}
execute if entity @s[tag=portalcam_base_2,tag=unmount,tag=E] run summon minecraft:armor_stand ~0 ~ ~0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1506,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"],Rotation:[-90.0f,0.0f],Motion:[0.25d,0.0d,0.0d]}

item replace entity @s[tag=unmount] container.0 with air
tag @s[tag=unmount] add destroyed
tag @s[tag=unmount] remove unmount