execute if score search map < current map run scoreboard players operation search map = current map
scoreboard players add search map 1
execute unless entity @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] as @a[limit=1] run function portal:menu/open
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run tag @a[limit=1] add loading_logo_end
execute unless entity @a[tag=loading_logo_end,limit=1] unless score search map matches 0 run function portal:maps/search