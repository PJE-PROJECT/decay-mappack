scoreboard players add @s Distance 1
scoreboard players add @s meg_distance 1



#SPAWN FIELD ITEM DISPLAYS
#z
execute if entity @s[tag=S] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":97},count:1},Tags:["meg_field","1_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=S] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":99},count:1},Tags:["meg_field","3_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=S] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":98},count:1},Tags:["meg_field","2_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=S] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":100},count:1},Tags:["meg_field","4_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=N] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":97},count:1},Tags:["meg_field","1_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=N] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":99},count:1},Tags:["meg_field","3_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=N] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":98},count:1},Tags:["meg_field","2_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=N] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":100},count:1},Tags:["meg_field","4_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}


#x
execute if entity @s[tag=E] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":97},count:1},Tags:["meg_field","1_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=E] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":99},count:1},Tags:["meg_field","3_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=E] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":98},count:1},Tags:["meg_field","2_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=E] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":100},count:1},Tags:["meg_field","4_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=W] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":97},count:1},Tags:["meg_field","1_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=W] if score @s meg_distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":99},count:1},Tags:["meg_field","3_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=W] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":98},count:1},Tags:["meg_field","2_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=W] if score @s meg_distance matches 2 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":100},count:1},Tags:["meg_field","4_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}



execute if score @s meg_distance matches 2 run scoreboard players set @s meg_distance 0

execute unless block ^ ^ ^1 #mapmaker:meg_pass run function mapmaker:portal_material_emacipation_grill/raycast_end
execute unless block ^ ^1 ^ #mapmaker:meg_pass run function mapmaker:portal_material_emacipation_grill/raycast_end

execute if block ^ ^ ^1 #mapmaker:meg_pass if block ^ ^1 ^1 #mapmaker:meg_pass if entity @s[scores={Distance=..50}] positioned ^ ^ ^1 run function mapmaker:portal_material_emacipation_grill/raycast_loop