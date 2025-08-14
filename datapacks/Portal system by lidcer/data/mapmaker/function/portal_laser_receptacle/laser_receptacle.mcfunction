
clear @a[gamemode=creative,tag=laser_receptacle_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=laser_receptacle_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=laser_receptacle_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","clean"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Laser Receptacle"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_receptacle","clean"]}] 1
give @a[gamemode=creative,tag=laser_receptacle_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","rusted"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Laser Receptacle"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_receptacle","rusted"]}] 1
give @a[gamemode=creative,tag=laser_receptacle_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}] 1


execute if entity @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","clean"]}}}}] run kill @e[tag=laser_receptacle,tag=useless,tag=rusted]
execute if entity @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","rusted"]}}}}] run kill @e[tag=laser_receptacle,tag=useless,tag=clean]



execute as @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","clean"]}}}}] at @s unless entity @e[tag=laser_receptacle_base_setup,tag=clean] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":13,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["laser_receptacle_base_setup","laser_receptacle_base","laser_receptacle","useless","clean"],teleport_duration:1}
execute as @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","clean"]}}}}] at @s unless entity @e[tag=laser_receptacle_glass_setup,tag=clean] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":14,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["laser_receptacle_glass_setup","laser_receptacle_glass","laser_receptacle","useless","clean"],teleport_duration:1}

execute as @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","rusted"]}}}}] at @s unless entity @e[tag=laser_receptacle_base_setup,tag=rusted] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":187,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["laser_receptacle_base_setup","laser_receptacle_base","laser_receptacle","useless","rusted"],teleport_duration:1}
execute as @a[tag=laser_receptacle_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle","rusted"]}}}}] at @s unless entity @e[tag=laser_receptacle_glass_setup,tag=rusted] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":188,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["laser_receptacle_glass_setup","laser_receptacle_glass","laser_receptacle","useless","rusted"],teleport_duration:1}



execute as @e[type=minecraft:item_display,tag=laser_receptacle_base_setup] at @p[tag=laser_receptacle_setup] run tp @s @p[tag=laser_receptacle_setup]
execute as @e[type=minecraft:item_display,tag=laser_receptacle_glass_setup] at @p[tag=laser_receptacle_setup] run tp @s @p[tag=laser_receptacle_setup]


execute as @e[tag=laser_receptacle_base_setup] at @s at @p[tag=laser_receptacle_setup,tag=S] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_receptacle_base_setup] at @s at @p[tag=laser_receptacle_setup,tag=N] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_receptacle_base_setup] at @s at @p[tag=laser_receptacle_setup,tag=E] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_receptacle_base_setup] at @s at @p[tag=laser_receptacle_setup,tag=W] run tp @s ^ ^1 ^3 -90 0
execute as @e[tag=laser_receptacle_glass_setup] at @s at @p[tag=laser_receptacle_setup,tag=S] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_receptacle_glass_setup] at @s at @p[tag=laser_receptacle_setup,tag=N] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_receptacle_glass_setup] at @s at @p[tag=laser_receptacle_setup,tag=E] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_receptacle_glass_setup] at @s at @p[tag=laser_receptacle_setup,tag=W] run tp @s ^ ^1 ^3 -90 0

execute as @e[type=minecraft:item_display,tag=laser_receptacle_glass_setup] at @s align xyz run tp @s ~0.5 ~0.35 ~0.5
execute as @e[type=minecraft:item_display,tag=laser_receptacle_base_setup] at @s align xyz run tp @s ~0.5 ~0.35 ~0.5


execute as @a[tag=laser_receptacle_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=laser_receptacle_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle"]}}}}] run tag @e[tag=laser_receptacle_base_setup] add laser_receptacle_setup_set
execute as @a[tag=laser_receptacle_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_receptacle"]}}}}] run tag @e[tag=laser_receptacle_glass_setup] add laser_receptacle_setup_set


execute as @e[type=minecraft:item_display,tag=laser_receptacle_setup_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=laser_receptacle_setup_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=laser_receptacle_setup_set] at @s run setblock ~ ~-1 ~ granite

execute as @e[type=minecraft:item_display,tag=laser_receptacle_setup_set] run tag @s remove laser_receptacle_glass_setup
execute as @e[type=minecraft:item_display,tag=laser_receptacle_setup_set] run tag @s remove laser_receptacle_base_setup
