data modify entity @s[tag=empty] item.components."minecraft:custom_model_data" set value 82
data modify entity @s[tag=clean,tag=32] item.components."minecraft:custom_model_data" set value 83
data modify entity @s[tag=clean,tag=64] item.components."minecraft:custom_model_data" set value 83
data modify entity @s[tag=clean,tag=128] item.components."minecraft:custom_model_data" set value 83
data modify entity @s[tag=clean,tag=90deg,tag=!top] item.components."minecraft:custom_model_data" set value 83
data modify entity @s[tag=clean,tag=90deg,tag=top] item.components."minecraft:custom_model_data" set value 91

data modify entity @s[tag=rusted,tag=32] item.components."minecraft:custom_model_data" set value 85
data modify entity @s[tag=rusted,tag=64] item.components."minecraft:custom_model_data" set value 85
data modify entity @s[tag=rusted,tag=128] item.components."minecraft:custom_model_data" set value 85
data modify entity @s[tag=rusted,tag=90deg,tag=!top] item.components."minecraft:custom_model_data" set value 85
data modify entity @s[tag=rusted,tag=90deg,tag=top] item.components."minecraft:custom_model_data" set value 92

data modify entity @s item.components."minecraft:potion_contents".custom_color set value 0

playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.03 1 0
playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.03 1 0

scoreboard players set @s animationtime 0
tag @s remove arm_anim
tag @s add closed
