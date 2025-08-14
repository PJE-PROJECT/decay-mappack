item replace entity @s[tag=!rusted] armor.head with minecraft:diamond_hoe[minecraft:damage=1516,minecraft:unbreakable={}]
item replace entity @s[tag=rusted] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=21,minecraft:unbreakable={}]
tp @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_base,tag=!active,limit=1] ^ ^ ^0.3
tag @s remove active
scoreboard players set @s Distance 0
execute positioned ~ ~2 ~ positioned ^ ^ ^ rotated ~ ~180 run function mapmaker:portal_material_emacipation_grill/remove/raycast_loop
playsound minecraft:fizzler_shutdown_01 ambient @a ~ ~ ~ 0.1 1 0