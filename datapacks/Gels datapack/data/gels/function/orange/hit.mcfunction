function gels:clear/hit

execute unless block ~ ~-1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=D] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","D"],Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute unless block ~ ~1 ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=U] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","U"],Facing:0,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}

execute unless block ~1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=E] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","E"],Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute unless block ~-1 ~ ~ #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=W] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","W"],Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}

execute unless block ~ ~ ~1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=S] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","S"],Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute unless block ~ ~ ~-1 #gels:gel_ignore unless entity @e[type=minecraft:item_frame,distance=..0.7,tag=gel,tag=orange_gel,tag=mid,tag=N] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","N"],Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}

#summon minecraft:item_display ~ ~0.5 ~ {Tags:["particle","paint_bomb","orange"],item:{id:"minecraft:leather_helmet",tag:{CustomModelData:16,display:{color:16550168}},Count:1b},teleport_duration:0}
particle minecraft:item_snowball ~ ~0.7 ~ 0 0 0 1 50 force
particle minecraft:item_snowball ~ ~0.3 ~ 0 0 0 1 50 force


execute as @e[type=minecraft:item_frame,tag=orange_gel,tag=mid] at @s run function gels:orange/check_texture