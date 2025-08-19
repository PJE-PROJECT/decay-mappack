execute if entity @e[type=minecraft:item_display,distance=..1,tag=plate_model,tag=cooldown] as @e[type=minecraft:player,distance=..1] at @s unless entity @e[distance=..5,tag=SitPlate] if entity @s run summon minecraft:turtle ~ ~ ~ {Tags:["SitPlate","Forced"],Health:100b,Silent:1b,Age:-12000,active_effects:[{show_particles:0b,duration:-1,id:"minecraft:invisibility",amplifier:1b}]}

execute as @e[type=minecraft:item_display,distance=..0.1,tag=plate_model,tag=!cooldown] if entity @e[distance=..1,tag=!faith_plate,tag=!hovering,limit=1] run function mapmaker:portal_faith_plate/anim

ride @a[limit=1] mount @e[tag=SitPlate,tag=!kill,limit=1]
execute as @e[type=!minecraft:player,distance=..1,tag=!hovering] at @s run tag @s add Forced
execute as @e[tag=Forced,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

execute if entity @e[tag=SitPlate,tag=!kill,limit=1,nbt={OnGround:1b}] as @a[limit=1] at @s run tp @s ~ ~0.5 ~

tag @e[tag=SitPlate,nbt={OnGround:1b}] add kill

execute positioned as @e[tag=SitPlate] if entity @e[type=minecraft:item_display,distance=..1,tag=funnel,limit=1] run tag @e[tag=SitPlate,limit=1] add kill
execute if entity @e[tag=SitPlate,tag=kill,limit=1] as @a[limit=1] at @s run tp @s ~ ~0.5 ~



tp @e[tag=SitPlate,tag=kill] ~ ~-666 ~
kill @e[tag=SitPlate,tag=kill]

execute as @e[distance=..1,tag=!faith_plate,tag=!hovering] at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @e[distance=..1,tag=plate_teh,limit=1] vec.x
execute as @e[distance=..1,tag=!faith_plate,tag=!hovering] at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @e[distance=..1,tag=plate_teh,limit=1] vec.y
execute as @e[distance=..1,tag=!faith_plate,tag=!hovering] at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @e[distance=..1,tag=plate_teh,limit=1] vec.z