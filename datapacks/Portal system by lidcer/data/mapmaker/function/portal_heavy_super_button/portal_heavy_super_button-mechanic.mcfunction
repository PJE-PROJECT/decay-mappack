
execute if block ~ ~1 ~ minecraft:air positioned ~ ~2 ~ run kill @e[type=minecraft:item_display,distance=..1,tag=portal_button_plate_2,sort=nearest,limit=1]


execute if block ~ ~1 ~ minecraft:air run kill @e[type=minecraft:item_display,distance=..1.4,tag=side_w,sort=nearest,limit=7]
execute if block ~ ~1 ~ minecraft:air run kill @s

# INDICATORS
execute if entity @s[tag=activated] positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.1,tag=indicator,tag=!active,limit=1] run scoreboard players set indicators.enable buffer 1
execute if entity @s[tag=activated] positioned ~ ~1 ~ run tag @e[type=minecraft:glow_item_frame,distance=..2.1,tag=indicator,tag=!active] add active

execute if entity @s[tag=!activated] positioned ~ ~1 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.1,tag=indicator,tag=active,limit=1] run scoreboard players set indicators.disable buffer 1
execute if entity @s[tag=!activated] positioned ~ ~1 ~ run tag @e[type=minecraft:glow_item_frame,distance=..2.1,tag=indicator,tag=active] remove active




execute if entity @s[tag=!activated,tag=!cube_only] positioned ~ ~1 ~ if entity @a[distance=..0.9,limit=1] positioned ~ ~-1 ~ run function mapmaker:portal_heavy_super_button/on
execute if entity @s[tag=!activated] positioned ~ ~1 ~ if entity @e[type=minecraft:armor_stand,distance=..0.9,tag=cube,limit=1] positioned ~ ~-1 ~ run function mapmaker:portal_heavy_super_button/on
execute if entity @s[tag=activated] positioned ~ ~1 ~ unless entity @a[distance=..0.9,limit=1] if entity @a[tag=!b_pic,tag=!o_pic,limit=1] unless entity @e[type=minecraft:armor_stand,distance=..0.9,tag=cube,limit=1] positioned ~ ~-1 ~ run function mapmaker:portal_heavy_super_button/off



execute if entity @s[tag=activated,tag=cube_only] positioned ~ ~1 ~ as @e[tag=cube,tag=!hovering,tag=!on_button,distance=..0.9,limit=1] at @s run function mapmaker:portal_heavy_super_button/cube_rot
