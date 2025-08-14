execute as @e[tag=cube,tag=!in_funnel] at @s if entity @e[type=item_frame,tag=blue_gel,distance=..70] run function physical_things:tick_cube
execute as @a[tag=!in_funnel,tag=!b_pic,tag=!o_pic] at @s if entity @e[type=item_frame,tag=gel,distance=..70] run function physical_things:tick_player
execute if data storage midwut:main PlayerData run data remove storage midwut:main PlayerData


execute as @e[type=minecraft:item_display,tag=particle,tag=paint_bomb] run function gels:paint_bomb_particle
execute as @e[type=minecraft:armor_stand,tag=gel_blob,tag=!kill] positioned as @s run function gels:blob_hit_check

scoreboard players add @e[type=minecraft:armor_stand,tag=gel_blob,tag=kill] time 1
kill @e[type=minecraft:armor_stand,tag=gel_blob,tag=kill,scores={time=3..}]
