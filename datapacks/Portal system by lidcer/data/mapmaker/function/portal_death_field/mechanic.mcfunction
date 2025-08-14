execute as @e[type=minecraft:armor_stand,tag=death_field_base,sort=random,limit=1] at @s if block ^ ^1 ^1 minecraft:air run kill @s
execute if block ^ ^1 ^1 minecraft:air run kill @s
execute as @e[type=minecraft:armor_stand,tag=death_field_base,sort=random,limit=1] at @s if block ^ ^2 ^1 minecraft:air run kill @s
execute if block ^ ^2 ^1 minecraft:air run kill @s

execute as @e[type=minecraft:armor_stand,tag=death_field_base,tag=!AlwaysActive,sort=nearest,limit=1] at @s positioned ^ ^1.5 ^0.6 if entity @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=active,limit=1] run setblock ^ ^ ^1 minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=death_field_base,tag=!AlwaysActive,sort=nearest,limit=1] at @s positioned ^ ^1.5 ^0.6 unless entity @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..1.1,tag=indicator,tag=!active,limit=1] run setblock ^ ^ ^1 minecraft:granite



execute if entity @s[tag=!AlwaysActive,tag=!active] at @s if block ^ ^1 ^2 minecraft:redstone_block run function mapmaker:portal_death_field/raycast
execute if entity @s[tag=active,tag=!AlwaysActive] at @s unless block ^ ^1 ^2 minecraft:redstone_block run function mapmaker:portal_death_field/remove/raycast




execute positioned as @a[tag=test_subject,limit=1] as @e[type=minecraft:item_display,tag=death_field,distance=..1] positioned as @s run function mapmaker:portal_laser_field/check
execute positioned as @a[tag=test_subject,limit=1] as @e[type=minecraft:item_display,tag=death_field,distance=..1] positioned as @s run function mapmaker:portal_material_emacipation_grill/check
execute positioned as @e[tag=prop,limit=100] as @e[type=minecraft:item_display,tag=death_field,distance=..1] positioned as @s run function mapmaker:portal_material_emacipation_grill/check