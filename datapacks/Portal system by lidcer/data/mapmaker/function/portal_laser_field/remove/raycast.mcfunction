
item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=180,minecraft:unbreakable={}]
tp @e[type=minecraft:armor_stand,distance=..1,tag=laser_field_base,tag=!active,limit=1] ^ ^ ^0.3
tag @s remove active
scoreboard players set @s Distance 0
execute positioned ~ ~2 ~ positioned ^ ^ ^ rotated ~ ~180 run function mapmaker:portal_laser_field/remove/raycast_loop