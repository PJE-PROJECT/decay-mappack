scoreboard players set pause timer 1

execute unless entity @e[type=minecraft:turtle,tag=pause.sit] run summon minecraft:turtle ~ ~0.5 ~0.075 {Tags:["pause.sit"],Health:100b,NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Age:-12000,active_effects:[{show_particles:0b,duration:-1,id:"minecraft:invisibility",amplifier:1b}]}
execute as @e[tag=prop] store result score @s pmotion.x run data get entity @s Motion[0] 10000
execute as @e[tag=prop] store result score @s pmotion.y run data get entity @s Motion[1] 10000
execute as @e[tag=prop] store result score @s pmotion.z run data get entity @s Motion[2] 10000
execute as @e[tag=prop] run data modify entity @s NoGravity set value 1b

execute as @e[tag=gel_blob] store result score @s pmotion.x run data get entity @s Motion[0] 10000
execute as @e[tag=gel_blob] store result score @s pmotion.y run data get entity @s Motion[1] 10000
execute as @e[tag=gel_blob] store result score @s pmotion.z run data get entity @s Motion[2] 10000
execute as @e[tag=gel_blob] run data modify entity @s NoGravity set value 1b



tag @a[tag=gun_hold] remove gun_hold
tag @a[limit=1] add menu
tag @a[limit=1] add menu.pause

data modify storage 1:1 x set from entity @a[limit=1] Rotation[0]
data modify storage 1:1 y set from entity @a[limit=1] Rotation[1]
kill @e[tag=ghost]