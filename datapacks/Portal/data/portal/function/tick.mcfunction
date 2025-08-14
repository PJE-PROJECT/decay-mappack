# mp5

# ================

execute as @a[scores={mp5_which_hand=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] at @s run data modify storage minecraft:mp5 value set value 100

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] at @s run function portal:mp5_in_hand

# ================

scoreboard players set @a rc 0

# ================





