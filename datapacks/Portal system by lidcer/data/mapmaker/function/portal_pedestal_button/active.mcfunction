
execute if block ~ ~-2 ~ minecraft:granite run playsound minecraft:button_synth_positive ambient @a ~ ~ ~ 0.5 1 0
execute if block ~ ~-2 ~ minecraft:granite run setblock ~ ~-2 ~ minecraft:redstone_block
execute if entity @s[tag=clean] if block ~ ~-2 ~ minecraft:redstone_block run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=51]
execute if entity @s[tag=rusted] if block ~ ~-2 ~ minecraft:redstone_block run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=54]
execute as @e[distance=..0.2,tag=button_pedestal,tag=!side,tag=!pressed] at @s run tp @s ^ ^-0.1 ^-0.04
execute as @e[distance=..0.2,tag=button_pedestal,tag=!side,tag=!pressed] run tag @s add pressed

scoreboard players operation @s[tag=timed] buffer = @s time
scoreboard players operation @s[tag=timed] buffer %= 20* const
execute if score @s buffer matches 0 run playsound minecraft:synth_tick_tock ambient @a ~ ~ ~ 0.4 1 0

execute if score @s time >= @s timer run tag @s remove activated