
execute if entity @s[tag=!laser_cube] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=75]
execute if entity @s[tag=laser_cube] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=76]


execute if entity @s[tag=laser_cube] run tag @s remove active
tag @s add ID

particle minecraft:wax_off ~0.3 ~0.3 ~0.3 0 0 0 10 1
particle minecraft:wax_off ~-0.3 ~0.3 ~0.3 0 0 0 10 1
particle minecraft:wax_off ~-0.3 ~0.3 ~-0.3 0 0 0 10 1
particle minecraft:wax_off ~0.3 ~0.3 ~-0.3 0 0 0 10 1


