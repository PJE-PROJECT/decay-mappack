
scoreboard players add @s Distance 1
scoreboard players add @s Distance_bridge 1




execute if block ^ ^-1 ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=south] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=north]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=south] if entity @s[tag=floor,tag=south] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","south"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=north] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=south]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=north] if entity @s[tag=floor,tag=north] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","north"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=east] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=west]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=east] if entity @s[tag=floor,tag=east] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","east"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=west] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=east]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=west] if entity @s[tag=floor,tag=west] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","west"]}


execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=south] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=south]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=south] if entity @s[tag=ceiling,tag=south] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","south"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=north] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=north]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=north] if entity @s[tag=ceiling,tag=north] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","north"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=east] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=east]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=east] if entity @s[tag=ceiling,tag=east] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","east"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=west] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=west]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=west] if entity @s[tag=ceiling,tag=west] if score @s Distance_bridge matches 1 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":64},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","west"]}







execute if block ^ ^-1 ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=south] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=north]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..0.7,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=south] if entity @s[tag=floor,tag=south] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","south"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=north] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=south]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=north] if entity @s[tag=floor,tag=north] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","north"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=east] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=west]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=east] if entity @s[tag=floor,tag=east] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","east"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=floor,tag=west] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=east]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=west] if entity @s[tag=floor,tag=west] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","west"]}


execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=south] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=south]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=south] if entity @s[tag=ceiling,tag=south] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","south"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=north] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=north]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=north] if entity @s[tag=ceiling,tag=north] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","north"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=east] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=east]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=east] if entity @s[tag=ceiling,tag=east] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","east"]}

execute if block ^ ^ ^ #hard_light_bridge:hard_light_bridge_air if entity @s[tag=ceiling,tag=west] run setblock ^ ^ ^ minecraft:iron_trapdoor[open=true,facing=west]
execute unless entity @e[type=minecraft:glow_item_frame,distance=..1,tag=hard_light_bridge,tag=hard_light_bridge_y,tag=west] if entity @s[tag=ceiling,tag=west] if score @s Distance_bridge matches 2 run summon minecraft:glow_item_frame ~ ~ ~ {Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:white_stained_glass_pane",components:{"minecraft:custom_model_data":65},count:1},Tags:["hard_light_bridge","hard_light_bridge_y","west"]}

execute if score @s Distance_bridge matches 2 run scoreboard players set @s Distance_bridge 0


execute unless block ^ ^ ^1 #hard_light_bridge:hard_light_bridge_air if entity @s[scores={Distance=..100}] positioned ^ ^ ^ run function hard_light_bridge:create/y/raycast_end

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=hard_light_bridge_stop] positioned ~ ~1 ~ run function hard_light_bridge:create/y/raycast_end

execute if entity @s[scores={Distance=100}] positioned ^ ^ ^-0.5 run function hard_light_bridge:create/y/raycast_end

execute if entity @s[tag=floor] if block ^ ^ ^1 #hard_light_bridge:hard_light_bridge_air if entity @s[scores={Distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=hard_light_bridge_stop] positioned ~ ~2 ~ run function hard_light_bridge:create/y/raycast_loop

execute if entity @s[tag=ceiling] if block ^ ^ ^1 #hard_light_bridge:hard_light_bridge_air if entity @s[scores={Distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=hard_light_bridge_stop] run function hard_light_bridge:create/y/raycast_loop
