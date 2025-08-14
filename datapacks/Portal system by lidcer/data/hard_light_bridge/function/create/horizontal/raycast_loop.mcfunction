
scoreboard players add @s Distance 1
scoreboard players add @s Distance_bridge 1


execute if block ~ ~-1 ~ #hard_light_bridge:hard_light_bridge_air unless block ~ ~-1 ~ minecraft:barrier if entity @s[tag=!floor,tag=!ceiling,tag=!45_portal] run setblock ~ ~-1 ~ minecraft:dark_oak_slab[type=top]



execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=N] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":101},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=S] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":101},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=E] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":105},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=W] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":105},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}

execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=N] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":102},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=S] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":102},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=E] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":106},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=W] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":106},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}


execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":101},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":101},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":105},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":105},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}

execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=north,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":102},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_x] if entity @s[tag=south,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":102},count:1},Tags:["hard_light_bridge","hard_light_bridge_x"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=east,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":106},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_z] if entity @s[tag=west,tag=!floor,tag=!ceiling,tag=!45_portal] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:blue_stained_glass",components:{"minecraft:custom_model_data":106},count:1},Tags:["hard_light_bridge","hard_light_bridge_z"]}


execute if score @s Distance_bridge matches 2 run scoreboard players set @s Distance_bridge 0

execute unless block ^ ^ ^1 #hard_light_bridge:hard_light_bridge_air if entity @s[scores={Distance=..100}] positioned ^ ^ ^ run function hard_light_bridge:create/horizontal/raycast_end

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=hard_light_bridge_stop] positioned ~ ~1 ~ run function hard_light_bridge:create/horizontal/raycast_end

execute if entity @s[scores={Distance=100}] positioned ^ ^ ^-0.5 run function hard_light_bridge:create/horizontal/raycast_end

execute if block ^ ^ ^1 #hard_light_bridge:hard_light_bridge_air if entity @s[scores={Distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=hard_light_bridge_stop] positioned ~ ~1 ~ positioned ^ ^ ^1 run function hard_light_bridge:create/horizontal/raycast_loop
