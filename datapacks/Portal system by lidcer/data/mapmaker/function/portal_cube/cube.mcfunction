
clear @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
clear @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cube_tool","cube_tool1"]}]
give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cube_tool","cube_tool2"]}]
give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool3"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cube_tool","cube_tool3"]}]
give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool4"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cube_tool","cube_tool4"]}]
give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool5"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cube_tool","cube_tool5"]}]

give @a[gamemode=creative,tag=cube_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}]

execute at @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool1"]}}}}] unless entity @e[type=item_display,tag=cube_spawn1,tag=useless,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["cube_spawn","cube_spawn1","useless"],teleport_duration:1,item_display:"fixed"}
execute at @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool2"]}}}}] unless entity @e[type=item_display,tag=cube_spawn2,tag=useless,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["cube_spawn","cube_spawn2","useless"],teleport_duration:1,item_display:"fixed"}
execute at @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool3"]}}}}] unless entity @e[type=item_display,tag=cube_spawn3,tag=useless,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["cube_spawn","cube_spawn3","useless"],teleport_duration:1,item_display:"fixed"}
execute at @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool4"]}}}}] unless entity @e[type=item_display,tag=cube_spawn4,tag=useless,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["cube_spawn","cube_spawn4","useless"],teleport_duration:1,item_display:"fixed"}
execute at @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool5"]}}}}] unless entity @e[type=item_display,tag=cube_spawn5,tag=useless,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["cube_spawn","cube_spawn5","useless"],teleport_duration:1,item_display:"fixed"}




execute as @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool1"]}}}}] if entity @e[tag=useless,tag=!cube_spawn1] run kill @e[tag=useless,tag=cube_spawn]
execute as @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool2"]}}}}] if entity @e[tag=useless,tag=!cube_spawn2] run kill @e[tag=useless,tag=cube_spawn]
execute as @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool3"]}}}}] if entity @e[tag=useless,tag=!cube_spawn3] run kill @e[tag=useless,tag=cube_spawn]
execute as @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool4"]}}}}] if entity @e[tag=useless,tag=!cube_spawn4] run kill @e[tag=useless,tag=cube_spawn]
execute as @a[tag=cube_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool","cube_tool5"]}}}}] if entity @e[tag=useless,tag=!cube_spawn5] run kill @e[tag=useless,tag=cube_spawn]


execute as @e[type=minecraft:item_display,tag=cube_spawn,tag=useless] run tp @s @p[tag=cube_setup]
execute as @e[type=minecraft:item_display,tag=cube_spawn,tag=useless] at @p[tag=cube_setup] run tp @s ^ ^2 ^2 ~ 0
execute as @e[type=minecraft:item_display,tag=cube_spawn,tag=useless] at @s align y run tp @s ~ ~0.2 ~




## MENU
tellraw @a[tag=cube_setup,limit=1] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[tag=cube_spawn1,tag=useless,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"CURRENT TAG: ","type":"text"},{"text":" 1 ","color":"white","bold":true,"italic":true,"type":"text"}]
execute if entity @e[tag=cube_spawn2,tag=useless,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"CURRENT TAG: ","type":"text"},{"text":" 2 ","color":"white","bold":true,"italic":true,"type":"text"}]
execute if entity @e[tag=cube_spawn3,tag=useless,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"CURRENT TAG: ","type":"text"},{"text":" 3 ","color":"white","bold":true,"italic":true,"type":"text"}]
execute if entity @e[tag=cube_spawn4,tag=useless,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"CURRENT TAG: ","type":"text"},{"text":" 4 ","color":"white","bold":true,"italic":true,"type":"text"}]
execute if entity @e[tag=cube_spawn5,tag=useless,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"CURRENT TAG: ","type":"text"},{"text":" 5 ","color":"white","bold":true,"italic":true,"type":"text"}]
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
execute if score mapmaker.cube.type buffer matches 1 run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"TYPE: ","type":"text"},{"text":"[STANDART] ","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add mapmaker.cube.type buffer 1"},"type":"text"}]
execute if score mapmaker.cube.type buffer matches 2 run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"TYPE: ","type":"text"},{"text":"[COMPANION] ","color":"light_purple","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add mapmaker.cube.type buffer 1"},"type":"text"}]
execute if score mapmaker.cube.type buffer matches 3 run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"TYPE: ","type":"text"},{"text":"[LASER] ","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add mapmaker.cube.type buffer 1"},"type":"text"}]
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[tag=cube_spawn,tag=useless,tag=!rusted,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"RUSTED: ","italic":true,"type":"text"},{"text":"[FALSE] ","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[tag=cube_spawn,tag=useless,tag=!rusted] add rusted"},"type":"text"}]
execute if entity @e[tag=cube_spawn,tag=useless,tag=rusted,limit=1] run tellraw @a[tag=cube_setup,limit=1] ["    ",{"text":"RUSTED: ","italic":true,"type":"text"},{"text":"[TRUE] ","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[tag=cube_spawn,tag=useless,tag=rusted] remove rusted"},"type":"text"}]
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=cube_setup,limit=1] {"text":"","type":"text"}
execute if score mapmaker.cube.type buffer matches 4.. run scoreboard players set mapmaker.cube.type buffer 1
execute if score mapmaker.cube.type buffer matches 1 run item replace entity @e[tag=cube_spawn,tag=useless,tag=!rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=6,minecraft:potion_contents={custom_color:0}]
execute if score mapmaker.cube.type buffer matches 1 run item replace entity @e[tag=cube_spawn,tag=useless,tag=rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=10,minecraft:potion_contents={custom_color:0}]
execute if score mapmaker.cube.type buffer matches 2 run item replace entity @e[tag=cube_spawn,tag=useless,tag=!rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=8,minecraft:potion_contents={custom_color:0}]
execute if score mapmaker.cube.type buffer matches 2 run item replace entity @e[tag=cube_spawn,tag=useless,tag=rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=19,minecraft:potion_contents={custom_color:0}]
execute if score mapmaker.cube.type buffer matches 3 run item replace entity @e[tag=cube_spawn,tag=useless,tag=!rusted,limit=1] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=15]
execute if score mapmaker.cube.type buffer matches 3 run item replace entity @e[tag=cube_spawn,tag=useless,tag=rusted,limit=1] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=16]
execute as @a[tag=cube_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=cube_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool"]}}}}] if score mapmaker.cube.type buffer matches 1 run tag @e[tag=cube_spawn,tag=useless] add cube_spawn_standart
execute as @a[tag=cube_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool"]}}}}] if score mapmaker.cube.type buffer matches 2 run tag @e[tag=cube_spawn,tag=useless] add cube_spawn_companion
execute as @a[tag=cube_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool"]}}}}] if score mapmaker.cube.type buffer matches 3 run tag @e[tag=cube_spawn,tag=useless] add cube_spawn_laser
execute as @a[tag=cube_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cube_tool"]}}}}] run tag @e[tag=cube_spawn,tag=useless] remove useless
item replace entity @e[tag=cube_spawn,tag=!useless] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=116]