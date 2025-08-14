


execute if entity @s[tag=!useless,scores={animationtime_doorR=1465..1470}] positioned ^-0.1 ^ ^ run fill ^ ^3 ^ ^1 ^2 ^ minecraft:air replace minecraft:barrier
execute if entity @s[tag=!useless] positioned ^-0.1 ^ ^ unless score @s animationtime_doorR matches 1465..1470 run fill ^ ^3 ^ ^1 ^2 ^ minecraft:barrier replace minecraft:air


execute positioned ^ ^3.5 ^ if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] positioned ^-0.1 ^-3.5 ^ run fill ^ ^3 ^ ^1 ^2 ^ minecraft:barrier replace minecraft:air


execute if entity @s[tag=!useless,tag=!active,tag=!open,scores={animationtime_doorR=1478}] positioned ~0.25 ~ ~ if block ^0.1 ^ ^ minecraft:redstone_block run tag @s add active
execute if entity @s[tag=active,tag=open,tag=!useless,scores={animationtime_doorR=1465}] positioned ~0.25 ~ ~ unless block ^0.1 ^ ^ minecraft:redstone_block run tag @s remove active

execute if entity @s[tag=active,tag=!open,scores={animationtime_doorR=1477}] run playsound minecraft:door_round_blue_unlock_01 ambient @a ~ ~ ~ 0.4 1 0
execute if entity @s[tag=active,tag=!open,scores={animationtime_doorR=1472}] run playsound minecraft:door_round_blue_open_01 ambient @a ~ ~ ~ 0.4 1 0

execute if entity @s[tag=open,tag=!active,scores={animationtime_doorR=1477}] run playsound minecraft:door_round_blue_lock_01 ambient @a ~ ~ ~ 0.4 1 0
execute if entity @s[tag=open,tag=!active,scores={animationtime_doorR=1466}] run playsound minecraft:door_round_blue_close_01 ambient @a ~ ~ ~ 0.4 1 0


tag @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=open,tag=!active,scores={animationtime_doorR=1478}] remove open
execute if entity @s[tag=active,scores={animationtime_doorR=1466..1478}] run scoreboard players remove @s animationtime_doorR 1
execute if entity @s[tag=active,scores={animationtime_doorL=1458..1470}] run scoreboard players remove @s animationtime_doorL 1

#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorL=1458..1464},distance=..1,limit=1] run data modify entity @s ArmorItems[3].tag.Damage set value 1463

#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,tag=!open,scores={animationtime_doorL=1463},distance=..1,limit=1] run tp @s ^ ^ ^-0.75

execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s run function mapmaker:portal_door/doorl
execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorR] at @s run function mapmaker:portal_door/doorr

#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorR] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorR=1471..1478},distance=..0.5,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorR=1471..1478},distance=..0.5,limit=1] animationtime_doorR
#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorR] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,scores={animationtime_doorR=1471..1478},distance=..0.5,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,scores={animationtime_doorR=1471..1478},distance=..0.5,limit=1] animationtime_doorR
#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorR] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,tag=!open,scores={animationtime_doorR=1471},distance=..1,limit=1] run tp @s ^ ^ ^-0.75
tag @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorR=1471}] add open
#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorR] at @s positioned ^ ^ ^0.65 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,tag=open,scores={animationtime_doorR=1465},distance=..1,limit=1] run tp @s ^ ^ ^
execute if entity @s[tag=open,tag=!active,scores={animationtime_doorR=1465..1477}] run scoreboard players add @s animationtime_doorR 1

#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,scores={animationtime_doorL=1463..1470},distance=..0.5,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,scores={animationtime_doorL=1463..1470},distance=..1,limit=1] animationtime_doorL
#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s positioned ^ ^ ^0.1 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorL=1463..1470},distance=..0.5,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=active,scores={animationtime_doorL=1463..1470},distance=..1,limit=1] animationtime_doorL

#execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=doorL] at @s positioned ^ ^ ^0.65 if entity @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!active,tag=open,scores={animationtime_doorL=1457},distance=..1,limit=1] run tp @s ^ ^ ^
execute if entity @s[tag=open,tag=!active,scores={animationtime_doorL=1457..1469}] run scoreboard players add @s animationtime_doorL 1

execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=doorR] store result score @s animationtime run data get entity @s ArmorItems[3].components."minecraft:damage"
scoreboard players remove @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=!rusted,tag=doorR] animationtime 1433
scoreboard players remove @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=rusted,tag=doorR] animationtime 1300
execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=doorR] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players get @s animationtime

execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=doorL] store result score @s animationtime run data get entity @s ArmorItems[3].components."minecraft:damage"
scoreboard players remove @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=!rusted,tag=doorL] animationtime 1433
scoreboard players remove @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=rusted,tag=doorL] animationtime 1300
execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2,tag=overgrown,tag=doorL] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players get @s animationtime