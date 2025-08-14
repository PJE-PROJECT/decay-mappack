scoreboard players add @s Distance 1

execute if entity @e[type=minecraft:armor_stand,distance=..1,tag=laser_cube,tag=!hovering,tag=!laser_raycaster,nbt={OnGround:1b}] run tag @s remove portal_raycaster
execute unless block ~ ~ ~ #laser:laser_air if entity @s[scores={Distance=..100}] positioned ^ ^ ^-0.5 run function laser:laser/raycast_end
execute if entity @e[distance=..1,tag=laser_stop,tag=!hovering] run function laser:laser/raycast_end
execute if entity @e[distance=..1,tag=laser_cube,tag=!laser_raycaster,tag=!hovering,tag=!fizzled] run function laser:laser/raycast_end
execute if entity @s[scores={Distance=100}] positioned ^ ^ ^-0.5 run function laser:laser/raycast_end
execute positioned ^ ^ ^ if entity @e[distance=..0.5,tag=sbpg.portal_first,tag=sbpg.active] run function laser:laser/portal_laser_blue
execute positioned ^ ^ ^ if entity @e[distance=..0.5,tag=sbpg.portal_second,tag=sbpg.active] run function laser:laser/portal_laser_orange

execute if block ~ ~ ~ #laser:laser_air if entity @s[scores={Distance=..100}] unless entity @e[distance=..1,tag=laser_stop,tag=!hovering] unless entity @e[distance=..1,tag=laser_cube,tag=!laser_raycaster,tag=!hovering,tag=!fizzled] positioned ^ ^1 ^ unless entity @e[distance=..0.8,tag=sbpg.portal] positioned ^ ^-1 ^0.5 run function laser:laser/raycast_loop



playsound minecraft:laser ambient @a[distance=..2] ~ ~1 ~ 0.0008 1 0
execute positioned ~ ~-0.5 ~ run tag @a[distance=..0.6,tag=test_subject,tag=!burnpain,tag=!death_anim,tag=!b_pic,tag=!o_pic,nbt={OnGround:1b}] add burnpain


tag @e[type=minecraft:item_display,distance=..0.5,tag=laser_receptacle_glass,tag=!active,limit=1] add active