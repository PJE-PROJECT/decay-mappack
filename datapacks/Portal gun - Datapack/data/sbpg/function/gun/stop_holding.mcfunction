# Remove click detector, effect, boots and tag
execute as @e[tag=sbpg.click_detector] if score @s sbpg.player_id = id workspace run function sbpg:code/remove
effect clear @s minecraft:haste
item replace entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{long_fall_boots:1b}},Slot:100b}]}] armor.feet with minecraft:air
item replace entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{jumpsuit_leggings:1b}},Slot:101b}]}] armor.legs with minecraft:air
item replace entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{jumpsuit_top:1b}},Slot:102b}]}] armor.chest with minecraft:air
tag @s remove sbpg.holding_gun