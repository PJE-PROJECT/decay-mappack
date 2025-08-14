execute if entity @s[tag=blue] run function gels:blue/hit
execute if entity @s[tag=orange] run function gels:orange/hit
execute if entity @s[tag=clean] run function gels:clear/hit

execute if entity @s[tag=flowed] if score sbpg:tick_5 timer matches 1.. run playsound minecraft:paint_blob_splat_01 ambient @a ~ ~ ~ 0.05 1 0
execute if entity @s[tag=!flowed] run playsound minecraft:phys_paint_bomb_01 ambient @a ~ ~ ~ 0.1 1 0



tag @s add kill