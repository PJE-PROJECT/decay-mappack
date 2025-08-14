scoreboard players add @s Distance 1
scoreboard players add @s meg_distance 1




#SPAWN FIELD ITEM DISPLAYS

execute if entity @s[tag=S] if score @s Distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":186},count:1},Tags:["laser_field","full","z","new"],Rotation:[-90.0f,0.0f],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale:[30.0f,1f,0.0f],translation:[-0.5f, 0.0f, 0.0f]}}
execute if entity @s[tag=N] if score @s Distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":186},count:1},Tags:["laser_field","full","z","new"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale:[30.0f,1f,0.0f],translation:[-0.5f, 0.0f, 0.0f]}}

execute if entity @s[tag=E] if score @s Distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":186},count:1},Tags:["laser_field","full","x","new"],Rotation:[180.0f,0.0f],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale:[30.0f,1f,0.0f],translation:[-0.5f, 0.0f, 0.0f]}}
execute if entity @s[tag=W] if score @s Distance matches 1 run summon minecraft:item_display ~ ~-0.75 ~ {item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":186},count:1},Tags:["laser_field","full","x","new"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale:[30.0f,1f,0.0f],translation:[-0.5f, 0.0f, 0.0f]}}



#z
# S
execute if entity @s[tag=N] run summon minecraft:item_display ~ ~0.25 ~ {Tags:["laser_field","1_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=N] run summon minecraft:item_display ~ ~-0.75 ~ {Tags:["laser_field","1_part","z"],Rotation:[90.0f,0.0f],brightness:{sky:15,block:15}}


execute if entity @s[tag=S] run summon minecraft:item_display ~ ~0.25 ~ {Tags:["laser_field","1_part","z"],Rotation:[-90.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=S] run summon minecraft:item_display ~ ~-0.75 ~ {Tags:["laser_field","1_part","z"],Rotation:[-90.0f,0.0f],brightness:{sky:15,block:15}}


execute if entity @s[tag=E] run summon minecraft:item_display ~ ~0.25 ~ {Tags:["laser_field","1_part","x"],Rotation:[180.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=E] run summon minecraft:item_display ~ ~-0.75 ~ {Tags:["laser_field","1_part","x"],Rotation:[180.0f,0.0f],brightness:{sky:15,block:15}}


execute if entity @s[tag=W] run summon minecraft:item_display ~ ~0.25 ~ {Tags:["laser_field","1_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}
execute if entity @s[tag=W] run summon minecraft:item_display ~ ~-0.75 ~ {Tags:["laser_field","1_part","x"],Rotation:[0.0f,0.0f],brightness:{sky:15,block:15}}


execute unless block ^ ^ ^1 #mapmaker:meg_pass run function mapmaker:portal_laser_field/raycast_end
execute unless block ^ ^1 ^ #mapmaker:meg_pass run function mapmaker:portal_laser_field/raycast_end

execute if block ^ ^ ^1 #mapmaker:meg_pass if block ^ ^1 ^1 #mapmaker:meg_pass if entity @s[scores={Distance=..50}] positioned ^ ^ ^1 run function mapmaker:portal_laser_field/raycast_loop