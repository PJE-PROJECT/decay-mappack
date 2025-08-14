
summon minecraft:turtle ~ ~ ~ {Age:-2147483648,Marker:1b,Tags:["for_creeper","ID","collus"],Team:"NoColl",Invulnerable:1b,Passengers:[{id:"minecraft:shulker",Tags:["collus"],Team:"NoColl",attributes:[{id:"minecraft:generic.scale",base:0.65}],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b,DeathLootTable:"1",active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:1000000,show_particles:0b}]}],active_effects:[{id:"minecraft:invisibility",amplifier:2b,duration:1000000,show_particles:0b}]}
scoreboard players operation @e[type=minecraft:turtle,tag=for_creeper] ID = ID.cloud ID
tag @e[type=minecraft:turtle] remove for_creeper

effect give @s minecraft:invisibility 1000000 0 true

scoreboard players operation @s ID = ID.cloud ID
scoreboard players add ID.cloud ID 1
tag @s add ID