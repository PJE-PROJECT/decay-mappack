data modify entity @s[tag=clean] item.components."minecraft:custom_model_data" set value 84
data modify entity @s[tag=rusted] item.components."minecraft:custom_model_data" set value 86


data modify entity @s item.components."minecraft:potion_contents".custom_color set value 0

#playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.1 1 0
#playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.1 1 0

scoreboard players set @s animationtime 0
tag @s remove arm_anim
tag @s add closed
