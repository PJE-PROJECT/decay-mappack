
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.0 with minecraft:air
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.1 with minecraft:air
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.2 with minecraft:air
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.3 with minecraft:air
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.4 with minecraft:air
item replace entity @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.5 with minecraft:air

tellraw @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1","cmd_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"DECORATIONS"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["1","cmd_tool"]}]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2","cmd_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"blue","text":"GAME MECHANICS"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["2","cmd_tool"]}]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3","cmd_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"gold","text":"ELEVATOR MODELS"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["3","cmd_tool"]}]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4","cmd_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"red","text":"OBJMC MODELS"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["4","cmd_tool"]}]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5","cmd_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='{"color":"green","text":"OVERLAYS"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["5","cmd_tool"]}]
give @a[gamemode=creative,tag=cmd_view,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool"]}]




# CENTRAL VIEWER
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] at @s unless entity @e[tag=cmd_viewer_setup,tag=1] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15},item:{id:"minecraft:netherite_hoe",count:1},Tags:["cmd_viewer_setup","1","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] at @s unless entity @e[tag=cmd_viewer_setup,tag=2] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15},item:{id:"minecraft:netherite_shovel",count:1},Tags:["cmd_viewer_setup","2","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] at @s unless entity @e[tag=cmd_viewer_setup,tag=3] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15},item:{id:"minecraft:netherite_axe",count:1},Tags:["cmd_viewer_setup","3","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] at @s unless entity @e[tag=cmd_viewer_setup,tag=4] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15},item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{custom_color:0}}},Tags:["cmd_viewer_setup","4","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] at @s unless entity @e[tag=cmd_viewer_setup,tag=5] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15},item:{id:"minecraft:netherite_pickaxe",count:1},Tags:["cmd_viewer_setup","5","useless"],teleport_duration:1,item_display:"fixed"}



#PREV AND NEXT
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] at @s unless entity @e[tag=cmd_viewer_prev1] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:0,block:0},item:{id:"minecraft:netherite_hoe",count:1},Tags:["cmd_viewer_prev1","cmd_viewer_helper","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] at @s unless entity @e[tag=cmd_viewer_prev2] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:1,block:0},item:{id:"minecraft:netherite_hoe",count:1},Tags:["cmd_viewer_prev2","cmd_viewer_helper","useless"],teleport_duration:1,item_display:"fixed"}

execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] at @s unless entity @e[tag=cmd_viewer_next1] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:0,block:0},item:{id:"minecraft:netherite_hoe",count:1},Tags:["cmd_viewer_next1","cmd_viewer_helper","useless"],teleport_duration:1,item_display:"fixed"}
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] at @s unless entity @e[tag=cmd_viewer_next2] run summon minecraft:item_display ~ ~ ~ {brightness:{sky:0,block:0},item:{id:"minecraft:netherite_hoe",count:1},Tags:["cmd_viewer_next2","cmd_viewer_helper","useless"],teleport_duration:1,item_display:"fixed"}



execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] if entity @e[tag=cmd_viewer_setup,tag=!1] run kill @e[tag=cmd_viewer_setup,tag=!1]
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] if entity @e[tag=cmd_viewer_setup,tag=!2] run kill @e[tag=cmd_viewer_setup,tag=!2]
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] if entity @e[tag=cmd_viewer_setup,tag=!3] run kill @e[tag=cmd_viewer_setup,tag=!3]
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] if entity @e[tag=cmd_viewer_setup,tag=!4] run kill @e[tag=cmd_viewer_setup,tag=!4]
execute as @a[tag=cmd_view,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] if entity @e[tag=cmd_viewer_setup,tag=!4] run kill @e[tag=cmd_viewer_setup,tag=!5]
execute as @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] run tp @s @p[tag=cmd_view]
execute as @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] at @p[tag=cmd_view] run tp @s ^ ^2.5 ^6.5 ~180 0


execute if entity @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] at @p[tag=cmd_view] run tp @e[tag=cmd_viewer_prev1] ^14 ^2.5 ^6.5 ~180 0
execute if entity @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] at @p[tag=cmd_view] run tp @e[tag=cmd_viewer_prev2] ^7 ^2.5 ^6.5 ~180 0

execute if entity @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] at @p[tag=cmd_view] run tp @e[tag=cmd_viewer_next1] ^-7 ^2.5 ^6.5 ~180 0
execute if entity @e[type=minecraft:item_display,tag=cmd_viewer_setup,tag=!cmd_viewer_setup_set] at @p[tag=cmd_view] run tp @e[tag=cmd_viewer_next2] ^-14 ^2.5 ^6.5 ~180 0




execute as @a[tag=cmd_view,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=cmd_view,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cmd_tool"]}}}}] run tag @e[tag=cmd_viewer_setup] add cmd_viewer_setup_set

execute if score cmdvhoe main_score matches ..0 run scoreboard players set cmdvhoe main_score 1
execute if score cmdvshovel main_score matches ..0 run scoreboard players set cmdvshovel main_score 1
execute if score cmdvaxe main_score matches ..0 run scoreboard players set cmdvaxe main_score 1
execute if score cmdvpotion main_score matches ..0 run scoreboard players set cmdvpotion main_score 1
execute if score cmdvpickaxe main_score matches ..0 run scoreboard players set cmdvpickaxe main_score 1


execute as @a[tag=cmd_view] run function mapmaker:cmd_view/menu