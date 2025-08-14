
clear @a[gamemode=creative,tag=laser_catcher_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=laser_catcher_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=laser_catcher_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_c"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Laser Catcher - Clean"',minecraft:lore=['"Laser Catcher - Clean"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_catcher_c"]}] 1
give @a[gamemode=creative,tag=laser_catcher_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_r"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Laser Catcher - Rusted"',minecraft:lore=['"Laser Catcher - Rusted"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_catcher_r"]}] 1
give @a[gamemode=creative,tag=laser_catcher_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}] 1




execute as @a[tag=laser_catcher_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_c"]}}}}] at @s unless entity @e[tag=laser_catcher_setup_c] run summon item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":3},count:1},Tags:["laser_catcher_setup_c","laser_catcher","useless","clean"],teleport_duration:1}

execute as @a[tag=laser_catcher_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_r"]}}}}] at @s unless entity @e[tag=laser_catcher_setup_r] run summon item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":8},count:1},Tags:["laser_catcher_setup_r","laser_catcher","useless","rusted"],teleport_duration:1}



execute as @a[tag=laser_catcher_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_c"]}}}}] if entity @e[tag=laser_catcher_setup_r] run kill @e[tag=laser_catcher_setup_r]
execute as @a[tag=laser_catcher_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_r"]}}}}] if entity @e[tag=laser_catcher_setup_c] run kill @e[tag=laser_catcher_setup_c]



execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_r] at @p[tag=laser_catcher_setup] run tp @s @p[tag=laser_catcher_setup]
execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_c] at @p[tag=laser_catcher_setup] run tp @s @p[tag=laser_catcher_setup]


execute as @e[tag=laser_catcher_setup_c] at @s at @p[tag=laser_catcher_setup,tag=S] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_catcher_setup_c] at @s at @p[tag=laser_catcher_setup,tag=N] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_catcher_setup_c] at @s at @p[tag=laser_catcher_setup,tag=E] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_catcher_setup_c] at @s at @p[tag=laser_catcher_setup,tag=W] run tp @s ^ ^1 ^3 -90 0
execute as @e[tag=laser_catcher_setup_r] at @s at @p[tag=laser_catcher_setup,tag=S] run tp @s ^ ^1 ^3 180 0
execute as @e[tag=laser_catcher_setup_r] at @s at @p[tag=laser_catcher_setup,tag=N] run tp @s ^ ^1 ^3 0 0
execute as @e[tag=laser_catcher_setup_r] at @s at @p[tag=laser_catcher_setup,tag=E] run tp @s ^ ^1 ^3 90 0
execute as @e[tag=laser_catcher_setup_r] at @s at @p[tag=laser_catcher_setup,tag=W] run tp @s ^ ^1 ^3 -90 0

execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_r] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_c] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5


execute as @a[tag=laser_catcher_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_c"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=laser_catcher_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_r"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=laser_catcher_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_c"]}}}}] run tag @e[tag=laser_catcher_setup_c] add laser_catcher_setup_c_set
execute as @a[tag=laser_catcher_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_catcher_r"]}}}}] run tag @e[tag=laser_catcher_setup_r] add laser_catcher_setup_r_set


execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_r_set] run tag @s remove useless
execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_c_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_r_set] at @s run setblock ~ ~ ~ lime_stained_glass
execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_c_set] at @s run setblock ~ ~ ~ lime_stained_glass


execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_r_set] run tag @s remove laser_catcher_setup_r
execute as @e[type=minecraft:item_display,tag=laser_catcher_setup_c_set] run tag @s remove laser_catcher_setup_c
