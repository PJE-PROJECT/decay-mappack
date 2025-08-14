

execute unless block ~ ~-1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=D] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","D"],Facing:1,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~ ~1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=U] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","U"],Facing:0,Fixed:1b,Invisible:1b,ItemRotation:0b}

execute unless block ~1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=E] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","E"],Facing:4,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~-1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=W] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","W"],Facing:5,Fixed:1b,Invisible:1b,ItemRotation:0b}

execute unless block ~ ~ ~1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=S] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","S"],Facing:2,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~ ~ ~-1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=N] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","N"],Facing:3,Fixed:1b,Invisible:1b,ItemRotation:0b}


execute if entity @s[tag=gel_blob,tag=clean] run summon minecraft:item_display ~ ~0.2 ~ {Tags:["particle","paint_bomb","clear"],item:{id:"minecraft:leather_helmet",components:{"minecraft:custom_model_data":16,"minecraft:dyed_color":{rgb:10000536}},count:1},teleport_duration:0}


execute as @e[type=minecraft:item_frame,tag=clear_gel,tag=mid] at @s run function gels:clear/check_texture