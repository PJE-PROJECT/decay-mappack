
tag @e[tag=death_field,tag=new,limit=1] remove new

execute positioned ^ ^2 ^ as @e[type=minecraft:armor_stand,distance=..1,tag=death_field_door,limit=1] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=181,minecraft:unbreakable={}]
execute positioned ^ ^2 ^ as @e[type=minecraft:armor_stand,distance=..1,tag=death_field_door,limit=1] at @s run tp @e[type=minecraft:armor_stand,distance=..1,tag=death_field_base,limit=1] ^ ^ ^0.01