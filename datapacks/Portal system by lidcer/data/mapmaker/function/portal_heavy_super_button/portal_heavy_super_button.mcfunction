
clear @a[gamemode=creative,tag=portalbutton_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=portalbutton_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
 
give @a[gamemode=creative,tag=portalbutton_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Portal Door - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portal_heavy_super_button_tool_2"]}] 1
give @a[gamemode=creative,tag=portalbutton_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_cube"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Portal Door - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portal_heavy_super_button_tool_cube"]}] 1
give @a[gamemode=creative,tag=portalbutton_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1

execute as @a[tag=portalbutton_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_2"]}}}}] at @s unless entity @e[tag=portal_heavy_super_button_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1461,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portal_heavy_super_button_setup_2","useless","button","tpignore"]}
execute as @a[tag=portalbutton_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_cube"]}}}}] at @s unless entity @e[tag=portal_heavy_super_button_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":107,"minecraft:potion_contents":{custom_color:0}},count:1}],DisabledSlots:2037535,Tags:["portal_heavy_super_button_setup_2","cube_only","useless","button","tpignore"]}


execute as @a[tag=portalbutton_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_2"]}}}}] run kill @e[tag=portal_heavy_super_button_setup_2,tag=cube_only]
execute as @a[tag=portalbutton_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_cube"]}}}}] run kill @e[tag=portal_heavy_super_button_setup_2,tag=!cube_only]


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_buttonside_setup_2] unless entity @e[tag=portal_heavy_super_button_setup_2] run kill @e[tag=portal_heavy_super_buttonside_setup_2]

execute as @a[tag=portal_heavy_super_button_2_setup] at @s align xyz run tp @e[tag=portal_heavy_super_buttonera_setup,tag=door2,sort=nearest,limit=1] @p

execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s at @p[tag=portalbutton_2_setup] run tp @s ^ ^ ^3 0 0

execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=N,tag=portalbutton_2_setup] align xyz run tp @s ~0.5 ~-0.225 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=S,tag=portalbutton_2_setup] align xyz run tp @s ~0.5 ~-0.225 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=W,tag=portalbutton_2_setup] align xyz run tp @s ~0.5 ~-0.225 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=E,tag=portalbutton_2_setup] align xyz run tp @s ~0.5 ~-0.225 ~0.5 90 0

execute as @a[tag=portalbutton_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalbutton_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_2"]}}}}] run tag @e[tag=portal_heavy_super_button_setup_2] add portal_heavy_super_button_set_2

execute as @a[tag=portalbutton_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_cube"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalbutton_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_cube"]}}}}] run tag @e[tag=portal_heavy_super_button_setup_2] add portal_heavy_super_button_set_2


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ^ ^1.81 ^ {item:{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1458,"minecraft:unbreakable":{}},count:1},Tags:["portal_button_plate_2","button","tpignore"],item_display:"head",teleport_duration:5}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2,tag=!rusted] at @s run summon minecraft:item_display ^ ^1.81 ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":109,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["portal_button_plate_2","button","tpignore"],item_display:"head",teleport_duration:5}


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":136},count:1},Tags:["button","side_w","side1"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":137},count:1},Tags:["button","side_w","side2"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":138},count:1},Tags:["button","side_w","side3"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":139},count:1},Tags:["button","side_w","side4"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":140},count:1},Tags:["button","side_w","side5"],item_display:"head"}


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side1,sort=nearest,limit=1] ^0.002 ^1.309 ^0.126 ~135 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side2,sort=nearest,limit=1] ^ ^1.309 ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side3,sort=nearest,limit=1] ^ ^1.309 ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side4,sort=nearest,limit=1] ^ ^1.309 ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=!wrecked_style_1,tag=!wrecked_style_2] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side5,sort=nearest,limit=1] ^ ^1.309 ^ ~ ~


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=useless] at @s run setblock ~ ~-1 ~ granite
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2] run tag @s remove useless

execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2] run tag @s remove portal_heavy_super_button_setup_2







#Wrecked
clear @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

give @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Wrecked Cube Button - Style 1"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portal_heavy_super_button_tool_wrecked_1"]}] 1

give @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Wrecked Cube Button - Style 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portal_heavy_super_button_tool_wrecked_2"]}] 1
give @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["button_cube"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Wrecked Cube Button - Style 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["button_cube"]}] 1

give @a[gamemode=creative,tag=portalbutton_2_setup_wrecked,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1

execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_1"]}}}}] at @s unless entity @e[tag=portal_heavy_super_button_setup_2,tag=wrecked_style_1] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":47,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portal_heavy_super_button_setup_2","useless","button","tpignore","wrecked_style_1"]}
execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_2"]}}}}] at @s unless entity @e[tag=portal_heavy_super_button_setup_2,tag=wrecked_style_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":48,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portal_heavy_super_button_setup_2","useless","button","tpignore","wrecked_style_2"]}
execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["button_cube"]}}}}] at @s unless entity @e[tag=portal_heavy_super_button_setup_2,tag=cube_only] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":110,"minecraft:potion_contents":{custom_color:0}},count:1}],DisabledSlots:2037535,Tags:["portal_heavy_super_button_setup_2","useless","button","cube_only","rusted"]}


execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_1"]}}}}] if entity @e[tag=portal_heavy_super_button_setup_2,tag=!wrecked_style_1] run kill @e[tag=portal_heavy_super_button_setup_2,tag=!wrecked_style_1]
execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_2"]}}}}] if entity @e[tag=portal_heavy_super_button_setup_2,tag=!wrecked_style_2] run kill @e[tag=portal_heavy_super_button_setup_2,tag=!wrecked_style_2]
execute as @a[tag=portalbutton_2_setup_wrecked,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["button_cube"]}}}}] if entity @e[tag=portal_heavy_super_button_setup_2,tag=!cube_only] run kill @e[tag=portal_heavy_super_button_setup_2,tag=!cube_only]


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_buttonside_setup_2] unless entity @e[tag=portal_heavy_super_button_setup_2] run kill @e[tag=portal_heavy_super_buttonside_setup_2]

execute as @a[tag=portal_heavy_super_button_2_setup] at @s align xyz run tp @e[tag=portal_heavy_super_buttonera_setup,tag=door2,sort=nearest,limit=1] @p


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s at @p[tag=portalbutton_2_setup_wrecked] run tp @s ^ ^ ^3 0 0

execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=N,tag=portalbutton_2_setup_wrecked] align xyz run tp @s ~0.5 ~-0.225 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=S,tag=portalbutton_2_setup_wrecked] align xyz run tp @s ~0.5 ~-0.225 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=W,tag=portalbutton_2_setup_wrecked] align xyz run tp @s ~0.5 ~-0.225 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_setup_2] at @s if entity @p[tag=E,tag=portalbutton_2_setup_wrecked] align xyz run tp @s ~0.5 ~-0.225 ~0.5 90 0


execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["button_cube"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_1"]}}}}] run tag @e[tag=portal_heavy_super_button_setup_2] add portal_heavy_super_button_set_2
execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portal_heavy_super_button_tool_wrecked_2"]}}}}] run tag @e[tag=portal_heavy_super_button_setup_2] add portal_heavy_super_button_set_2
execute as @a[tag=portalbutton_2_setup_wrecked,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["button_cube"]}}}}] run tag @e[tag=portal_heavy_super_button_setup_2] add portal_heavy_super_button_set_2



execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=wrecked_style_1,tag=!wrecked_style_2,tag=!cube_only] at @s run summon minecraft:item_display ^ ^1.81 ^ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":46},count:1},Tags:["portal_button_plate_2","button","tpignore"],item_display:"head",teleport_duration:5}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=wrecked_style_2,tag=!wrecked_style_1,tag=!cube_only] at @s run summon minecraft:item_display ^ ^1.81 ^ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":46},count:1},Tags:["portal_button_plate_2","button","tpignore"],item_display:"head",teleport_duration:5}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!wrecked_style_2,tag=!wrecked_style_1,tag=cube_only] at @s run summon minecraft:item_display ^ ^1.81 ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":112,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["portal_button_plate_2","button","tpignore"],item_display:"head",teleport_duration:5}


execute as @e[type=minecraft:item_display,tag=portal_button_plate_2] run data merge entity @s {transformation:{scale:[0.6f,0.6f,0.6f]}}

execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":133},count:1},Tags:["button","side_w","side1"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":132},count:1},Tags:["button","side_w","side2"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":133},count:1},Tags:["button","side_w","side3"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":134},count:1},Tags:["button","side_w","side4"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":135},count:1},Tags:["button","side_w","side5"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":133},count:1},Tags:["button","side_w","side6"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":132},count:1},Tags:["button","side_w","side7"],item_display:"head"}


execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side1,sort=nearest,limit=1] ^0.20 ^1.309 ^0.068 ~45 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side2,sort=nearest,limit=1] ^0.002 ^1.309 ^-0.13 ~-45 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side3,sort=nearest,limit=1] ^ ^1.308 ^-0.235 ~-67.5 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side4,sort=nearest,limit=1] ^-0.145 ^1.311 ^-0.119 ~-112.5 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side5,sort=nearest,limit=1] ^0.156 ^1.309 ^0.134 ~67.5 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side6,sort=nearest,limit=1] ^0.005 ^1.309 ^0.22 ~112.5 ~
execute as @e[type=minecraft:armor_stand,tag=portal_heavy_super_button_set_2,tag=portal_heavy_super_button_setup_2,tag=!cube_only,tag=wrecked_style_2,tag=!wrecked_style_1] at @s run tp @e[type=minecraft:item_display,distance=..1,tag=side_w,tag=side7,sort=nearest,limit=1] ^0.002 ^1.309 ^0.126 ~135 ~

