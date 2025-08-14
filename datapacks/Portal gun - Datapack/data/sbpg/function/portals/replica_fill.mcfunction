scoreboard players operation @s sbpg.player_id = id workspace
tag @s remove sbpg.replica_stand_new

# Get head
loot replace entity @s armor.head kill @a[tag=sbpg.replicate_me,sort=nearest,limit=1]

# Set custom name
tag @s add sbpg.get_skull_name
execute in the_nether run data modify block 731031 129 731031 front_text.messages[0] set value '{"nbt":"ArmorItems[3].components.\\"minecraft:profile\\".name","entity":"@e[type=minecraft:armor_stand,tag=sbpg.get_skull_name,limit=1]","source":"entity","type":"nbt"}'
tag @s remove sbpg.get_skull_name
execute in the_nether run data modify entity @s CustomName set from block 731031 129 731031 front_text.messages[0]
data modify entity @s CustomNameVisible set value 1b

# Copy equipment
data modify entity @s ArmorItems[0] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] Inventory[{Slot:100b}]
data modify entity @s ArmorItems[1] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] Inventory[{Slot:101b}]
data modify entity @s ArmorItems[2] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] Inventory[{Slot:102b}]
data modify entity @s ArmorItems[3] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] Inventory[{Slot:103b}]
data modify entity @s HandItems[0] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] SelectedItem
data modify entity @s HandItems[1] set from entity @a[tag=sbpg.replicate_me,sort=nearest,limit=1] Inventory[{Slot:-106b}]

# Copy rotation
tp @s ~ ~ ~ ~ ~