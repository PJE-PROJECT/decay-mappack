clear @a[gamemode=creative,tag=portalpedestal_button_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=portalpedestal_button_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

give @a[gamemode=creative,tag=portalpedestal_button_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Security Camera - 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portalpedestal_button_tool_c"]}] 1
give @a[gamemode=creative,tag=portalpedestal_button_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Portal Security Camera - 2"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["portalpedestal_button_tool_r"]}] 1



give @a[gamemode=creative,tag=portalpedestal_button_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1

execute as @a[tag=portalpedestal_button_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_setup,tag=clean] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":50},count:1}],DisabledSlots:2037535,Tags:["button_pedestal_base","new","clean","portal_pedestal_button_setup","useless","markerignore"]}
execute as @a[tag=portalpedestal_button_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_setup,tag=rusted] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":53},count:1}],DisabledSlots:2037535,Tags:["button_pedestal_base","new","rusted","portal_pedestal_button_setup","useless","markerignore"]}


execute as @a[tag=portalpedestal_button_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}}] if entity @e[tag=portal_pedestal_button_setup,tag=!clean] run kill @e[tag=portal_pedestal_button_setup,tag=!clean]
execute as @a[tag=portalpedestal_button_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}}] if entity @e[tag=portal_pedestal_button_setup,tag=!rusted] run kill @e[tag=portal_pedestal_button_setup,tag=!rusted]


title @a[tag=portalpedestal_button_setup,scores={shiftedit=0}] actionbar {"text":"SHIFT: FOREVER PRESS","bold":true,"color":"gray","type":"text"}
title @a[tag=portalpedestal_button_setup,scores={shiftedit=1}] actionbar {"text":"SHIFT: FOREVER PRESS","bold":true,"color":"green","type":"text"}


execute as @a[tag=portalpedestal_button_setup] at @s align xyz run tp @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=useless,sort=nearest,limit=1] @p

execute as @e[type=minecraft:armor_stand,tag=portal_pedestal_button_setup] at @s at @p[tag=portalpedestal_button_setup] run tp @s ^ ^ ^3 0 0
execute as @e[type=minecraft:armor_stand,tag=portal_pedestal_button_setup] at @s if entity @p[tag=N,tag=portalpedestal_button_setup] align xyz run tp @s ~0.5 ~1 ~0.5 0 0
execute as @e[type=minecraft:armor_stand,tag=portal_pedestal_button_setup] at @s if entity @p[tag=S,tag=portalpedestal_button_setup] align xyz run tp @s ~0.5 ~1 ~0.5 -180 0
execute as @e[type=minecraft:armor_stand,tag=portal_pedestal_button_setup] at @s if entity @p[tag=W,tag=portalpedestal_button_setup] align xyz run tp @s ~0.5 ~1 ~0.5 -90 0
execute as @e[type=minecraft:armor_stand,tag=portal_pedestal_button_setup] at @s if entity @p[tag=E,tag=portalpedestal_button_setup] align xyz run tp @s ~0.5 ~1 ~0.5 90 0

execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}}] run tag @e[tag=portal_pedestal_button_setup] add portal_pedestal_button_set
execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_c"]}}}}] run tag @e[tag=portal_pedestal_button_setup] remove portal_pedestal_button_setup

execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}}] run tag @e[tag=portal_pedestal_button_setup] add portal_pedestal_button_set
execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["portalpedestal_button_tool_r"]}}}}] run tag @e[tag=portal_pedestal_button_setup] remove portal_pedestal_button_setup



execute as @a[tag=portalpedestal_button_setup,scores={portalgun=1..}] run tag @e[tag=button_pedestal_base,tag=new,tag=!useless] remove new


execute if entity @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=new,tag=!useless] as @a[tag=portalpedestal_button_setup,scores={shiftedit=0}] run function mapmaker:portal_pedestal_button/menu


execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_set] if entity @a[tag=portalpedestal_button_setup,scores={shiftedit=1}] run tag @e[tag=portal_pedestal_button_set] add forever
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_set] if entity @a[tag=portalpedestal_button_setup,scores={shiftedit=1}] run tag @e[tag=portal_pedestal_button_set] remove new

execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_set] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=portal_pedestal_button_set] run tag @s remove portal_pedestal_button_set

execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=clean,tag=!useless,tag=!activated,tag=!new] at @s unless entity @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=clean] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":52},count:1}],DisabledSlots:2037535,Tags:["button_pedestal","clean"]}
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=clean,tag=!useless,tag=!activated,tag=!new] at @s unless entity @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=clean] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":142},count:1},Tags:["button_pedestal","clean","side"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=clean,tag=!useless,tag=!activated,tag=!new] at @s if entity @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=clean,limit=1] run tp @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=clean,limit=1] ^ ^ ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=clean,tag=!useless,tag=!activated,tag=!new] at @s if entity @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=clean,tag=!pressed,limit=1] facing ^ ^ ^1 run tp @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=clean,limit=1] ~ ~ ~ ~ ~




execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=rusted,tag=!useless,tag=!activated,tag=!new] at @s unless entity @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=rusted] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":55},count:1}],DisabledSlots:2037535,Tags:["button_pedestal","rusted"]}
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=rusted,tag=!useless,tag=!activated,tag=!new] at @s unless entity @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=rusted] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":143},count:1},Tags:["button_pedestal","rusted","side"],item_display:"head"}
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=rusted,tag=!useless,tag=!activated,tag=!new] at @s if entity @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=rusted,limit=1] run tp @e[type=minecraft:item_display,distance=..0.9,tag=button_pedestal,tag=side,tag=rusted,limit=1] ^ ^ ^ ~ ~
execute as @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=rusted,tag=!useless,tag=!activated,tag=!new] at @s if entity @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=rusted,tag=!pressed,limit=1] facing ^ ^ ^1 run tp @e[type=minecraft:armor_stand,distance=..0.9,tag=button_pedestal,tag=rusted,limit=1] ~ ~ ~ ~ ~