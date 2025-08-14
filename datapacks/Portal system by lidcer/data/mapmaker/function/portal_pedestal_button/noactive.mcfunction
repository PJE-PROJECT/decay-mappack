execute if block ~ ~-2 ~ minecraft:redstone_block run playsound minecraft:button_synth_negative ambient @a ~ ~ ~ 0.5 1 0
execute if block ~ ~-2 ~ minecraft:redstone_block run setblock ~ ~-2 ~ minecraft:granite
execute if entity @s[tag=clean] if block ~ ~-2 ~ minecraft:granite run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=50]
execute if entity @s[tag=rusted] if block ~ ~-2 ~ minecraft:granite run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=53]
execute as @e[distance=..0.2,tag=button_pedestal,tag=pressed,tag=!side] at @s run tp @s ^ ^0.1 ^0.04
execute as @e[distance=..0.2,tag=button_pedestal,tag=pressed,tag=!side] run tag @s remove pressed
execute if score @s time >= @s timer run scoreboard players set @s time 0