execute if entity @s[tag=por2s,tag=!laser_cube,tag=!rusted,tag=!fizzled] positioned ~ ~-1 ~ if entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=7,minecraft:potion_contents={custom_color:0}]
execute if entity @s[tag=por2s,tag=!laser_cube,tag=!rusted,tag=!fizzled] positioned ~ ~-1 ~ unless entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=6,minecraft:potion_contents={custom_color:0}]

execute if entity @s[tag=por2s,tag=rusted,tag=!laser_cube,tag=!fizzled] positioned ~ ~-1 ~ if entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=11,minecraft:potion_contents={custom_color:0}]
execute if entity @s[tag=por2s,tag=rusted,tag=!laser_cube,tag=!fizzled] positioned ~ ~-1 ~ unless entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=10,minecraft:potion_contents={custom_color:0}]



execute if entity @s[tag=laser_cube,tag=!por2s,tag=!rusted,tag=!fizzled] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=15]
execute if entity @s[tag=laser_cube,tag=rusted,tag=!por2s,tag=!fizzled] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=16]




execute if entity @s[tag=por2c,tag=!fizzled,tag=!rusted] positioned ~ ~-1 ~ if entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=9,minecraft:potion_contents={custom_color:0}]
execute if entity @s[tag=por2c,tag=!fizzled,tag=!rusted] positioned ~ ~-1 ~ unless entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=8,minecraft:potion_contents={custom_color:0}]
execute if entity @s[tag=por2c,tag=rusted,tag=!fizzled] positioned ~ ~-1 ~ if entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=20,minecraft:potion_contents={custom_color:0}]
execute if entity @s[tag=por2c,tag=rusted,tag=!fizzled] positioned ~ ~-1 ~ unless entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run item replace entity @s armor.head with minecraft:potion[minecraft:custom_model_data=19,minecraft:potion_contents={custom_color:0}]


execute positioned ~ ~-1 ~ unless entity @e[distance=..0.9,tag=button,tag=activated,limit=1] run tag @s[tag=on_button] remove on_button


execute if entity @s[tag=laser_cube,tag=!fizzled,tag=!rusted,tag=!active] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=15]
execute if entity @s[tag=laser_cube,tag=rusted,tag=!fizzled,tag=!active] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=16]

execute if entity @s[tag=laser_cube,tag=active,tag=!fizzled,tag=!rusted] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=150]
execute if entity @s[tag=laser_cube,tag=rusted,tag=active,tag=!fizzled] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=151]





execute if entity @s[tag=!hovering,tag=!hoverignore] positioned ~ ~-1 ~ if entity @a[distance=..0.8,limit=1] run data modify entity @s Motion[1] set value 0.0d



execute as @e[type=minecraft:item_display,tag=laser] if score @s laser_ID = @e[tag=laser_cube,tag=!active,sort=random,limit=1] laser_ID at @s run kill @s
execute as @e[type=minecraft:marker,tag=laser_end] if score @s laser_ID = @e[tag=laser_cube,tag=!active,sort=random,limit=1] laser_ID at @s run kill @s



execute if entity @s[tag=laser_cube,tag=!active,tag=!fizzled,tag=!hovering,nbt={OnGround:1b}] align y positioned ~ ~0.5 ~ if entity @e[type=minecraft:marker,distance=..1.1,tag=laser_end,limit=1] run tag @s add active
execute if entity @s[tag=laser_cube,tag=active,tag=!fizzled,tag=!hovering,nbt={OnGround:1b}] align y positioned ~ ~0.5 ~ unless entity @e[type=minecraft:marker,distance=..1.1,tag=laser_end,limit=1] run tag @s remove active

execute if entity @s[tag=laser_cube,tag=active,tag=!hovering] at @s positioned ^ ^0.6 ^-0.3 run function laser:laser/raycast
