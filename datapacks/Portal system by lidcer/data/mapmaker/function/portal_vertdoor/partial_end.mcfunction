item replace entity @s[tag=clean] container.0 with minecraft:potion[minecraft:custom_model_data=27,minecraft:potion_contents={custom_color:0}]
item replace entity @s[tag=dirty] container.0 with minecraft:potion[minecraft:custom_model_data=33,minecraft:potion_contents={custom_color:0}]




scoreboard players set @s animationtime 0
fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:lime_stained_glass replace minecraft:barrier
tag @s add opened