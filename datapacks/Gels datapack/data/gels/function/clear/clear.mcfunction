execute unless block ~ ~-1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=D] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","D"],Facing:1,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~ ~1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=U] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","U"],Facing:0,Fixed:1b,Invisible:1b,ItemRotation:0b}

execute unless block ~1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=E] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","E"],Facing:4,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~-1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=W] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","W"],Facing:5,Fixed:1b,Invisible:1b,ItemRotation:0b}

execute unless block ~ ~ ~1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=S] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","S"],Facing:2,Fixed:1b,Invisible:1b,ItemRotation:0b}
execute unless block ~ ~ ~-1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=clear_gel,tag=mid,tag=N] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","clear_gel","mid","N"],Facing:3,Fixed:1b,Invisible:1b,ItemRotation:0b}
