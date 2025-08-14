item replace entity @s[tag=clean] container.0 with minecraft:potion[minecraft:custom_model_data=24,minecraft:potion_contents={custom_color:0}]
item replace entity @s[tag=dirty] container.0 with minecraft:potion[minecraft:custom_model_data=30,minecraft:potion_contents={custom_color:0}]



scoreboard players set @s animationtime 0
fill ^-1 ^-1 ^ ^1 ^-2 ^ minecraft:air replace minecraft:barrier
fill ^-1 ^ ^ ^1 ^ ^ minecraft:iron_trapdoor[half=top] replace minecraft:barrier
tag @s add opened