
execute positioned ^ ^2 ^ unless entity @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_door,limit=1] run kill @e[type=minecraft:glow_item_frame,tag=meg_field,tag=new]


execute positioned ^ ^2 ^ as @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_door,tag=!rusted,limit=1] run item replace entity @s armor.head with minecraft:diamond_hoe[minecraft:damage=1515,minecraft:unbreakable={}]
execute positioned ^ ^2 ^ as @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_door,tag=rusted,limit=1] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=22,minecraft:unbreakable={}]
execute positioned ^ ^2 ^ as @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_door,limit=1] at @s run tp @e[type=minecraft:armor_stand,distance=..1,tag=material_emancipation_grill_base,limit=1] ^ ^ ^0.01