# Summon AEC, set colour
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.1,Duration:2,Tags:["sbpg.trail","sbpg.trail_new"],potion_contents:{custom_color:1}}
execute store result entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=sbpg.trail_new,sort=nearest,limit=1] potion_contents.custom_color int 1 run scoreboard players get colour workspace
tag @e[type=minecraft:area_effect_cloud,distance=..1,tag=sbpg.trail_new,sort=nearest] remove sbpg.trail_new

# Repeat if not done
scoreboard players remove trail_iterations workspace 1
execute if score trail_iterations workspace matches 1.. anchored feet positioned ^ ^ ^0.5 run function sbpg:gun/particle_trail