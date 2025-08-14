summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.vector_display"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_display,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players get x workspace
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_display,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get y workspace
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_display,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players get z workspace
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.vector_display,sort=nearest,limit=1] run particle minecraft:bubble