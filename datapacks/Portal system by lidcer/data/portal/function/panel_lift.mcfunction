execute if block ~ ~ ~ light_blue_stained_glass run tag @s add panel_lev
execute if block ~ ~0.5 ~ oak_slab run tag @s add panel_lev

execute if entity @s[tag=cube,tag=panel_lev] run tp @s ~ ~0.3 ~
effect give @s[tag=panel_lev] levitation 1 12 true