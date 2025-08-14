
clear @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]



give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Weighted Storage Cube - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["hard_light_bridge_tool_c"]}] 1
give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Weighted Companion Cube - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["hard_light_bridge_tool_r"]}] 1


give @a[gamemode=creative,tag=hard_light_bridge_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1


execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] at @s unless entity @e[tag=hard_light_bridge_setup_c] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":86},count:1},Tags:["hard_light_bridge_emitter","hard_light_bridge_setup_c","markerignore","useless"]}
execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] at @s unless entity @e[tag=hard_light_bridge_setup_r] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":87},count:1},Tags:["hard_light_bridge_emitter","hard_light_bridge_setup_r","markerignore","useless"]}


execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] if entity @e[tag=hard_light_bridge_setup_c] run kill @e[tag=hard_light_bridge_setup_r]
execute as @a[tag=hard_light_bridge_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] if entity @e[tag=hard_light_bridge_setup_r] run kill @e[tag=hard_light_bridge_setup_c]


execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup] run tp @s @p[tag=hard_light_bridge_setup]
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup] run tp @s @p[tag=hard_light_bridge_setup]

# STENI
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=-60..60] run tag @s remove floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=-60..60] run tag @s remove ceiling

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=-60..60] run tag @s remove floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=-60..60] run tag @s remove ceiling


execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-60..60] run tp @s ^ ^1 ^2 0 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-60..60] run tp @s ^ ^1 ^2 -180 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-60..60] run tp @s ^ ^1 ^2 90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-60..60] run tp @s ^ ^1 ^2 -90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-60..60] run tp @s ^ ^1 ^2 0 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-60..60] run tp @s ^ ^1 ^2 -180 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-60..60] run tp @s ^ ^1 ^2 90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-60..60] run tp @s ^ ^1 ^2 -90 0
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-60..60] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-60..60] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-60..60] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-60..60] align xyz run tp @s ~0.3 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-60..60] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-60..60] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-60..60] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-60..60] align xyz run tp @s ~0.3 ~-0.5 ~0.5


#FLOOR
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tag @s add floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tag @s remove ceiling

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tag @s add floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tag @s remove ceiling

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=60..90] run tp @s ^ ^1 ^1 0 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=60..90] run tp @s ^ ^1 ^1 -180 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=60..90] run tp @s ^ ^1 ^1 90 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=60..90] run tp @s ^ ^1 ^1 -90 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=60..90] run tp @s ^ ^1 ^1 0 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=60..90] run tp @s ^ ^1 ^1 -180 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=60..90] run tp @s ^ ^1 ^1 90 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=60..90] run tp @s ^ ^1 ^1 -90 -90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=60..90] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=60..90] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=60..90] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=60..90] align xyz run tp @s ~0.3 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=60..90] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=60..90] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=60..90] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=60..90] align xyz run tp @s ~0.3 ~-0.5 ~0.5

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tp @s ^ ^-0.1 ^-0.2
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,x_rotation=60..90] run tp @s ^ ^-0.1 ^-0.2



#CEILING
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tag @s remove floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tag @s add ceiling

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tag @s remove floor
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tag @s add ceiling

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-90..-60] run tp @s ^ ^1 ^3 0 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -180 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-90..-60] run tp @s ^ ^1 ^3 90 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -90 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-90..-60] run tp @s ^ ^1 ^3 0 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -180 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-90..-60] run tp @s ^ ^1 ^3 90 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -90 90
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-90..-60] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-90..-60] align xyz run tp @s ~0.3 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=N,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~-0.5 ~0.3
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=S,x_rotation=-90..-60] align xyz run tp @s ~0.5 ~-0.5 ~0.7
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=E,x_rotation=-90..-60] align xyz run tp @s ~0.7 ~-0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,tag=W,x_rotation=-90..-60] align xyz run tp @s ~0.3 ~-0.5 ~0.5

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c] at @s if entity @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tp @s ^ ^-0.1 ^-0.2
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r] at @s if entity @p[tag=hard_light_bridge_setup,x_rotation=-90..-60] run tp @s ^ ^-0.1 ^-0.2







execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_r"]}}}}] run tag @e[tag=hard_light_bridge_setup_r] add hard_light_bridge_setup_r_set
execute as @a[tag=hard_light_bridge_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["hard_light_bridge_tool_c"]}}}}] run tag @e[tag=hard_light_bridge_setup_c] add hard_light_bridge_setup_c_set

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_r_set] run tag @s remove hard_light_bridge_setup_r
execute as @e[type=minecraft:item_display,tag=hard_light_bridge_setup_c_set] run tag @s remove hard_light_bridge_setup_c
execute as @e[tag=hard_light_bridge_emitter,tag=!floor,tag=!ceiling] run data merge entity @s {transformation:{translation:[0.0f,-0.11f,0.0f]}}
execute as @e[tag=hard_light_bridge_emitter,tag=floor] run data merge entity @s {transformation:{translation:[0.0f,-0.215f,0.0f]}}
execute as @e[tag=hard_light_bridge_emitter,tag=ceiling] run data merge entity @s {transformation:{translation:[0.0f,0.185f,0.0f]}}

# TAGS (BACKPORT COMPABILITY)

execute as @e[tag=hard_light_bridge_emitter] run tag @s remove north
execute as @e[tag=hard_light_bridge_emitter] run tag @s remove south
execute as @e[tag=hard_light_bridge_emitter] run tag @s remove east
execute as @e[tag=hard_light_bridge_emitter] run tag @s remove west


execute as @e[tag=hard_light_bridge_emitter,tag=N] run tag @s add north
execute as @e[tag=hard_light_bridge_emitter,tag=S] run tag @s add south
execute as @e[tag=hard_light_bridge_emitter,tag=E] run tag @s add east
execute as @e[tag=hard_light_bridge_emitter,tag=W] run tag @s add west