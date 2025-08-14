execute if entity @s[tag=auto,tag=!useless] positioned ^ ^2 ^1.5 if entity @a[distance=..1.5,tag=test_subject] at @s run fill ^0.1 ^-1 ^ ^-0.4 ^-1 ^ minecraft:redstone_block
execute if entity @s[tag=auto,tag=!useless] positioned ^2 ^1 ^-2 if entity @a[distance=..1.9,tag=test_subject] at @s run fill ^0.1 ^-1 ^ ^-0.4 ^-1 ^ minecraft:granite
execute if entity @s[tag=auto,tag=!useless] positioned ^-1 ^1 ^-2 if entity @a[distance=..1.9,tag=test_subject] at @s run fill ^0.1 ^-1 ^ ^-0.4 ^-1 ^ minecraft:granite

execute positioned ~ ~3.5 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=active,limit=1] unless entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] run fill ^0.1 ^-3 ^ ^-0.4 ^-3 ^ minecraft:redstone_block
execute positioned ~ ~3.5 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] run fill ^0.1 ^-3 ^ ^-0.4 ^-3 ^ minecraft:granite

execute if entity @s[tag=!useless] if block ^ ^1 ^0.1 minecraft:air run kill @e[type=minecraft:armor_stand,distance=..1.7,tag=portaldoorside_set_2,tag=doorL,sort=nearest,limit=1]
execute if entity @s[tag=!useless] if block ^ ^1 ^0.1 minecraft:air run kill @e[type=minecraft:armor_stand,distance=..1.7,tag=portaldoorside_set_2,tag=doorR,sort=nearest,limit=1]
execute if entity @s[tag=!useless] if block ^ ^1 ^0.1 minecraft:air run kill @s


execute unless score @s animationtime_doorR = @s animationtime_doorR run scoreboard players set @s animationtime_doorR 1478
execute unless score @s animationtime_doorL = @s animationtime_doorL run scoreboard players set @s animationtime_doorL 1470

execute if entity @s[tag=!useless,tag=!active,tag=!open,scores={animationtime_doorR=1478}] positioned ~0.25 ~ ~ if block ^0.1 ^ ^ minecraft:redstone_block run tag @s add active
execute if entity @s[tag=active,tag=open,tag=!useless,scores={animationtime_doorR=1465}] positioned ~0.25 ~ ~ unless block ^0.1 ^ ^ minecraft:redstone_block run tag @s remove active


execute if entity @s[tag=active,scores={animationtime_doorR=1466..1478}] run function mapmaker:portal_door/portaldoor-mechanic
execute if entity @s[tag=open,tag=!active,scores={animationtime_doorR=1465..1478}] run function mapmaker:portal_door/portaldoor-mechanic