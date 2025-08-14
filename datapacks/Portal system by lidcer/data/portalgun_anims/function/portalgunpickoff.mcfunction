
tag @s remove portalgun_anim_pick
scoreboard players set @s portalgun_anim_time 0

scoreboard players set #frame n 0
scoreboard players set #maxframe n 32000
execute store result score #gametime n run time query gametime
scoreboard players remove #frame n 3
scoreboard players operation #gametime n %= 24000 n
scoreboard players operation #gametime n -= #frame n
scoreboard players operation #gametime n %= #maxframe n
data modify storage portalgun:anims cmd set value 4
execute store result storage portalgun:anims color int 1 run scoreboard players get #gametime n
tag @s add portalgun_anim_pickoff
tag @s add portalgun_anim

function portalgun_anims:apply with storage portalgun:anims