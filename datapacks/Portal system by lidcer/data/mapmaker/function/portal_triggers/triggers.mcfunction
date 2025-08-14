


item replace entity @e[type=minecraft:item_display,tag=custom_trigger] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=141]

##VISUAL NUBMER
execute at @e[type=minecraft:item_display,tag=custom_trigger,tag=!useless] unless entity @e[type=minecraft:text_display,distance=..0.9,tag=trignumdis,limit=1] run summon minecraft:text_display ~ ~ ~ {Tags:["trignumdis"],see_through:1b}
execute at @e[type=minecraft:item_display,tag=custom_trigger,tag=!useless,tag=!looped] run data modify entity @e[type=minecraft:text_display,distance=..2,sort=nearest,limit=1] text set value '[{"score":{"name":"@e[type=minecraft:item_display,distance=..1,tag=custom_trigger,sort=nearest,limit=1]","objective":"custom_trigger"},"type":"score"}]'
execute at @e[type=minecraft:item_display,tag=custom_trigger,tag=looped,tag=!useless] run data modify entity @e[type=minecraft:text_display,distance=..2,sort=nearest,limit=1] text set value '[{"score":{"name":"@e[type=minecraft:item_display,distance=..1,tag=custom_trigger,sort=nearest,limit=1]","objective":"custom_trigger"},"type":"score"},"\\n",{"color":"yellow","text":"(looped)","type":"text"}]'

#{text:'["","z\\n",{"color":"yellow","text":"v"}]'}



execute as @e[type=minecraft:text_display,tag=trignumdis] at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:text_display,tag=trignumdis] run data merge entity @s {transformation:{translation:[0.0f,0.7f,0.0f],scale:[1.5f,1.5f,1.5f]},see_through:1b}
execute as @e[type=minecraft:text_display,tag=trignumdis] at @s unless entity @e[distance=..0.9,tag=custom_trigger,limit=1] run kill @s




clear @a[gamemode=creative,tag=trigger_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
tellraw @a[gamemode=creative,tag=trigger_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


tellraw @a[tag=trigger_setup,limit=1] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

tellraw @a[tag=trigger_setup,limit=1] ["    ",{"text":"CUSTOM TRIGGER NUMBER: ","italic":true,"color":"aqua","type":"text"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players remove new custom_trigger 1"},"type":"text"},{"score":{"name":"new","objective":"custom_trigger"},"type":"score"},{"text":" [+]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players add new custom_trigger 1"},"type":"text"}]
tellraw @a[tag=trigger_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=trigger_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[tag=custom_trigger,tag=useless,tag=!looped,limit=1] run tellraw @a[tag=trigger_setup,limit=1] ["    ",{"text":"TRIGGER TYPE: ","italic":true,"type":"text"},{"text":"[ACTIVATES ONCE] ","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[tag=custom_trigger,tag=useless,tag=!looped] add looped"},"hoverEvent":{"action":"show_text","contents":"Trigger will run once"},"type":"text"}]
execute if entity @e[tag=custom_trigger,tag=useless,tag=looped,limit=1] run tellraw @a[tag=trigger_setup,limit=1] ["    ",{"text":"TRIGGER TYPE: ","italic":true,"type":"text"},{"text":"[LOOPED] ","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[tag=custom_trigger,tag=useless,tag=looped] remove looped"},"hoverEvent":{"action":"show_text","contents":"Trigger will execute commands in a loop"},"type":"text"}]

tellraw @a[tag=trigger_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=trigger_setup,limit=1] {"text":"","type":"text"}

give @a[gamemode=creative,tag=trigger_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"CUSTOM TRIGGER"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["custom_trigger_tool"]}]
give @a[gamemode=creative,tag=trigger_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"blue","text":"REMOVER"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["remover"]}]
give @a[gamemode=creative,tag=trigger_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


execute as @a[tag=trigger_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] at @s unless entity @e[tag=custom_trigger,tag=useless] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":141},count:1},Tags:["custom_trigger","useless"],teleport_duration:1,brightness:{sky:15,block:15}}
execute as @e[type=minecraft:item_display,tag=custom_trigger,tag=useless] run data merge entity @s {transformation:{scale:[4.0f,4.0f,4.0f]}}

execute as @a[tag=trigger_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] at @s unless entity @e[tag=trigger_remover] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":115,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["trigger_remover","useless"],teleport_duration:1,Glowing:1b}
team join red @e[tag=trigger_remover]


execute as @a[tag=trigger_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] run kill @e[tag=useless,tag=!custom_trigger]

execute as @a[tag=trigger_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] run kill @e[tag=useless,tag=!trigger_remover]




execute as @e[type=minecraft:item_display,tag=custom_trigger,tag=useless] run tp @s @p[tag=trigger_setup]
execute as @e[type=minecraft:item_display,tag=custom_trigger,tag=useless] at @p[tag=trigger_setup] run tp @s ^ ^4.5 ^4.5 0 0
execute as @e[type=minecraft:item_display,tag=custom_trigger,tag=useless] at @s align xyz run tp @s ~ ~ ~

execute as @e[type=minecraft:item_display,tag=trigger_remover] run tp @s @p[tag=trigger_setup]
execute as @e[type=minecraft:item_display,tag=trigger_remover] at @p[tag=trigger_setup] run tp @s ^ ^1 ^6.5 0 0
execute as @e[type=minecraft:item_display,tag=trigger_remover] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5


execute as @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] at @e[type=minecraft:item_display,tag=custom_trigger,tag=useless,tag=!looped,limit=1] run summon minecraft:interaction ~ ~-2 ~ {width:4,height:4,Tags:["custom_trigger","new"]}
execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] at @e[type=minecraft:item_display,tag=custom_trigger,tag=looped,tag=useless,limit=1] run summon minecraft:interaction ~ ~-2 ~ {width:4,height:4,Tags:["custom_trigger","new","looped"]}


execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] run scoreboard players operation @e[type=minecraft:item_display,tag=custom_trigger,tag=useless] custom_trigger = new custom_trigger
execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] run scoreboard players operation @e[type=minecraft:interaction,tag=custom_trigger,tag=new] custom_trigger = new custom_trigger
execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] run tag @e[type=minecraft:item_display,tag=custom_trigger,tag=useless,limit=1] remove useless
execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["custom_trigger_tool"]}}}}] run tag @e[type=minecraft:interaction,tag=custom_trigger,tag=new,limit=1] remove new



execute if entity @a[tag=trigger_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] positioned as @e[type=minecraft:interaction,tag=custom_trigger] positioned ~-2 ~ ~-2 if entity @e[dx=3,dy=3,dz=3,tag=trigger_remover] positioned ~2 ~ ~2 run kill @e[distance=..2,tag=custom_trigger,sort=nearest,limit=2]
