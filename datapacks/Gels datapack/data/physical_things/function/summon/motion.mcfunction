summon minecraft:turtle ~ ~ ~ {Tags:["custom_motion","get_id"],Invulnerable:1b,Silent:1b,Age:-2147483647,active_effects:[{id:"minecraft:invisibility",duration:2147483647,amplifier:-1b,show_particles:0b},{id:"minecraft:resistance",duration:2147483647,amplifier:-1b,show_particles:0b},{id:"minecraft:slowness",duration:2147483647,amplifier:-1b,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.0d}]}

scoreboard players operation @e[type=minecraft:turtle,distance=..0.1,tag=get_id,limit=1] physical_things.id = @s physical_things.player_id
tag @e[type=minecraft:turtle,distance=..0.1,tag=get_id,limit=1] remove get_id

