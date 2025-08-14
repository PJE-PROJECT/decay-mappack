#summon area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["physical_things.blob_model","physical_things.blob","get_id"],Invisible:1b,NoGravity:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",Count:1b,tag:{CustomModelData:1003}}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}],Duration:2147483647,Tags:["physical_things.blob","physical_things.blob_aec","physical_things.entity","get_id"]}
#summon armor_stand ~ ~ ~ {Tags:["physical_things.blob","physical_things.blob_aec","physical_things.entity","get_id"],Invisible:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",Count:1b,tag:{CustomModelData:1003}}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}
#,Duration:2147483647,Tags:["physical_things.blob","physical_things.blob_aec","physical_things.entity","get_id"]}

data merge entity @s {item:{id:"minecraft:blue_concrete",count:1},Tags:["physical_things.blob","physical_things.entity"]}
execute store result score @s physical_things.id run scoreboard players add *physical_things.id physical_things.id 1

