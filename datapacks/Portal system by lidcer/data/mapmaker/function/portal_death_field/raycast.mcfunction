item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=181,minecraft:unbreakable={}]
tp @e[type=minecraft:armor_stand,distance=..1,tag=death_field_base,tag=!active,limit=1] ^ ^ ^0.01
tag @s add active
scoreboard players set @s Distance 0
scoreboard players set @s meg_distance 0
execute positioned ~ ~2 ~ positioned ^ ^ ^ rotated ~ ~180 run function mapmaker:portal_death_field/raycast_loop
playsound minecraft:fizzler_start_01 ambient @a ~ ~ ~ 0.1 1 0.0