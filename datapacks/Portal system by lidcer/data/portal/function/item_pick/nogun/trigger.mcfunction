item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:custom_name='""',minecraft:unbreakable={},minecraft:custom_data={Tags:["itempicker"]}]
item replace entity @s weapon.offhand with minecraft:air
execute unless entity @e[tag=hovering,limit=1] positioned ^ ^0.5 ^1 if entity @e[type=minecraft:armor_stand,distance=..1,tag=button_pedestal_base,tag=!useless] run tag @e[type=minecraft:armor_stand,distance=..1,tag=button_pedestal_base,tag=!useless,tag=!activated,limit=1] add activated




execute unless entity @e[tag=hovering,limit=1] positioned ^ ^0.5 ^1 unless entity @e[type=minecraft:item_display,distance=..1,tag=meg_field] positioned ^ ^ ^ if entity @e[distance=..1.5,tag=prop,tag=!hovering,tag=!hoverignore,limit=1] unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^0.5 ^ unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^-1 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^2 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^0.5 ^-1 positioned ~ ~0.5 ~ unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^0.5 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^-0.5 ^0.5 positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:armor_stand,distance=..1,tag=button_pedestal_base,tag=!useless,tag=!activated] run tag @s add itempicker_activated
execute unless entity @e[tag=hovering,limit=1] positioned ^ ^0.5 ^1 unless entity @e[type=minecraft:item_display,distance=..1,tag=meg_field] positioned ^ ^ ^ if entity @e[distance=..1.5,tag=prop,tag=!hovering,tag=!hoverignore,limit=1] unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^0.5 ^ unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^-1 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^2 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^0.5 ^-1 positioned ~ ~0.5 ~ unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^ ^0.5 unless block ~ ~ ~ #portal:hoverignore_thick_blocks positioned ^ ^-0.5 ^0.5 positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:armor_stand,distance=..1,tag=button_pedestal_base,tag=!useless,tag=!activated] run tag @e[distance=..1.5,tag=prop,tag=!hovering,tag=!hoverignore,limit=1] add hovering


execute positioned as @e[tag=prop,tag=cube,tag=hovering,limit=1] run playsound minecraft:physics_cube_impact_soft ambient @a ~ ~ ~ 0.7 1 0.7


tag @e[tag=prop,tag=hovering,limit=1] add hovering_motion
#execute if entity @e[tag=prop,tag=hovering,limit=1] run kill @e[type=minecraft:item_display,tag=laser]
#execute if entity @e[tag=prop,tag=hovering,limit=1] run kill @e[type=minecraft:marker,tag=laser_end]
execute if entity @e[tag=prop,tag=hovering,limit=1] run tag @e[tag=portal_raycaster] remove portal_raycaster
execute if entity @e[tag=prop,tag=hovering,limit=1] run tag @e[tag=laser_cube] remove active