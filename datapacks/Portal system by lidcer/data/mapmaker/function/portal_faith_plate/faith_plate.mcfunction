clear @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal 45 Degrees White Panel - Clean Style 1"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["plate_tool_b1"]}] 1
#give @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal 45 Degrees White Panel - Clean Style 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["plate_tool_b2"]}] 1
#give @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal 45 Degrees White Panel - Rusted Style 1"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["plate_tool_w1"]}] 1
#give @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal 45 Degrees White Panel - Rusted Style 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["plate_tool_w2"]}] 1
give @a[gamemode=creative,tag=plate_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1


execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setup,tag=plate_setup_b1] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2037535,Tags:["plate_teh","plate_setup","useless","faith_plate","plate_setup_b1","markerignore","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_model,tag=plate_setup,tag=plate_setup_b1] run summon minecraft:item_display ^ ^ ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":14,"minecraft:potion_contents":{custom_color:838808032}},count:1},Tags:["plate_model","plate_setup","useless","faith_plate","plate_setup_b1","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_base,tag=plate_setup,tag=plate_setup_b1] run summon minecraft:item_display ^ ^ ^ {Tags:["plate_base","plate_setup","useless","faith_plate","plate_setup_b1","markerignore","useless"],item_display:"fixed"}



execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setup,tag=plate_setup_b2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2037535,Tags:["plate_teh","plate_setup","useless","faith_plate","plate_setup_b2","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_model,tag=plate_setup,tag=plate_setup_b2] run summon minecraft:item_display ^ ^ ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":14,"minecraft:potion_contents":{custom_color:838808032}},count:1},Tags:["plate_model","plate_setup","useless","faith_plate","plate_setup_b2","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_base,tag=plate_setup,tag=plate_setup_b2] run summon minecraft:item_display ^ ^ ^ {Tags:["plate_base","plate_setup","useless","faith_plate","plate_setup_b2","markerignore","useless"],item_display:"fixed"}



execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setup,tag=plate_setup_w1] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2037535,Tags:["plate_teh","plate_setup","useless","faith_plate","plate_setup_w1","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_model,tag=plate_setup,tag=plate_setup_w1] run summon minecraft:item_display ^ ^ ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":14,"minecraft:potion_contents":{custom_color:838808032}},count:1},Tags:["plate_model","plate_setup","useless","faith_plate","plate_setup_w1","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_base,tag=plate_setup,tag=plate_setup_w1] run summon minecraft:item_display ^ ^ ^ {Tags:["plate_base","plate_setup","useless","faith_plate","plate_setup_w1","markerignore","useless"],item_display:"fixed"}



execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setup,tag=plate_setup_w2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2037535,Tags:["plate_teh","plate_setup","useless","faith_plate","plate_setup_w2","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_model,tag=plate_setup,tag=plate_setup_w2] run summon minecraft:item_display ^ ^ ^ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":14,"minecraft:potion_contents":{custom_color:838808032}},count:1},Tags:["plate_model","plate_setup","useless","faith_plate","plate_setup_w2","markerignore","useless"]}
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] at @s unless entity @e[type=minecraft:item_display,tag=plate_base,tag=plate_setup,tag=plate_setup_w2] run summon minecraft:item_display ^ ^ ^ {Tags:["plate_base","plate_setup","useless","faith_plate","plate_setup_w2","markerignore","useless"],item_display:"fixed"}



execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] if entity @e[tag=plate_setup,tag=!plate_setup_b1] run kill @e[type=!minecraft:player,tag=plate_setup,tag=!plate_setup_b1]
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] if entity @e[tag=plate_setup,tag=!plate_setup_b2] run kill @e[type=!minecraft:player,tag=plate_setup,tag=!plate_setup_b2]
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] if entity @e[tag=plate_setup,tag=!plate_setup_w1] run kill @e[type=!minecraft:player,tag=plate_setup,tag=!plate_setup_w1]
execute as @a[tag=plate_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] if entity @e[tag=plate_setup,tag=!plate_setup_w2] run kill @e[type=!minecraft:player,tag=plate_setup,tag=!plate_setup_w2]




execute as @a[tag=plate_setup] at @s align xyz run tp @e[type=minecraft:armor_stand,tag=plate_setup,sort=nearest,limit=1] @p

execute as @e[type=!minecraft:player,tag=plate_setup] at @s at @p[tag=plate_setup] run tp @s ^1 ^1 ^3 0 0
execute as @e[type=!minecraft:player,tag=plate_setup] at @s if entity @p[tag=N,tag=plate_setup] align xyz run tp @s ~0.5 ~-1.5 ~1 0 0
execute as @e[type=!minecraft:player,tag=plate_setup] at @s if entity @p[tag=S,tag=plate_setup] align xyz run tp @s ~0.5 ~-1.5 ~1 -180 0
execute as @e[type=!minecraft:player,tag=plate_setup] at @s if entity @p[tag=W,tag=plate_setup] align xyz run tp @s ~1 ~-1.5 ~0.5 -90 0
execute as @e[type=!minecraft:player,tag=plate_setup] at @s if entity @p[tag=E,tag=plate_setup] align xyz run tp @s ~1 ~-1.5 ~0.5 90 0

#execute as @e[type=minecraft:armor_stand,tag=45panel_setup,tag=45_panel] at @s if entity @p[tag=N,tag=plate_setup] run data modify entity @s Pose.Head[0] set from entity @s Rotation[0]
#execute as @e[type=minecraft:armor_stand,tag=45panel_setup,tag=45_panel] at @s if entity @p[tag=N,tag=plate_setup] run data modify entity @s Pose.Head[1] set from entity @s Rotation[1]

execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] run tag @e[tag=plate_setup,tag=faith_plate] add faith_plate_set
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] run tag @e[tag=plate_setup,tag=faith_plate] add faith_plate_set
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] run tag @e[tag=plate_setup,tag=faith_plate] add faith_plate_set
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] run tag @e[tag=plate_setup,tag=faith_plate] add faith_plate_set

execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_b2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=plate_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_tool_w2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2


tag @e[tag=faith_plate_set] remove useless
tag @e[tag=faith_plate_set] remove plate_setup
tag @e[type=minecraft:armor_stand,tag=plate_teh,tag=faith_plate_set] add plate_setting
tag @e[tag=faith_plate_set] remove faith_plate_set

execute if entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] run scoreboard players set @a portalgun 0
execute if entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] run clear @a[tag=plate_setup]
execute if entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] run tag @a remove plate_setup

execute if entity @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] run tag @a add plate_setup_point