


execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run data modify storage minecraft:playerstartcoords x set from entity @s data.x
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run data modify storage minecraft:playerstartcoords y set from entity @s data.y
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run data modify storage minecraft:playerstartcoords z set from entity @s data.z
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map = search map run data modify storage minecraft:playerstartcoords rot set from entity @s data.rot

function portal:loading_logo/pos/newgame/loadpos with storage minecraft:playerstartcoords
