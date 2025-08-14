
kill @e[type=item_display,tag=elevator,tag=arrival,distance=..350,limit=6]
kill @e[type=item_display,tag=elevator_vactube,tag=arrival,distance=..350,limit=2]

execute at @e[type=item_display,tag=elevator_main_pos,tag=arrival,distance=..350,limit=1] run fill ^-1 ^-5 ^-1 ^1 ^-5 ^1 minecraft:barrier replace air

execute at @e[type=item_display,tag=elevator_vactube_pos,tag=arrival,distance=..350,limit=1] run fill ^0.5 ^-3 ^-1.5 ^-1 ^-4 ^-1.5 minecraft:barrier replace air
execute at @e[type=item_display,tag=elevator_vactube_pos,tag=arrival,distance=..350,limit=1] run fill ^1 ^1 ^-1 ^-0.5 ^11 ^-1 air replace minecraft:dark_oak_slab


execute at @e[type=item_display,tag=elevator_main_pos,tag=arrival,tag=clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 22}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_main","elevator_ambient","al"]}
execute at @e[type=item_display,tag=elevator_door_r_pos,tag=arrival,tag=clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 23}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_door","elevator_door_r"]}
execute at @e[type=item_display,tag=elevator_door_l_pos,tag=arrival,tag=clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 24}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_door","elevator_door_l"]}

execute at @e[type=item_display,tag=elevator_main_pos,tag=arrival,tag=!clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 26}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_main","elevator_ambient","al"]}
execute at @e[type=item_display,tag=elevator_door_r_pos,tag=arrival,tag=!clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 27}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_door","elevator_door_r"]}
execute at @e[type=item_display,tag=elevator_door_l_pos,tag=arrival,tag=!clean,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:custom_model_data": 28}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["arrival","elevator","elevator_door","elevator_door_l"]}

tp @e[tag=elevator_main,tag=arrival,distance=..350] @e[tag=elevator_main_pos,tag=arrival,distance=..350,limit=1]
tp @e[tag=elevator_door_r,tag=arrival,distance=..350] @e[tag=elevator_door_r_pos,tag=arrival,distance=..350,limit=1]
tp @e[tag=elevator_door_l,tag=arrival,distance=..350] @e[tag=elevator_door_l_pos,tag=arrival,distance=..350,limit=1]




execute at @e[type=item_display,tag=elevator_vactube_pos,tag=arrival,distance=..350,limit=1] run summon minecraft:item_display ~ ~ ~ {brightness: {block: 0, sky: 10}, item: {components: {"minecraft:custom_model_data": 29}, count: 1, id: "minecraft:netherite_axe"}, teleport_duration: 15, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.2f, 4.8f, 5.2f], translation: [0.0f, 0.0f, 0.0f]},Tags:["elevator_vactube","arrival"]}
