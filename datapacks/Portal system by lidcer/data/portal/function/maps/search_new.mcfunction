execute if score search map < current map run scoreboard players operation search map = current map
scoreboard players add search map 1
execute unless entity @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] as @a[limit=1] run function portal:menu/open
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map as @a[limit=1] run function portal:loading_logo/fade
execute unless entity @a[tag=titlesfade,limit=1] unless score search map matches 0 run function portal:maps/search_new