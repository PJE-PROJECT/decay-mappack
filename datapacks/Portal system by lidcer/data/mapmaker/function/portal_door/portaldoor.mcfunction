clear @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]



give @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Portal Door - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portaldoor_tool_2_p"]}] 1
give @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p_overgrown"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Portal Door - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portaldoor_tool_2_p_overgrown"]}] 1
give @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n_overgrown"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Portal Door - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portaldoor_tool_2_n_overgrown"]}] 1
give @a[gamemode=creative,tag=portaldoor_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1


give @a[nbt=!{Inventory:[{id:"minecraft:item_frame"}]}] item_frame
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":279}}]}] netherite_hoe[custom_model_data=279]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":280}}]}] netherite_hoe[custom_model_data=280]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":281}}]}] netherite_hoe[custom_model_data=281]
give @a[nbt=!{Inventory:[{id:"minecraft:netherite_hoe",components:{"minecraft:custom_model_data":282}}]}] netherite_hoe[custom_model_data=282]

execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n"]}}}}] at @s unless entity @e[tag=portaldoor_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1481,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoor_setup_2","useless","n","tpignore","pdoor"]}
execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}}] at @s unless entity @e[tag=portaldoor_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1480,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoor_setup_2","useless","p","tpignore","pdoor"]}

execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n_overgrown"]}}}}] at @s unless entity @e[tag=portaldoor_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":28,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoor_setup_2","useless","n","tpignore","pdoor","overgrown"]}
execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p_overgrown"]}}}}] at @s unless entity @e[tag=portaldoor_setup_2] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":162,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoor_setup_2","useless","p","tpignore","pdoor","overgrown","rusted"]}



execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}}] at @s run kill @e[type=!minecraft:player,tag=portaldoor_setup_2,tag=useless,tag=overgrown]

execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p_overgrown"]}}}}] at @s run kill @e[type=!minecraft:player,tag=portaldoor_setup_2,tag=useless,tag=!rusted]
execute as @a[tag=portaldoor_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n_overgrown"]}}}}] at @s run kill @e[type=!minecraft:player,tag=portaldoor_setup_2,tag=useless,tag=!n]
execute as @a[tag=portaldoor_2_setup,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run kill @e[type=!minecraft:player,tag=portaldoor_setup_2]

execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorR,tag=portaldoorside_setup_2,tag=!overgrown] if entity @e[tag=portaldoor_setup_2,tag=!overgrown] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1478,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorR","tpignore","pdoor"]}
execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorL,tag=portaldoorside_setup_2,tag=!overgrown] if entity @e[tag=portaldoor_setup_2,tag=!overgrown] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1470,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorL","tpignore","pdoor"]}

execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorR,tag=portaldoorside_setup_2,tag=overgrown,tag=!rusted] if entity @e[tag=portaldoor_setup_2,tag=overgrown,tag=!rusted] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":45,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorR","tpignore","pdoor","overgrown"]}
execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorL,tag=portaldoorside_setup_2,tag=overgrown,tag=!rusted] if entity @e[tag=portaldoor_setup_2,tag=overgrown,tag=!rusted] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":37,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorL","tpignore","pdoor","overgrown"]}

execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorR,tag=portaldoorside_setup_2,tag=overgrown,tag=rusted] if entity @e[tag=portaldoor_setup_2,tag=overgrown,tag=rusted] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":178,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorR","tpignore","pdoor","overgrown","rusted"]}
execute as @a[tag=portaldoor_2_setup] at @s unless entity @e[tag=doorL,tag=portaldoorside_setup_2,tag=overgrown,tag=rusted] if entity @e[tag=portaldoor_setup_2,tag=overgrown,tag=rusted] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":170,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portaldoorside_setup_2","useless","doorL","tpignore","pdoor","overgrown","rusted"]}



title @a[tag=portaldoor_2_setup,scores={shiftedit=0}] actionbar {"text":"SHIFT: AUTOMATIC DOOR","bold":true,"color":"gray","type":"text"}
title @a[tag=portaldoor_2_setup,scores={shiftedit=1}] actionbar {"text":"SHIFT: AUTOMATIC DOOR","bold":true,"color":"green","type":"text"}

execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2,tag=useless] if entity @a[tag=portaldoor_2_setup,scores={shiftedit=1}] run tag @s add auto
execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2,tag=useless] if entity @a[tag=portaldoor_2_setup,scores={shiftedit=0}] run tag @s remove auto

execute as @e[type=minecraft:armor_stand,tag=portaldoorside_setup_2] unless entity @e[tag=portaldoor_setup_2] run kill @e[tag=portaldoorside_setup_2]


execute as @a[tag=portaldoor_2_setup] at @s align xyz run tp @e[tag=portaldoorera_setup,tag=door2,sort=nearest,limit=1] @p

execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s at @p[tag=portaldoor_2_setup] run tp @s ^ ^ ^6 0 0

execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s if entity @p[tag=N,tag=portaldoor_2_setup] align xyz run tp @s ~0.5 ~2.35 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s if entity @p[tag=S,tag=portaldoor_2_setup] align xyz run tp @s ~0.5 ~2.35 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s if entity @p[tag=W,tag=portaldoor_2_setup] align xyz run tp @s ~0.5 ~2.35 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s if entity @p[tag=E,tag=portaldoor_2_setup] align xyz run tp @s ~0.5 ~2.35 ~0.5 90 0


execute as @e[type=minecraft:armor_stand,tag=portaldoor_setup_2] at @s run tp @s ^0.5 ^-1.58 ^


execute as @e[type=minecraft:armor_stand,tag=doorR,tag=portaldoorside_setup_2] at @e[tag=N,tag=portaldoor_setup_2] run tp @s ~ ~ ~ 90 0
execute as @e[type=minecraft:armor_stand,tag=doorL,tag=portaldoorside_setup_2] at @e[tag=N,tag=portaldoor_setup_2] run tp @s ~ ~ ~ -90 0
execute as @e[type=minecraft:armor_stand,tag=doorR,tag=portaldoorside_setup_2] at @e[tag=S,tag=portaldoor_setup_2] run tp @s ~ ~ ~ -90 0
execute as @e[type=minecraft:armor_stand,tag=doorL,tag=portaldoorside_setup_2] at @e[tag=S,tag=portaldoor_setup_2] run tp @s ~ ~ ~ 90 0
execute as @e[type=minecraft:armor_stand,tag=doorR,tag=portaldoorside_setup_2] at @e[tag=W,tag=portaldoor_setup_2] run tp @s ~ ~ ~ 0 0
execute as @e[type=minecraft:armor_stand,tag=doorL,tag=portaldoorside_setup_2] at @e[tag=W,tag=portaldoor_setup_2] run tp @s ~ ~ ~ -180 0
execute as @e[type=minecraft:armor_stand,tag=doorR,tag=portaldoorside_setup_2] at @e[tag=E,tag=portaldoor_setup_2] run tp @s ~ ~ ~ -180 0
execute as @e[type=minecraft:armor_stand,tag=doorL,tag=portaldoorside_setup_2] at @e[tag=E,tag=portaldoor_setup_2] run tp @s ~ ~ ~ 0 0

execute as @e[type=minecraft:armor_stand,tag=doorR,tag=portaldoorside_setup_2] at @s run tp @s ^ ^-0.023 ^-0.535
execute as @e[type=minecraft:armor_stand,tag=doorL,tag=portaldoorside_setup_2] at @s run tp @s ^ ^-0.023 ^-0.535





execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}}] run tag @e[tag=portaldoor_setup_2] add portaldoor_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p"]}}}}] run tag @e[tag=portaldoorside_setup_2] add portaldoorside_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n"]}}}}] run tag @e[tag=portaldoor_setup_2] add portaldoor_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n"]}}}}] run tag @e[tag=portaldoorside_setup_2] add portaldoorside_set_2

execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p_overgrown"]}}}}] run tag @e[tag=portaldoor_setup_2,tag=overgrown] add portaldoor_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_p_overgrown"]}}}}] run tag @e[tag=portaldoorside_setup_2,tag=overgrown] add portaldoorside_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n_overgrown"]}}}}] run tag @e[tag=portaldoor_setup_2,tag=overgrown] add portaldoor_set_2
execute as @a[tag=portaldoor_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portaldoor_tool_2_n_overgrown"]}}}}] run tag @e[tag=portaldoorside_setup_2,tag=overgrown] add portaldoorside_set_2


execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!doorR,tag=!doorL] run scoreboard players set @s animationtime_doorR 1478
execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=!doorR,tag=!doorL] run scoreboard players set @s animationtime_doorL 1470

#execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=useless] at @s run setblock ~ ~ ~ stone
execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=useless,tag=!doorR,tag=!doorL] at @s run fill ^-0.5 ^2 ^ ^0.5 ^1 ^ minecraft:barrier

execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2,tag=useless,tag=!doorR,tag=!doorL] at @s run fill ^-1.5 ^-1 ^ ^2 ^-1 ^ minecraft:granite

execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2] run tag @s remove useless

execute as @e[type=minecraft:armor_stand,tag=portaldoor_set_2] run tag @s remove portaldoor_setup_2
execute as @e[type=minecraft:armor_stand,tag=portaldoorside_set_2] run tag @s remove portaldoorside_setup_2



