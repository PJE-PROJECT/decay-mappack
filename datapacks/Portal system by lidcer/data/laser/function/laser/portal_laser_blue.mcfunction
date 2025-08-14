
tag @s add portal_raycaster
#Синий-Оранжевый
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^-0.1 rotated ~180 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^0.1 rotated ~ ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^0.1 ^0.2 ^ rotated ~-90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^-0.1 ^0.2 ^ rotated ~90 ~ run function laser:laser/portal/raycast

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^0.15 ^0.2 ^ rotated ~ ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^-0.15 ^0.2 ^ rotated ~180 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^0.15 rotated ~90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^-0.15 rotated ~-90 ~ run function laser:laser/portal/raycast

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^-0.15 ^0.2 ^ rotated ~90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^0.15 ^0.2 ^ rotated ~-90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^-0.15 rotated ~180 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^0.15 rotated ~ ~ run function laser:laser/portal/raycast

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^0.1 ^0.2 ^ rotated ~-90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^-0.1 ^0.2 ^ rotated ~90 ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^0.1 rotated ~ ~ run function laser:laser/portal/raycast
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned as @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] positioned ^ ^0.2 ^-0.1 rotated ~180 ~ run function laser:laser/portal/raycast

# FLOOR AND CEILING MANUPULATIONS
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling] run function laser:laser_y/portal_laser_blue/north
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] run function laser:laser_y/portal_laser_blue/north

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling] run function laser:laser_y/portal_laser_blue/south
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] run function laser:laser_y/portal_laser_blue/south

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling] run function laser:laser_y/portal_laser_blue/east
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] run function laser:laser_y/portal_laser_blue/east

execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=ceiling] run function laser:laser_y/portal_laser_blue/west
execute if entity @e[distance=..1.2,tag=sbpg.portal_first,tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] if entity @e[type=minecraft:armor_stand,tag=sbpg.portal_second,tag=floor] run function laser:laser_y/portal_laser_blue/west
