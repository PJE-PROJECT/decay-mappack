clear @a[gamemode=creative,tag=laser_emitter_c_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
clear @a[gamemode=creative,tag=laser_emitter_r_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=laser_emitter_c_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @a[gamemode=creative,tag=laser_emitter_r_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=laser_emitter_c_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_c_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Laser Emitter"',minecraft:lore=['"Laser Emitter - 1"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_emitter_c_tool_1"]}] 1
give @a[gamemode=creative,tag=laser_emitter_c_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}] 1

give @a[gamemode=creative,tag=laser_emitter_r_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_r_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Laser Emitter"',minecraft:lore=['"Laser Emitter - 1"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_emitter_r_tool_1"]}] 1
give @a[gamemode=creative,tag=laser_emitter_r_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}] 1



execute as @a[tag=laser_emitter_c_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_c_tool_1"]}}}}] at @s unless entity @e[tag=laser_emitter_setup_c] run summon item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":1},count:1},Tags:["laser_emitter","laser_emitter_new","laser_emitter_setup_c","laser_emitter_setup_c_1","useless"],teleport_duration:1}
execute as @a[tag=laser_emitter_r_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_r_tool_1"]}}}}] at @s unless entity @e[tag=laser_emitter_setup_r] run summon item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":2},count:1},Tags:["laser_emitter","laser_emitter_new","laser_emitter_setup_r","laser_emitter_setup_r_1","useless"],teleport_duration:1}


execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @p[tag=laser_emitter_c_setup] run tp @s @p[tag=laser_emitter_c_setup]
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @p[tag=laser_emitter_r_setup] run tp @s @p[tag=laser_emitter_r_setup]

# STENI

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-60..60] run tag @s remove ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-60..60] run tag @s remove floor

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-60..60] run tag @s remove ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-60..60] run tag @s remove floor


execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=S,x_rotation=-60..60] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=N,x_rotation=-60..60] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=E,x_rotation=-60..60] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=W,x_rotation=-60..60] run tp @s ^ ^1 ^3 -90 0
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=S,x_rotation=-60..60] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=N,x_rotation=-60..60] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=E,x_rotation=-60..60] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=W,x_rotation=-60..60] run tp @s ^ ^1 ^3 -90 0
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-60..60] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-60..60] align xyz run tp @s ~0.5 ~0.5 ~0.5


# DAUN

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=60..90] run tag @s remove ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=60..90] run tag @s add floor
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=60..90] run tag @s remove ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=60..90] run tag @s add floor
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=S,x_rotation=60..90] run tp @s ^ ^1 ^3 180 -90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=N,x_rotation=60..90] run tp @s ^ ^1 ^3 0 -90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=E,x_rotation=60..90] run tp @s ^ ^1 ^3 90 -90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=W,x_rotation=60..90] run tp @s ^ ^1 ^3 -90 -90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=S,x_rotation=60..90] run tp @s ^ ^1 ^3 180 -90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=N,x_rotation=60..90] run tp @s ^ ^1 ^3 0 -90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=E,x_rotation=60..90] run tp @s ^ ^1 ^3 90 -90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=W,x_rotation=60..90] run tp @s ^ ^1 ^3 -90 -90
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=60..90] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=60..90] align xyz run tp @s ~0.5 ~0.5 ~0.5


# UP

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-90..-60] run tag @s add ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-90..-60] run tag @s remove floor
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-90..-60] run tag @s add ceiling
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-90..-60] run tag @s remove floor
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=S,x_rotation=-90..-60] run tp @s ^ ^1 ^3 180 90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=N,x_rotation=-90..-60] run tp @s ^ ^1 ^3 0 90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=E,x_rotation=-90..-60] run tp @s ^ ^1 ^3 90 90
execute as @e[tag=laser_emitter_setup_c] at @s at @p[tag=laser_emitter_c_setup,tag=W,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -90 90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=S,x_rotation=-90..-60] run tp @s ^ ^1 ^3 180 90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=N,x_rotation=-90..-60] run tp @s ^ ^1 ^3 0 90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=E,x_rotation=-90..-60] run tp @s ^ ^1 ^3 90 90
execute as @e[tag=laser_emitter_setup_r] at @s at @p[tag=laser_emitter_r_setup,tag=W,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -90 90
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r] at @s if entity @p[tag=laser_emitter_r_setup,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c] at @s if entity @p[tag=laser_emitter_c_setup,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~0.5 ~0.5





execute as @a[tag=laser_emitter_c_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_c_tool_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=laser_emitter_r_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_r_tool_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=laser_emitter_c_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_c_tool_1"]}}}}] run tag @e[tag=laser_emitter_setup_c_1] add laser_emitter_setup_c_set

execute as @a[tag=laser_emitter_r_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_emitter_r_tool_1"]}}}}] run tag @e[tag=laser_emitter_setup_r_1] add laser_emitter_setup_r_set

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_c_set] run tag @s remove laser_emitter_setup_c
execute as @e[type=minecraft:item_display,tag=laser_emitter_setup_r_set] run tag @s remove laser_emitter_setup_r
