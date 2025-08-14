execute unless block ~ ~0.1 ~ #gels:gel_blob_air run function gels:blob_hit
execute unless block ~ ~-0.1 ~ #gels:gel_blob_air run function gels:blob_hit


execute unless block ~0.3 ~ ~ #gels:gel_blob_air run function gels:blob_hit
execute unless block ~-0.3 ~ ~ #gels:gel_blob_air run function gels:blob_hit
execute unless block ~ ~ ~0.3 #gels:gel_blob_air run function gels:blob_hit
execute unless block ~ ~ ~-0.3 #gels:gel_blob_air run function gels:blob_hit


execute if entity @s[nbt={OnGround:1b}] run function gels:blob_hit

execute rotated as @e[type=minecraft:item_display,tag=funnel,distance=..1.5] positioned ^ ^ ^0.7 unless block ~ ~ ~ #gels:gel_blob_air positioned ^ ^ ^-0.7 run function gels:blob_hit