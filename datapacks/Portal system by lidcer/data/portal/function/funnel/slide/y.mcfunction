execute store result score funnel_y buffer run data get entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1] Pos[1] 10000
execute store result score funnel_r_y buffer run data get entity @s Pos[1] 10000
scoreboard players operation funnel_y buffer -= funnel_r_y buffer
execute store result entity @s Motion[1] double 0.000005 run scoreboard players get funnel_y buffer