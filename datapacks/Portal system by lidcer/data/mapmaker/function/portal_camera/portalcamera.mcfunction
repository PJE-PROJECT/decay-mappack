clear @a[gamemode=creative,tag=portalcam_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
clear @a[gamemode=creative,tag=portalcam_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=portalcam_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @a[gamemode=creative,tag=portalcam_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

give @a[gamemode=creative,tag=portalcam_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Security Camera - 1"',minecraft:lore=['"Portal Security Camera - 1"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portalcam_tool_1"]}] 1
give @a[gamemode=creative,tag=portalcam_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Security Camera - 2"',minecraft:lore=['"Portal Security Camera - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portalcam_tool_2"]}] 1

give @a[gamemode=creative,tag=portalcam_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1
give @a[gamemode=creative,tag=portalcam_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1

execute as @a[tag=portalcam_1_setup] at @s unless entity @e[type=minecraft:armor_stand,tag=portalcamera_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":19,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_setup","useless","cam1"]}
execute as @a[tag=portalcam_2_setup] at @s unless entity @e[type=minecraft:armor_stand,tag=portalcamera_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_setup","useless","cam2"]}

execute as @a[tag=portalcam_1_setup] at @s align xyz run tp @e[type=minecraft:armor_stand,tag=portalcamera_setup,tag=cam1,sort=nearest,limit=1] @p
execute as @a[tag=portalcam_2_setup] at @s align xyz run tp @e[type=minecraft:armor_stand,tag=portalcamera_setup,tag=cam2,sort=nearest,limit=1] @p

execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s at @p[tag=portalcam_1_setup] run tp @s ^1 ^1 ^2 0 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s at @p[tag=portalcam_2_setup] run tp @s ^1 ^1 ^2 0 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=N,tag=portalcam_1_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=S,tag=portalcam_1_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=W,tag=portalcam_1_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=E,tag=portalcam_1_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 90 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=N,tag=portalcam_2_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=S,tag=portalcam_2_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=W,tag=portalcam_2_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portalcamera_setup] at @s if entity @p[tag=E,tag=portalcam_2_setup] align xyz run tp @s ~0.5 ~0.85 ~0.5 90 0







execute as @a[tag=portalcam_1_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_1"]}}}}] run tag @e[tag=portalcamera_setup,tag=cam1] add portalcam_set
execute as @a[tag=portalcam_1_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalcam_1_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_1"]}}}}] run tag @e[tag=portalcamera_setup,tag=cam1] remove portalcam_setup
execute as @a[tag=portalcam_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_2"]}}}}] run tag @e[tag=portalcamera_setup,tag=cam2] add portalcam_set
execute as @a[tag=portalcam_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalcam_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalcam_tool_2"]}}}}] run tag @e[tag=portalcamera_setup,tag=cam2] remove portalcam_setup




execute as @e[type=minecraft:armor_stand,tag=portalcam_set,tag=cam1] at @s positioned ~ ~0.1 ~ unless entity @e[distance=..0.8,tag=portalcam_side] run summon item_display ^ ^ ^-0.1 {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":18,"minecraft:unbreakable":{}},count:1},Tags:["portalcam_head","portalcam_head_1","lookingatyou","pco","cam"],teleport_duration:5}
execute as @e[type=minecraft:armor_stand,tag=portalcam_set,tag=cam1] at @s positioned ~ ~0.1 ~ unless entity @e[distance=..0.8,tag=portalcam_base] run summon item_display ^ ^ ^0.1 {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":17,"minecraft:unbreakable":{}},count:1},Tags:["portalcam_base","portalcam_base_1","pco","cam"]}


execute as @e[type=minecraft:armor_stand,tag=portalcam_set,tag=cam2] at @s positioned ~ ~0.1 ~ unless entity @e[distance=..0.8,tag=portalcam_side] run summon item_display ^ ^ ^-0.1 {item:{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1508,"minecraft:unbreakable":{}},count:1},Tags:["portalcam_head","portalcam_head_2","lookingatyou","pco","cam"],teleport_duration:5}
execute as @e[type=minecraft:armor_stand,tag=portalcam_set,tag=cam2] at @s positioned ~ ~0.1 ~ unless entity @e[distance=..0.8,tag=portalcam_base] run summon item_display ^ ^ ^0.1 {item:{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1509,"minecraft:unbreakable":{}},count:1},Tags:["portalcam_base","portalcam_base_2","pco","cam"]}



title @a[tag=portalcam_1_setup,scores={shiftedit=1}] actionbar {"text":"SHIFT: TOGGLE LOOKING AT PLAYER","bold":true,"color":"gray","type":"text"}
title @a[tag=portalcam_1_setup,scores={shiftedit=0}] actionbar {"text":"SHIFT: TOGGLE LOOKING AT PLAYER","bold":true,"color":"green","type":"text"}

title @a[tag=portalcam_2_setup,scores={shiftedit=1}] actionbar {"text":"SHIFT: TOGGLE LOOKING AT PLAYER","bold":true,"color":"gray","type":"text"}
title @a[tag=portalcam_2_setup,scores={shiftedit=0}] actionbar {"text":"SHIFT: TOOGLE LOOKING AT PLAYER","bold":true,"color":"green","type":"text"}


execute if entity @a[tag=portalcam_1_setup,scores={shiftedit=1}] at @e[tag=portalcam_set] run tag @e[tag=portalcam_head,distance=..0.2] remove lookingatyou
execute if entity @a[tag=portalcam_1_setup,scores={shiftedit=0}] at @e[tag=portalcam_set] run tag @e[tag=portalcam_head,distance=..0.2] add lookingatyou

execute if entity @a[tag=portalcam_2_setup,scores={shiftedit=1}] at @e[tag=portalcam_set] run tag @e[tag=portalcam_head,distance=..0.2] remove lookingatyou
execute if entity @a[tag=portalcam_2_setup,scores={shiftedit=0}] at @e[tag=portalcam_set] run tag @e[tag=portalcam_head,distance=..0.2] add lookingatyou


execute as @e[tag=portalcam_set] at @s positioned ~ ~0.1 ~ run data modify entity @e[tag=portalcam_base,distance=..1,limit=1] Rotation[0] set from entity @s Rotation[0]

execute if entity @a[tag=portalcam_2_setup,scores={shiftedit=1}] at @e[tag=portalcam_set] as @e[tag=portalcam_head,distance=..0.2] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 90
execute if entity @a[tag=portalcam_1_setup,scores={shiftedit=1}] at @e[tag=portalcam_set] as @e[tag=portalcam_head,distance=..0.2] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 90



execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam1] at @s run tp @e[tag=portalcam_base_1,tag=pco,sort=nearest,limit=1] @s
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam1] at @s run tp @e[tag=portalcam_base_1,tag=pco,sort=nearest,limit=1] ~ ~-1 ~
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam1] at @s run tp @e[tag=portalcam_head_1,tag=pco,sort=nearest,limit=1] @s
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam1] at @s run tp @e[tag=portalcam_head_1,tag=pco,sort=nearest,limit=1] ^ ^-1.05 ^-0.065

execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam2] at @s run tp @e[tag=portalcam_base_2,tag=pco,sort=nearest,limit=1] @s
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam2] at @s run tp @e[tag=portalcam_base_2,tag=pco,sort=nearest,limit=1] ~ ~-1 ~
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam2] at @s run tp @e[tag=portalcam_head_2,tag=pco,sort=nearest,limit=1] @s
execute as @e[type=minecraft:item_display,tag=portalcam_set,tag=cam2] at @s run tp @e[tag=portalcam_head_2,tag=pco,sort=nearest,limit=1] ^ ^-1.05 ^-0.075

tag @e[tag=pco] remove pco
execute as @e[tag=portalcam_set] run kill @s
