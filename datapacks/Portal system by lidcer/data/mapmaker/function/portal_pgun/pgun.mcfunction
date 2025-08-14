
clear @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_1","pgun_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"PORTAL GUN - DOUBLE"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["pgun_1","pgun_tool"]}]
give @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_2","pgun_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"blue","text":"PORTAL GUN - BLUE"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["pgun_2","pgun_tool"]}]
give @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_3","pgun_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"gold","text":"PORTAL GUN - ORANGE"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["pgun_3","pgun_tool"]}]

give @a[gamemode=creative,tag=pgun_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_1"]}}}}] at @s unless entity @e[tag=v_portalgun_setup,tag=bo] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":15,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["v_portalgun","v_portalgun_setup","bo","useless"],teleport_duration:1}
execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_2"]}}}}] at @s unless entity @e[tag=v_portalgun_setup,tag=b] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":15,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["v_portalgun","v_portalgun_setup","b","useless"],teleport_duration:1}
execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_3"]}}}}] at @s unless entity @e[tag=v_portalgun_setup,tag=o] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":15,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["v_portalgun","v_portalgun_setup","o","useless"],teleport_duration:1}



execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_1"]}}}}] if entity @e[tag=v_portalgun_setup,tag=!bo] run kill @e[tag=v_portalgun_setup,tag=!bo]
execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_2"]}}}}] if entity @e[tag=v_portalgun_setup,tag=!b] run kill @e[tag=v_portalgun_setup,tag=!b]
execute as @a[tag=pgun_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_3"]}}}}] if entity @e[tag=v_portalgun_setup,tag=!o] run kill @e[tag=v_portalgun_setup,tag=!o]



execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] run tp @s @p[tag=pgun_setup]


execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @p[tag=pgun_setup,tag=S] run tp @s ^ ^2.5 ^1.5 ~ ~
execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @p[tag=pgun_setup,tag=N] run tp @s ^ ^2.5 ^1.5 ~ ~
execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @p[tag=pgun_setup,tag=E] run tp @s ^ ^2.5 ^1.5 ~ ~
execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @p[tag=pgun_setup,tag=W] run tp @s ^ ^2.5 ^1.5 ~ ~


execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @s align xyz run tp @s ~0.5 ~-0.43 ~0.5
execute as @e[type=minecraft:item_display,tag=v_portalgun_setup] at @s align xyz run tp @s ~0.5 ~-0.43 ~0.5


execute as @a[tag=pgun_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=pgun_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pgun_tool"]}}}}] run tag @e[tag=v_portalgun_setup] add v_portalgun_setup_set


execute as @e[type=minecraft:item_display,tag=v_portalgun_setup_set] run data merge entity @s {Glowing:0}


execute as @e[type=minecraft:item_display,tag=v_portalgun_setup_set] run tag @s remove useless

execute as @e[type=minecraft:item_display,tag=v_portalgun_setup_set] run tag @s remove v_portalgun_setup
