

summon minecraft:marker ~ ~ ~ {Tags:["get_id","physical_things.ball","physical_things.ball_main","physical_things.entity"],data:{r:0.0f}}




summon minecraft:area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["get_id","physical_things.ball_model","physical_things.ball"],Invisible:1b,NoGravity:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":1000},count:1}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}],Duration:2147483647,Tags:["physical_things.ball","physical_things.ball_aec","get_id"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["get_id","physical_things.ball_model","physical_things.ball"],Invisible:1b,NoGravity:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":1001},count:1}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}],Duration:2147483647,Tags:["physical_things.ball","physical_things.ball_aec","get_id"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["get_id","physical_things.ball_model","physical_things.ball"],Invisible:1b,NoGravity:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":1002},count:1}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}],Duration:2147483647,Tags:["physical_things.ball","physical_things.ball_aec","get_id"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Tags:["get_id","physical_things.ball_model","physical_things.ball"],Invisible:1b,NoGravity:1b,DisabledSlots:2147483647,Small:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":1003},count:1}],Pose:{Head:[0.0001f,0.0001f,0.0001f]}}],Duration:2147483647,Tags:["physical_things.ball","physical_things.ball_aec","get_id"]}




scoreboard players operation @e[distance=..0.001,tag=get_id,limit=9] physical_things.id = *physical_things.id physical_things.id
tag @e[distance=..0.001,tag=get_id,limit=9] remove get_id
scoreboard players add *physical_things.id physical_things.id 1




schedule function physical_things:tick_entities 1t replace




