ride @s mount @e[type=minecraft:turtle,tag=pause.sit,limit=1]

execute if score pause timer matches 1.. unless entity @e[type=minecraft:item_display,tag=blur,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["blur"],item:{id:"minecraft:firework_star",components:{"minecraft:custom_model_data":2,"minecraft:firework_explosion":{shape:star,colors:[I;1]}},count:1}}

#execute store result entity @s ArmorItems[3].tag.Explosion.Colors int 1 run scoreboard players get pause timer
#execute store result entity @s item.tag.Explosion.Colors int 1 run scoreboard players get pause timer


$data merge entity @e[type=item_display,tag=blur,limit=1] {item:{id:"minecraft:firework_star",components:{"minecraft:custom_model_data":2,"minecraft:firework_explosion":{shape:star,colors:[I;$(pause)]}}}}


item replace entity @s container.0 with minecraft:iron_horse_armor[minecraft:custom_model_data=23,minecraft:custom_name='""']
item replace entity @s container.1 with minecraft:iron_horse_armor[minecraft:custom_model_data=24,minecraft:custom_name='""']
item replace entity @s container.2 with minecraft:iron_horse_armor[minecraft:custom_model_data=25,minecraft:custom_name='""']
item replace entity @s container.3 with minecraft:iron_horse_armor[minecraft:custom_model_data=26,minecraft:custom_name='""']
item replace entity @s container.4 with minecraft:iron_horse_armor[minecraft:custom_model_data=27,minecraft:custom_name='""']
item replace entity @s container.5 with minecraft:iron_horse_armor[minecraft:custom_model_data=28,minecraft:custom_name='""']
item replace entity @s container.6 with minecraft:iron_horse_armor[minecraft:custom_model_data=29,minecraft:custom_name='""']
item replace entity @s container.7 with minecraft:iron_horse_armor[minecraft:custom_model_data=29,minecraft:custom_name='""']
item replace entity @s container.8 with minecraft:iron_horse_armor[minecraft:custom_model_data=29,minecraft:custom_name='""']
item replace entity @s weapon.offhand with minecraft:air