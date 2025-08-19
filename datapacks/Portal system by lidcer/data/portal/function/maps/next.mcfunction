
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run tag @s add played

execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=played] if score @s map = search map run data modify storage minecraft:playerstartcoords x set from entity @s data.x
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=played] if score @s map = search map run data modify storage minecraft:playerstartcoords y set from entity @s data.y
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=played] if score @s map = search map run data modify storage minecraft:playerstartcoords z set from entity @s data.z
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=played] if score @s map = search map run data modify storage minecraft:playerstartcoords rot set from entity @s data.rot

title @a times 0 20 0
title @a title [{"text":"\ue003","type":"text"}]

function portal:maps/gotopos with storage minecraft:playerstartcoords

scoreboard players set elevator_departure time 0
scoreboard players set gunhold config 0
tag @a[limit=1] remove gun_hold
tag @a[limit=1] remove gel_stand_orange
tag @a[limit=1] remove gel_stand_blue
clear @a[limit=1]
gamerule sendCommandFeedback false
gamemode adventure @a[limit=1]
gamerule sendCommandFeedback true

scoreboard players set update map 1


execute as @e[type=minecraft:marker,tag=mapamb] at @s if score @s map = search map run function portal:maps/ambient
function portal:ambient/restart

kill @e[type=minecraft:item_display,tag=title]

scoreboard players operation current map = search map
scoreboard players set search map 0

attribute @a[limit=1] minecraft:generic.gravity base set 0