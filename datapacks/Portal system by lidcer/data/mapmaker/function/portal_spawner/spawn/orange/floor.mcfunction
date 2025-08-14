execute if entity @s[tag=N] align xyz positioned ^ ^ ^ run function portal:orange/portal_up/south
execute if entity @s[tag=S] align xyz positioned ^ ^ ^ run function portal:orange/portal_up/north
execute if entity @s[tag=E] align xyz positioned ^ ^1 ^ run function portal:orange/portal_up/west
execute if entity @s[tag=W] align xyz positioned ^ ^ ^ run function portal:orange/portal_up/east
playsound minecraft:portal_open_red_2 ambient @a ~ ~ ~ 0.1 1 0