

execute as @a[gamemode=creative,tag=material_emancipation_grill_1_setup,scores={shiftedit=1}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Always Active","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]
execute as @a[gamemode=creative,tag=material_emancipation_grill_1_setup,scores={shiftedit=0}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Needs Redstone","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]
execute as @a[gamemode=creative,tag=material_emancipation_grill_2_setup,scores={shiftedit=1}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Always Active","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]
execute as @a[gamemode=creative,tag=material_emancipation_grill_2_setup,scores={shiftedit=0}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Needs Redstone","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]

clear @a[gamemode=creative,tag=material_emancipation_grill_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
clear @a[gamemode=creative,tag=material_emancipation_grill_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=material_emancipation_grill_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @a[gamemode=creative,tag=material_emancipation_grill_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
 



give @a[gamemode=creative,tag=material_emancipation_grill_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Material Emancipation Grill - 1"',minecraft:lore=['"Material Emancipation Grill - 1"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["material_emancipation_tool_1"]}] 1
give @a[gamemode=creative,tag=material_emancipation_grill_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Material Emancipation Grill - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["material_emancipation_tool_2"]}] 1
give @a[gamemode=creative,tag=material_emancipation_grill_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1
give @a[gamemode=creative,tag=material_emancipation_grill_1_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1


execute as @a[tag=material_emancipation_grill_1_setup,scores={shiftedit=0}] at @s unless entity @e[tag=material_emancipation_grill_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":23,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_base_setup","useless","meg2","rusted"]}
execute as @a[tag=material_emancipation_grill_1_setup,scores={shiftedit=1}] at @s unless entity @e[tag=material_emancipation_grill_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":23,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_base_setup","useless","meg2","rusted","AlwaysActive"]}

execute as @a[tag=material_emancipation_grill_1_setup,scores={shiftedit=0}] at @s unless entity @e[tag=material_emancipation_grill_base_setup,tag=!AlwaysActive] run kill @e[tag=material_emancipation_grill_base_setup]
execute as @a[tag=material_emancipation_grill_1_setup,scores={shiftedit=1}] at @s unless entity @e[tag=material_emancipation_grill_base_setup,tag=AlwaysActive] run kill @e[tag=material_emancipation_grill_base_setup]


execute as @a[tag=material_emancipation_grill_2_setup,scores={shiftedit=0}] at @s unless entity @e[tag=material_emancipation_grill_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1519,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_base_setup","useless","meg2"]}
execute as @a[tag=material_emancipation_grill_2_setup,scores={shiftedit=1}] at @s unless entity @e[tag=material_emancipation_grill_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1519,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_base_setup","useless","meg2","AlwaysActive"]}

execute as @a[tag=material_emancipation_grill_2_setup,scores={shiftedit=0}] at @s unless entity @e[tag=material_emancipation_grill_base_setup,tag=!AlwaysActive] run kill @e[tag=material_emancipation_grill_base_setup]
execute as @a[tag=material_emancipation_grill_2_setup,scores={shiftedit=1}] at @s unless entity @e[tag=material_emancipation_grill_base_setup,tag=AlwaysActive] run kill @e[tag=material_emancipation_grill_base_setup]






execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_1_setup,tag=N] run tp @s ^1 ^ ^3 180 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_1_setup,tag=S] run tp @s ^1 ^ ^3 0 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_1_setup,tag=W] run tp @s ^1 ^ ^3 90 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_1_setup,tag=E] run tp @s ^1 ^ ^3 -90 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_2_setup,tag=N] run tp @s ^1 ^ ^3 -180 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_2_setup,tag=S] run tp @s ^1 ^ ^3 0 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_2_setup,tag=W] run tp @s ^1 ^ ^3 90 0
execute as @e[tag=material_emancipation_grill_base_setup] at @s at @p[tag=material_emancipation_grill_2_setup,tag=E] run tp @s ^1 ^ ^3 -90 0


execute as @e[tag=material_emancipation_grill_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=material_emancipation_grill_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=material_emancipation_grill_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=material_emancipation_grill_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5











execute as @a[tag=material_emancipation_grill_1_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_1"]}}}}] run tag @e[tag=material_emancipation_grill_base_setup,tag=meg2] add material_emancipation_grill_base_set
execute as @a[tag=material_emancipation_grill_1_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_1"]}}}}] at @s if entity @e[tag=material_emancipation_grill_base_set,tag=meg2] run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=material_emancipation_grill_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_2"]}}}}] run tag @e[tag=material_emancipation_grill_base_setup] add material_emancipation_grill_base_set
execute as @a[tag=material_emancipation_grill_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["material_emancipation_tool_2"]}}}}] at @s if entity @e[tag=material_emancipation_grill_base_set] run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2


execute as @e[tag=material_emancipation_grill_base_set,tag=meg2,tag=rusted] at @s unless entity @e[distance=..0.2,tag=material_emancipation_grill_door] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":21,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_door_set","close","rusted"]}
execute as @e[tag=material_emancipation_grill_base_set,tag=meg2,tag=!rusted] at @s unless entity @e[distance=..0.2,tag=material_emancipation_grill_door] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1516,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["material_emancipation_grill_door_set","close"]}
execute as @e[tag=material_emancipation_grill_base_set,tag=meg2] at @s run tp @e[tag=material_emancipation_grill_door_set] @s


execute as @e[tag=material_emancipation_grill_door_set] run tag @s add material_emancipation_grill_door
execute as @e[tag=material_emancipation_grill_door_set] run tag @s remove material_emancipation_grill_door_set



execute as @e[tag=material_emancipation_grill_base_set,tag=meg2] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=material_emancipation_grill_base_set] run tag @s add material_emancipation_grill_base
execute as @e[tag=material_emancipation_grill_base] run tag @s remove useless
execute as @e[tag=material_emancipation_grill_base] run tag @s remove material_emancipation_grill_base_setup
execute as @e[tag=material_emancipation_grill_base_set] run tag @s remove material_emancipation_grill_base_set

function portal:others/tag
execute at @e[tag=material_emancipation_grill_base,tag=AlwaysActive,tag=!active] run tag @e[type=minecraft:armor_stand,distance=..0.5,tag=material_emancipation_grill_door,tag=!active,limit=1] add AlwaysActive

#execute at @e[tag=material_emancipation_grill_base,tag=AlwaysActive,tag=!active] run tag @e[type=minecraft:armor_stand,tag=material_emancipation_grill_door,distance=..0.5,limit=1,tag=!active] add active

execute at @e[tag=material_emancipation_grill_base,tag=AlwaysActive] as @e[type=minecraft:armor_stand,distance=..0.5,tag=material_emancipation_grill_door,tag=AlwaysActive,tag=!active,limit=1] at @s run function mapmaker:portal_material_emacipation_grill/raycast

#execute at @e[tag=material_emancipation_grill_base,tag=AlwaysActive,tag=!active] as @e[type=minecraft:armor_stand,tag=material_emancipation_grill_door,distance=..0.5,limit=1,tag=!active] at @s run function mapmaker:portal_material_emacipation_grill/raycast
#tag @e[tag=material_emancipation_grill_base,tag=AlwaysActive,tag=!active] add active

