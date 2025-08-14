execute store result score funnel_z buffer run data get entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1] Pos[2] 1000
execute store result score funnel_r_z buffer run data get entity @s Pos[2] 1000
scoreboard players operation funnel_z buffer -= funnel_r_z buffer
execute if entity @s[tag=funnel_r] run scoreboard players operation funnel_z buffer += @a[tag=in_funnel,limit=1] f_motion_z

execute store result entity @s Motion[2] double 0.00009 run scoreboard players get funnel_z buffer