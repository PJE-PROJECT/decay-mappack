data modify storage midwut:main Data set from entity @s
execute store result score #Facing main_score run data get storage midwut:main Data.Facing

scoreboard players set #x main_score 0
scoreboard players set #y main_score 0
execute store result score #z main_score run data get storage midwut:main Data.ItemRotation -45000

execute if score #Facing main_score matches 0 run scoreboard players set #x main_score 90000
execute if score #Facing main_score matches 1 run scoreboard players set #x main_score 270000

execute if score #Facing main_score matches 2 run scoreboard players set #y main_score 180000
execute if score #Facing main_score matches 4 run scoreboard players set #y main_score 270000
execute if score #Facing main_score matches 5 run scoreboard players set #y main_score 90000

#scoreboard players operation #z main_score *= #45000 const
#scoreboard players operation #z main_score *= #-1 const
scoreboard players add #z main_score 360000


execute if data storage midwut:main Data.Item.id if data storage midwut:main Data{Invisible:1b} positioned ^ ^ ^-0.03124 summon minecraft:item_display run function midwut:test/convert_item-frame_to_item-display/data
execute if data storage midwut:main Data.Item.id unless data storage midwut:main Data{Invisible:1b} positioned ^ ^ ^0.03124 summon minecraft:item_display run function midwut:test/convert_item-frame_to_item-display/data


kill @s

