item replace entity @s[tag=!rusted] armor.head with minecraft:diamond_hoe[minecraft:damage=1515,minecraft:unbreakable={}]
item replace entity @s[tag=rusted] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=22,minecraft:unbreakable={}]
tp @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_base,tag=!active,limit=1] ^ ^ ^0.01
tag @s add active
scoreboard players set @s Distance 0
scoreboard players set @s meg_distance 0
execute positioned ~ ~2 ~ positioned ^ ^ ^ rotated ~ ~180 run function mapmaker:portal_material_emacipation_grill/raycast_loop
playsound minecraft:fizzler_start_01 ambient @a ~ ~ ~ 0.1 1 0.0