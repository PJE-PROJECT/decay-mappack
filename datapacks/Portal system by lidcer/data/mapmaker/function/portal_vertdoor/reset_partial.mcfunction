
item replace entity @s[tag=clean] container.0 with minecraft:potion[minecraft:custom_model_data=25,minecraft:potion_contents={custom_color:0}]
item replace entity @s[tag=dirty] container.0 with minecraft:potion[minecraft:custom_model_data=31,minecraft:potion_contents={custom_color:0}]




fill ^-1 ^ ^ ^1 ^-2 ^ minecraft:barrier
tag @s remove active
tag @s remove opened
