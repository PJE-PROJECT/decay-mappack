execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] store result storage 1:1 cmd int 1 run scoreboard players get cmdvhoe main_score
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] store result storage 1:1 cmd int 1 run scoreboard players get cmdvshovel main_score
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] store result storage 1:1 cmd int 1 run scoreboard players get cmdvaxe main_score
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] store result storage 1:1 cmd int 1 run scoreboard players get cmdvpotion main_score
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] store result storage 1:1 cmd int 1 run scoreboard players get cmdvpickaxe main_score

function mapmaker:cmd_view/give with storage 1:1