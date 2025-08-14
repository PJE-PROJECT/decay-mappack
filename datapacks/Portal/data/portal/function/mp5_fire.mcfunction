tag @s add raycasting

scoreboard players set colour workspace 16739586


execute store result storage 1:1 x int 1 run data get entity @s Rotation[0]
execute store result storage 1:1 y int 1 run data get entity @s Rotation[1]
scoreboard players set .distance tf_rc_blue 0
scoreboard players set .distance_tr tf_rc_blue 0

execute anchored eyes positioned ^ ^ ^ run function portal:raycast with storage 1:1
playsound minecraft:portalgun_shoot_orange_2 ambient @a ~ ~ ~ 0.3 1 0

tag @s remove raycasting


scoreboard players reset .distance tf_rc
scoreboard players reset .distance_tr tf_rc