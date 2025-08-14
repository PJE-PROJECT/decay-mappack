
scoreboard players add @s time 1

scoreboard players operation @s[tag=flow] buffer = @s time
scoreboard players operation @s[tag=flow] buffer %= 5* const


execute if entity @s[tag=blue,tag=!flow] if score @s time matches 1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":34,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","blue"]}
execute if entity @s[tag=blue,tag=flow] if score @s buffer matches 0 run summon minecraft:armor_stand ~ ~ ~0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":34,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","blue","flowed"]}
#execute if entity @s[tag=blue,tag=flow] if score @s buffer matches 2 run summon minecraft:armor_stand ~0.1 ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":34,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","blue","flowed"]}
execute if entity @s[tag=blue,tag=flow] if score @s buffer matches 4 run summon minecraft:armor_stand ~0.1 ~ ~-0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":34,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","blue","flowed"]}


execute if entity @s[tag=orange,tag=!flow] if score @s time matches 1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":35,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","orange"]}
execute if entity @s[tag=orange,tag=flow] if score @s buffer matches 0 run summon minecraft:armor_stand ~ ~ ~0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":35,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","orange","flowed"]}
#execute if entity @s[tag=orange,tag=flow] if score @s buffer matches 2 run summon minecraft:armor_stand ~0.1 ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":35,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","orange","flowed"]}
execute if entity @s[tag=orange,tag=flow] if score @s buffer matches 4 run summon minecraft:armor_stand ~0.1 ~ ~-0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":35,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","orange","flowed"]}


execute if entity @s[tag=water,tag=!flow] if score @s time matches 1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":36,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","clean"]}
execute if entity @s[tag=water,tag=flow] if score @s buffer matches 0 run summon minecraft:armor_stand ~ ~ ~0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":36,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","clean","flowed"]}
#execute if entity @s[tag=water,tag=flow] if score @s buffer matches 2 run summon minecraft:armor_stand ~0.1 ~ ~ {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":36,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","clean","flowed"]}
execute if entity @s[tag=water,tag=flow] if score @s buffer matches 4 run summon minecraft:armor_stand ~0.1 ~ ~-0.1 {Small:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":36,"minecraft:potion_contents":{custom_color:0}},count:1}],Tags:["gel_blob","portable","clean","flowed"]}







execute if score @s time matches 50.. run scoreboard players set @s time 0