scoreboard players set #frame n 0
scoreboard players set #maxframe n 20
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 0
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n

data modify entity @s[tag=clean,tag=!top] item.components."minecraft:custom_model_data" set value 62
data modify entity @s[tag=rusted,tag=!top] item.components."minecraft:custom_model_data" set value 64


data modify entity @s[tag=clean,tag=top] item.components."minecraft:custom_model_data" set value 87
data modify entity @s[tag=rusted,tag=top] item.components."minecraft:custom_model_data" set value 89



execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get #gametime n
playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.05 1 0
playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.05 1 0
scoreboard players set @s animationtime 1
tag @s add arm_anim
tag @s remove closed
tag @s add idle

execute if entity @s[tag=N,tag=!top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=south]
execute if entity @s[tag=S,tag=!top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=north]
execute if entity @s[tag=E,tag=!top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=west]
execute if entity @s[tag=W,tag=!top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=east]

execute if entity @s[tag=S,tag=top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=south]
execute if entity @s[tag=N,tag=top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=north]
execute if entity @s[tag=W,tag=top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=west]
execute if entity @s[tag=E,tag=top,tag=!barriercollus] run setblock ~ ~ ~ iron_door[half=lower,facing=east]


execute if entity @s[tag=barriercollus] run setblock ~ ~ ~ barrier