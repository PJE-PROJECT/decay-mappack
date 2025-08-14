
execute if entity @s[tag=N] align xyz positioned ~ ~ ~1 run function portal_blue:orange/portal_south
execute if entity @s[tag=S] align xyz positioned ~ ~ ~-1 run function portal_blue:orange/portal_north
execute if entity @s[tag=E] align xyz positioned ~-1 ~ ~ run function portal_blue:orange/portal_west
execute if entity @s[tag=W] align xyz positioned ~1 ~ ~ run function portal_blue:orange/portal_east
playsound minecraft:portal_open_blue_2 ambient @a ~ ~ ~ 0.1 1 0