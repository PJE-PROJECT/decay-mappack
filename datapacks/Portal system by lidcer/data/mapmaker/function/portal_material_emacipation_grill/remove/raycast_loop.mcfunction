scoreboard players add @s Distance 1
execute if entity @s[tag=N] run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=z]
execute if entity @s[tag=N] positioned ~ ~-1 ~ run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=z]
execute if entity @s[tag=S] run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=z]
execute if entity @s[tag=S] positioned ~ ~-1 ~ run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=z]

execute if entity @s[tag=E] run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=x]
execute if entity @s[tag=E] positioned ~ ~-1 ~ run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=x]
execute if entity @s[tag=W] run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=x]
execute if entity @s[tag=W] positioned ~ ~-1 ~ run kill @e[type=minecraft:item_display,distance=..0.7,tag=meg_field,tag=x]


execute unless block ^ ^ ^1 #mapmaker:meg_pass run function mapmaker:portal_material_emacipation_grill/remove/raycast_end
execute unless block ^ ^1 ^ #mapmaker:meg_pass run function mapmaker:portal_material_emacipation_grill/remove/raycast_end

execute if block ^ ^ ^1 #mapmaker:meg_pass if block ^ ^1 ^1 #mapmaker:meg_pass if entity @s[scores={Distance=..50}] positioned ^ ^ ^1 run function mapmaker:portal_material_emacipation_grill/remove/raycast_loop