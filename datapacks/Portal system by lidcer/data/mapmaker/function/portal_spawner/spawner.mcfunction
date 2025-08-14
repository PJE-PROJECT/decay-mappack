
clear @a[gamemode=creative,tag=spawner_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=spawner_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=spawner_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_b"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"blue","text":"Portal spawner - BLUE"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["spawner_b"]}]
give @a[gamemode=creative,tag=spawner_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_o"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"gold","text":"Portal spawner - ORANGE"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["spawner_o"]}]
give @a[gamemode=creative,tag=spawner_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}] 1


execute as @a[tag=spawner_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_b"]}}}}] at @s unless entity @e[tag=portal_spawner_setup,tag=b] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":145},count:1},Tags:["portal_spawner","portal_spawner_emitter","portal_spawner_setup","b","useless"],teleport_duration:1}
execute as @a[tag=spawner_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_o"]}}}}] at @s unless entity @e[tag=portal_spawner_setup,tag=o] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":145},count:1},Tags:["portal_spawner","portal_spawner_emitter","portal_spawner_setup","o","useless"],teleport_duration:1}




execute as @a[tag=spawner_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_b"]}}}}] if entity @e[tag=portal_spawner_setup,tag=b] run kill @e[tag=portal_spawner_setup,tag=o]
execute as @a[tag=spawner_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_o"]}}}}] if entity @e[tag=portal_spawner_setup,tag=o] run kill @e[tag=portal_spawner_setup,tag=b]



execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] at @p[tag=spawner_setup] run tp @s @p[tag=spawner_setup]

#STENI
execute as @e[tag=portal_spawner_setup] at @p[tag=spawner_setup,tag=S,x_rotation=-60..60] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=portal_spawner_setup] at @p[tag=spawner_setup,tag=N,x_rotation=-60..60] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=portal_spawner_setup] at @p[tag=spawner_setup,tag=E,x_rotation=-60..60] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=portal_spawner_setup] at @p[tag=spawner_setup,tag=W,x_rotation=-60..60] run tp @s ^ ^1 ^3 -90 0




#DAUN
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=S,x_rotation=60..90] run tp @s ^ ^1 ^3 180 -90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=N,x_rotation=60..90] run tp @s ^ ^1 ^3 0 -90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=E,x_rotation=60..90] run tp @s ^ ^1 ^3 90 -90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=W,x_rotation=60..90] run tp @s ^ ^1 ^3 -90 -90
#UP
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=S,x_rotation=-90..-60] run tp @s ^ ^1 ^3 180 90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=N,x_rotation=-90..-60] run tp @s ^ ^1 ^3 0 90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=E,x_rotation=-90..-60] run tp @s ^ ^1 ^3 90 90
execute as @e[tag=portal_spawner_setup] at @s at @p[tag=spawner_setup,tag=W,x_rotation=-90..-60] run tp @s ^ ^1 ^3 -90 90


#DAUN
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=N,x_rotation=60..90] at @s align xyz run tp @s ~0.5 ~1.1 ~
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=S,x_rotation=60..90] at @s align xyz run tp @s ~0.5 ~1.1 ~
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=W,x_rotation=60..90] at @s align xyz run tp @s ~ ~1.1 ~0.5
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=E,x_rotation=60..90] at @s align xyz run tp @s ~ ~1.1 ~0.5
#STENi
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=N,x_rotation=-60..60] at @s align xyz run tp @s ~0.5 ~1 ~0.05
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=S,x_rotation=-60..60] at @s align xyz run tp @s ~0.5 ~1 ~-0.05
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=W,x_rotation=-60..60] at @s align xyz run tp @s ~0.05 ~1 ~0.5
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=E,x_rotation=-60..60] at @s align xyz run tp @s ~-0.05 ~1 ~0.5
#UP
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=N,x_rotation=-90..-60] at @s align xyz run tp @s ~0.5 ~0.9 ~
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=S,x_rotation=-90..-60] at @s align xyz run tp @s ~0.5 ~0.9 ~
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=W,x_rotation=-90..-60] at @s align xyz run tp @s ~ ~0.9 ~0.5
execute as @e[type=minecraft:item_display,tag=portal_spawner_setup] if entity @a[tag=spawner_setup,tag=E,x_rotation=-90..-60] at @s align xyz run tp @s ~ ~0.9 ~0.5





execute as @a[tag=spawner_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_b"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=spawner_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_o"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=spawner_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_b"]}}}}] run tag @e[tag=portal_spawner_setup] add portal_spawner_set
execute as @a[tag=spawner_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["spawner_o"]}}}}] run tag @e[tag=portal_spawner_setup] add portal_spawner_set


tag @e[type=minecraft:item_display,tag=portal_spawner_set,x_rotation=90] add ceiling
tag @e[type=minecraft:item_display,tag=portal_spawner_set,x_rotation=-90] add floor
tag @e[type=minecraft:item_display,tag=portal_spawner_set,tag=!ceiling,tag=!floor] add wall




execute as @e[type=minecraft:item_display,tag=portal_spawner_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=portal_spawner_set] run tag @s remove portal_spawner_setup
