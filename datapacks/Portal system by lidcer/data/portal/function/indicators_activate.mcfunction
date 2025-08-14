
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=1,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=1,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=2,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=2,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=3,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=3,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=4,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=4,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=5,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=5,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=6,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=6,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=7,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=7,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=8,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=8,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=9,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=9,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=10,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=10,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=11,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=11,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=12,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=12,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=13,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=13,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=14,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=14,tag=!active] add active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=active,tag=15,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=indicator,tag=15,tag=!active] add active
function portal:indicators
scoreboard players set indicators.enable buffer 0
