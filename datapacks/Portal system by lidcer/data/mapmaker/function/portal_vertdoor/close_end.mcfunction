item replace entity @s[tag=clean] container.0 with minecraft:potion[minecraft:custom_model_data=25,minecraft:potion_contents={custom_color:0}]
item replace entity @s[tag=dirty] container.0 with minecraft:potion[minecraft:custom_model_data=31,minecraft:potion_contents={custom_color:0}]




scoreboard players set @s animationtime 0
tag @s remove opened