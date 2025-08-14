
clear @a[gamemode=creative,tag=vertdoor_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=vertdoor_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=vertdoor_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","clean"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"VERTDOOR"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["vertdoor_tool","clean"]}]
give @a[gamemode=creative,tag=vertdoor_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","dirty"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"VERTDOOR"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["vertdoor_tool","dirty"]}]

give @a[gamemode=creative,tag=vertdoor_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


execute as @a[tag=vertdoor_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","clean"]}}}}] at @s unless entity @e[tag=vertdoor,tag=useless,tag=clean] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":25,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["vertdoor","useless","clean"],teleport_duration:1,width:2,height:-2}
execute as @a[tag=vertdoor_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","dirty"]}}}}] at @s unless entity @e[tag=vertdoor,tag=useless,tag=dirty] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":31,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["vertdoor","useless","dirty"],teleport_duration:1,width:2,height:-2}



execute if entity @a[tag=vertdoor_setup,limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","clean"]}}}}] run kill @e[tag=vertdoor,tag=useless,tag=dirty,limit=1]
execute if entity @a[tag=vertdoor_setup,limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool","dirty"]}}}}] run kill @e[tag=vertdoor,tag=useless,tag=clean,limit=1]


tellraw @a[tag=vertdoor_setup,limit=1] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","type":"text"}
tellraw @a[tag=vertdoor_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[type=minecraft:item_display,tag=vertdoor,tag=useless,tag=!auto] run tellraw @a[tag=vertdoor_setup,limit=1] ["    ",{"text":"OPENING TYPE: ","italic":true,"type":"text"},{"text":"[INDICATORS NEEDED] ","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[tag=vertdoor,tag=useless,tag=!auto] add auto"},"hoverEvent":{"action":"show_text","contents":"Vertical door can be activated by indicators"},"type":"text"}]
execute if entity @e[type=minecraft:item_display,tag=vertdoor,tag=useless,tag=auto] run tellraw @a[tag=vertdoor_setup,limit=1] ["    ",{"text":"OPENING TYPE: ","italic":true,"type":"text"},{"text":"[AUTOMATIC] ","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[tag=vertdoor,tag=useless,tag=auto] remove auto"},"hoverEvent":{"action":"show_text","contents":"Vertical door opens automatically"},"type":"text"}]
tellraw @a[tag=vertdoor_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=vertdoor_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[type=minecraft:item_display,tag=vertdoor,tag=useless,tag=!broken] run tellraw @a[tag=vertdoor_setup,limit=1] ["    ",{"text":"BROKEN: ","italic":true,"type":"text"},{"text":"[FALSE] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @e[tag=vertdoor,tag=useless,tag=!broken] add broken"},"hoverEvent":{"action":"show_text","contents":"Vertical door will open normally"},"type":"text"}]
execute if entity @e[type=minecraft:item_display,tag=vertdoor,tag=useless,tag=broken] run tellraw @a[tag=vertdoor_setup,limit=1] ["    ",{"text":"BROKEN: ","italic":true,"type":"text"},{"text":"[TRUE] ","color":"red","clickEvent":{"action":"run_command","value":"/tag @e[tag=vertdoor,tag=useless,tag=broken] remove broken"},"hoverEvent":{"action":"show_text","contents":"Vertical door will break when opened"},"type":"text"}]
tellraw @a[tag=vertdoor_setup,limit=1] {"text":"\n\n\n","type":"text"}


execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] run tp @s @p[tag=vertdoor_setup]
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @p[tag=vertdoor_setup,tag=S] run tp @s ^ ^2.5 ^2.5 180 0
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @p[tag=vertdoor_setup,tag=N] run tp @s ^ ^2.5 ^2.5 0 0
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @p[tag=vertdoor_setup,tag=E] run tp @s ^ ^2.5 ^2.5 90 0
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @p[tag=vertdoor_setup,tag=W] run tp @s ^ ^2.5 ^2.5 -90 0


execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5


execute as @a[tag=vertdoor_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=vertdoor_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool"]}}}}] at @e[type=minecraft:item_display,tag=vertdoor,tag=useless,limit=1] run fill ^-1 ^ ^ ^1 ^-2 ^ minecraft:barrier

execute as @a[tag=vertdoor_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["vertdoor_tool"]}}}}] run tag @e[tag=vertdoor] remove useless