tag @s[type=player] add pickoff_block
tp @e[type=minecraft:turtle,tag=SitPlate] ~ -666 ~
kill @e[type=minecraft:turtle,tag=SitPlate]
# Find paired portals, get relevant scores
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=sbpg.portal] sbpg.player_id -= portal_id workspace
execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=sbpg.entering,scores={sbpg.player_id=0},sort=nearest,limit=1] run function sbpg:portals/retrieve_inverse
execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=!sbpg.entering,scores={sbpg.player_id=0},sort=nearest,limit=1] run function sbpg:portals/retrieve_matrix

# If non-player, store momentum (before teleporting resets it)

execute if entity @s[type=!minecraft:player] run function sbpg:code/store_motion

# Teleport to exit portal
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=!sbpg.entering,scores={sbpg.player_id=0},sort=nearest,limit=1] run tp @s ^ ^-0.3 ^1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=sbpg.portal] sbpg.player_id += portal_id workspace

# Update prev and current pos
execute store result score @s sbpg.x run data get entity @s Pos[0] 16384
execute store result score @s sbpg.y run data get entity @s Pos[1] 16384
execute store result score @s sbpg.z run data get entity @s Pos[2] 16384
scoreboard players operation @s sbpg.prev_x = @s sbpg.x
scoreboard players operation @s sbpg.prev_y = @s sbpg.y
scoreboard players operation @s sbpg.prev_z = @s sbpg.z


# Get look direction
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.vector_getter"]}
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 as @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter] run function sbpg:code/get_vector
kill @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_getter]

# Transform into exit portal's basis
function sbpg:portals/full_transform_highprec

# Add to my new pos
scoreboard players operation x workspace += @s sbpg.x
scoreboard players operation y workspace += @s sbpg.y
scoreboard players operation z workspace += @s sbpg.z

# Summon entity at pos, face it
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.pos_goer","sbpg.kill_me"]}
execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer] run function sbpg:code/go_to_pos
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.face_me","sbpg.kill_me"]}
execute at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud,tag=sbpg.face_me,sort=nearest,limit=1]
kill @e[type=minecraft:area_effect_cloud,tag=sbpg.kill_me]


# Transform momentum (can't read or set player's directly, so need special case)
execute if entity @s[type=!minecraft:player] run function sbpg:portals/transform_momentum
execute if entity @s[type=minecraft:player] run function sbpg:portals/transform_player_momentum

execute if entity @s[type=minecraft:player] run playsound minecraft:portal_enter_2 ambient @a ~ ~ ~ 0.1 1 0.1
execute if entity @s[type=minecraft:player] run playsound minecraft:portal_exit_2 ambient @a ~ ~ ~ 0.1 1 0.1


execute if entity @s[tag=gel_blob] run kill @s
execute if entity @s[tag=gel_blob,tag=blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":34,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","blue","new"]}
execute if entity @s[tag=gel_blob,tag=orange] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":35,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","orange","new"]}



execute at @s[tag=gel_blob] run data modify entity @e[type=minecraft:armor_stand,distance=..0.1,tag=gel_blob,tag=new,limit=1] Motion set from entity @s Motion



tag @e[type=minecraft:armor_stand,tag=gel_blob,tag=new,limit=1] remove new

