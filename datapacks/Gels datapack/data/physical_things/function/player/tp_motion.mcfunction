scoreboard players set *if_add_pos_x main_score 1
scoreboard players set *if_add_pos_z main_score 1
execute store result score #x main_score run data get entity @s Pos[0] 100
execute store result score #z main_score run data get entity @s Pos[2] 100
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation #x main_score += x_p main_score
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #z main_score += z_p main_score

data modify storage midwut:main temp set from entity @s Motion


execute at @s positioned ~0.3 ~ ~ unless block ~ ~ ~ #midwut:run if block ~-0.6 ~ ~ #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~-0.3 ~ ~ align x run function physical_things:player/tp_wall/x
execute at @s positioned ~-0.3 ~ ~ unless block ~ ~ ~ #midwut:run if block ~0.6 ~ ~ #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~0.3 ~ ~ align x run function physical_things:player/tp_wall/x-
execute at @s positioned ~ ~ ~0.3 unless block ~ ~ ~ #midwut:run if block ~ ~ ~-0.6 #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~ ~ ~-0.3 align z run function physical_things:player/tp_wall/z
execute at @s positioned ~ ~ ~-0.3 unless block ~ ~ ~ #midwut:run if block ~ ~ ~0.6 #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~ ~ ~0.3 align z run function physical_things:player/tp_wall/z-
execute at @s positioned ~0.3 ~1.796875 ~ unless block ~ ~ ~ #midwut:run if block ~-0.6 ~ ~ #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~-0.3 ~-1.796875 ~ align x run function physical_things:player/tp_wall/x
execute at @s positioned ~-0.3 ~1.796875 ~ unless block ~ ~ ~ #midwut:run if block ~0.6 ~ ~ #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~0.3 ~-1.796875 ~ align x run function physical_things:player/tp_wall/x-
execute at @s positioned ~ ~1.796875 ~0.3 unless block ~ ~ ~ #midwut:run if block ~ ~ ~-0.6 #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~ ~-1.796875 ~-0.3 align z run function physical_things:player/tp_wall/z
execute at @s positioned ~ ~1.796875 ~-0.3 unless block ~ ~ ~ #midwut:run if block ~ ~ ~0.6 #midwut:run unless block ~ ~ ~ minecraft:dark_oak_stairs positioned ~ ~-1.796875 ~0.3 align z run function physical_things:player/tp_wall/z-

execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1.797 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1.797 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1.797 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1.797 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y2

#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1.79 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~0.3 ~1.79 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1.79 ~0.3 #midwut:run align y run function physical_things:player/tp_wall/y2
#execute at @s if block ~0.3 ~-1 ~0.3 #midwut:run if block ~0.3 ~-1 ~-0.3 #midwut:run if block ~-0.3 ~-1 ~0.3 #midwut:run if block ~-0.3 ~-1 ~-0.3 #midwut:run unless block ~-0.3 ~1.79 ~-0.3 #midwut:run align y run function physical_things:player/tp_wall/y2

#execute at @s positioned ~0.3 ~ ~ unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align x run function physical_things:player/tp_wall/x
#execute at @s positioned ~-0.3 ~ ~ unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align x run function physical_things:player/tp_wall/x-
#execute at @s positioned ~ ~ ~0.3 unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align z run function physical_things:player/tp_wall/z
#execute at @s positioned ~ ~ ~-0.3 unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align z run function physical_things:player/tp_wall/z-
#execute at @s positioned ~0.3 ~1.79 ~ unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align x run function physical_things:player/tp_wall/x
#execute at @s positioned ~-0.3 ~1.79 ~ unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align x run function physical_things:player/tp_wall/x-
#execute at @s positioned ~ ~1.79 ~0.3 unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align z run function physical_things:player/tp_wall/z
#execute at @s positioned ~ ~1.79 ~-0.3 unless block ~ ~ ~ #midwut:run unless block ~ ~ ~ dark_oak_stairs align z run function physical_things:player/tp_wall/z-
scoreboard players operation #x main_score -= x_p main_score
scoreboard players operation #z main_score -= z_p main_score
execute if score *if_add_pos_x main_score matches 0 store result entity @s Pos[0] double 0.01 run scoreboard players operation #x main_score -= x_p main_score
execute if score *if_add_pos_z main_score matches 0 store result entity @s Pos[2] double 0.01 run scoreboard players operation #z main_score -= z_p main_score

#scoreboard players set *potoloc_test main_score 0
execute store result score *potoloc_test main_score run data get storage midwut:main temp[1] 1000
execute if score *potoloc_test main_score matches -804.. at @s positioned ~0.3 ~1.79 ~0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y
execute if score *potoloc_test main_score matches -804.. at @s positioned ~0.3 ~1.79 ~-0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y
execute if score *potoloc_test main_score matches -804.. at @s positioned ~-0.3 ~1.79 ~0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y
execute if score *potoloc_test main_score matches -804.. at @s positioned ~-0.3 ~1.79 ~-0.3 align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item_frame,distance=..0.1,tag=blue_gel,limit=1,nbt={Facing:0b}] run function physical_things:player/set_motion_y

data modify entity @s Motion set from storage midwut:main temp



execute at @s run tp @a[tag=selected_player_motion,limit=1] ~ ~ ~


execute store result score #x main_score run data get entity @s Motion[0] 1000000
execute store result score #y main_score run data get entity @s Motion[1] 1000000
execute store result score #z main_score run data get entity @s Motion[2] 1000000
#execute if score #y main_score matches ..0 run kill

tellraw @a [{"score":{"name":"*if_add_pos_z","objective":"main_score"},"type":"score"}]
#tellraw @a [{"score":{"name": "y","objective": "main_score"}}]

