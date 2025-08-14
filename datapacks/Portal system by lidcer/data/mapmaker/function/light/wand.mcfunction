
item replace entity @a[gamemode=creative,tag=light_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.0 with minecraft:air
item replace entity @a[gamemode=creative,tag=light_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] container.1 with minecraft:air
tellraw @a[gamemode=creative,tag=light_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

give @a[gamemode=creative,tag=light_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{light:1,Tags:["light_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=22,minecraft:custom_name='{"bold":true,"color":"gold","text":"LIGHT TOOL"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={4x4:1,light:1,Tags:["1","light_tool"]}]
give @a[gamemode=creative,tag=light_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool"]}]

function mapmaker:light/menu
execute as @a[limit=1,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["light_tool"]}}}}] run function light:start
execute as @a[limit=1,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}}] run kill @e[type=interaction,tag=light.click]