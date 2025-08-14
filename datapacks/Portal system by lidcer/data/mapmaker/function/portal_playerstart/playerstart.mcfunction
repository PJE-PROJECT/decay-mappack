

item replace entity @e[type=minecraft:item_display,tag=playerstart] container.0 with minecraft:potion[minecraft:custom_model_data=18,minecraft:potion_contents={custom_color:0}]
item replace entity @e[type=minecraft:item_display,tag=trigger_nextmap] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=141]


execute at @e[type=minecraft:item_display,tag=playerstart,tag=!useless] unless entity @e[type=minecraft:text_display,distance=..0.9,tag=mapnumdis,limit=1] run summon minecraft:text_display ~ ~ ~ {Tags:["mapnumdis"],see_through:1b}
execute at @e[type=minecraft:item_display,tag=playerstart,tag=!useless] run data modify entity @e[type=minecraft:text_display,distance=..2,sort=nearest,limit=1] text set value '[{"score":{"name":"@e[distance=..1,tag=playerstart,sort=nearest,limit=1]","objective":"map"},"type":"score"}]'
execute as @e[type=minecraft:text_display,tag=mapnumdis] at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:text_display,tag=mapnumdis] run data merge entity @s {transformation:{translation:[0.0f,0.7f,0.0f],scale:[1.5f,1.5f,1.5f]},see_through:1b}
execute as @e[type=minecraft:text_display,tag=mapnumdis] at @s unless entity @e[distance=..0.9,tag=playerstart,limit=1] run kill @s


execute as @e[type=minecraft:item_display,tag=trigger_map_setup] run data merge entity @s {transformation:{scale:[4.0f,4.0f,4.0f]}}



execute if score setmap config matches ..1 run scoreboard players set setmap config 1
clear @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]
tellraw @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


tellraw @a[tag=playerstart_setup,limit=1] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

tellraw @a[tag=playerstart_setup,limit=1] ["    ",{"text":"MAP NUMBER: ","italic":true,"type":"text"},{"text":"[-] ","clickEvent":{"action":"run_command","value":"/scoreboard players remove setmap config 1"},"type":"text"},{"score":{"name":"setmap","objective":"config"},"type":"score"},{"text":" [+]","clickEvent":{"action":"run_command","value":"/scoreboard players add setmap config 1"},"type":"text"}]
tellraw @a[tag=playerstart_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=playerstart_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[tag=playerstart_setup,tag=useless,tag=wakeup_anim,limit=1] run tellraw @a[tag=playerstart_setup,limit=1] ["    ",{"text":"WAKEUP ANIMATION: ","italic":true,"type":"text"},{"text":"[TRUE] ","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[tag=playerstart_setup,tag=useless,tag=wakeup_anim] remove wakeup_anim"},"type":"text"}]
execute if entity @e[tag=playerstart_setup,tag=useless,tag=!wakeup_anim,limit=1] run tellraw @a[tag=playerstart_setup,limit=1] ["    ",{"text":"WAKEUP ANIMATION: ","italic":true,"type":"text"},{"text":"[FALSE] ","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[tag=playerstart_setup,tag=useless,tag=!wakeup_anim] add wakeup_anim"},"type":"text"}]
tellraw @a[tag=playerstart_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=playerstart_setup,limit=1] {"text":"","type":"text"}

give @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"MAP PLAYER START"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["start_tool"]}]
give @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"NEXT MAP TRIGGER"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["trigger_tool"]}]

give @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"blue","text":"REMOVER"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["remover"]}]

give @a[gamemode=creative,tag=playerstart_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] at @s unless entity @e[tag=playerstart_setup,tag=useless] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":18,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["playerstart","playerstart_setup","useless"],teleport_duration:1,brightness:{sky:15,block:15}}
execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] at @s unless entity @e[tag=trigger_map_setup,tag=useless] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":141},count:1},Tags:["trigger_nextmap","trigger_map_setup","useless"],teleport_duration:1,brightness:{sky:15,block:15}}

execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] at @s unless entity @e[tag=playerstart_remover] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":115,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["playerstart_remover","useless"],teleport_duration:1,Glowing:1b}
team join red @e[tag=playerstart_remover]


execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run kill @e[tag=useless,tag=!playerstart_setup]
execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] run kill @e[tag=useless,tag=!trigger_map_setup]

execute as @a[tag=playerstart_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] run kill @e[tag=useless,tag=!playerstart_remover]



execute as @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless] run tp @s @p[tag=playerstart_setup]
execute as @e[type=minecraft:item_display,tag=playerstart_setup] at @p[tag=playerstart_setup] run tp @s ^ ^2.5 ^2.5 ~180 0
#execute as @e[type=minecraft:item_display,tag=playerstart_setup] at @s align xyz run tp @s ~0.5 ~0.28 ~0.5
execute as @e[type=minecraft:item_display,tag=playerstart_setup] at @s align xyz run tp @s ~ ~0.28 ~



execute as @e[type=minecraft:item_display,tag=trigger_map_setup] run tp @s @p[tag=playerstart_setup]
execute as @e[type=minecraft:item_display,tag=trigger_map_setup] at @p[tag=playerstart_setup] run tp @s ^ ^4.5 ^4.5 0 0
execute as @e[type=minecraft:item_display,tag=trigger_map_setup] at @s align xyz run tp @s ~ ~ ~

execute as @e[type=minecraft:item_display,tag=playerstart_remover] run tp @s @p[tag=playerstart_setup]
execute as @e[type=minecraft:item_display,tag=playerstart_remover] at @p[tag=playerstart_setup] run tp @s ^ ^1 ^6.5 0 0
execute as @e[type=minecraft:item_display,tag=playerstart_remover] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5



execute as @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] as @e[type=minecraft:item_display,tag=playerstart,tag=!useless] if score @s map = setmap config run kill @s
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] as @e[type=minecraft:marker,tag=playerstartcoords] if score @s map = setmap config run kill @s

execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run scoreboard players operation @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] map = setmap config


execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] positioned 0 50 0 run summon minecraft:marker ~ ~ ~ {Tags:["playerstartcoords","new"]}
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run scoreboard players operation @e[type=minecraft:marker,tag=playerstartcoords,tag=new,limit=1] map = setmap config
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] store result entity @e[type=minecraft:marker,tag=playerstartcoords,tag=new,limit=1] data.x int 1 run data get entity @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] Pos[0]
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] store result entity @e[type=minecraft:marker,tag=playerstartcoords,tag=new,limit=1] data.y int 1 run data get entity @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] Pos[1]
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] store result entity @e[type=minecraft:marker,tag=playerstartcoords,tag=new,limit=1] data.z int 1 run data get entity @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] Pos[2]
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] store result entity @e[type=minecraft:marker,tag=playerstartcoords,tag=new,limit=1] data.rot int 1 run data get entity @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] Rotation[0]




execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run tag @e[type=minecraft:marker,tag=playerstartcoords,tag=new] remove new
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run tag @e[type=minecraft:item_display,tag=playerstart_setup,tag=useless,limit=1] remove useless
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["start_tool"]}}}}] run tag @e[type=minecraft:item_display,tag=playerstart_setup,limit=1] remove playerstart_setup



execute as @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] at @e[type=minecraft:item_display,tag=trigger_map_setup,tag=useless,limit=1] run summon minecraft:interaction ~ ~-2 ~ {width:4,height:4,Tags:["trigger_nextmap"]}
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] run tag @e[type=minecraft:item_display,tag=trigger_map_setup,tag=useless,limit=1] remove useless
execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["trigger_tool"]}}}}] run tag @e[type=minecraft:item_display,tag=trigger_map_setup,limit=1] remove trigger_map_setup


execute as @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] at @e[type=minecraft:item_display,tag=playerstart_remover] if entity @e[distance=..1.5,tag=playerstart,limit=1] run playsound minecraft:entity.turtle.egg_break ambient @s ~ ~ ~ 1 2


execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] positioned as @e[type=minecraft:interaction,tag=trigger_nextmap] positioned ~-2 ~ ~-2 if entity @e[dx=3,dy=3,dz=3,tag=playerstart_remover] positioned ~2 ~ ~2 run kill @e[distance=..2,tag=trigger_nextmap,sort=nearest,limit=2]



execute if entity @a[tag=playerstart_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["remover"]}}}}] at @e[type=minecraft:item_display,tag=playerstart_remover] run tag @e[distance=..1.5,tag=playerstart,sort=nearest,limit=1] add kill
execute as @e[type=minecraft:marker,tag=playerstartcoords] if score @s map = @e[type=minecraft:item_display,tag=playerstart,tag=kill,tag=!useless,limit=1] map run kill @s
kill @e[type=minecraft:item_display,tag=playerstart,tag=kill,limit=1]
