
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=1,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=1] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=2,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=2] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=3,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=3] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=4,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=4] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=5,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=5] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=6,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=6] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=7,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=7] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=8,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=8] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=9,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=9] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=10,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=10] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=11,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=11] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=12,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=12] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=13,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=13] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=14,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=14] remove active
execute if entity @e[type=minecraft:glow_item_frame,tag=indicator,tag=15,tag=!active,limit=1] run tag @e[type=minecraft:glow_item_frame,tag=active,tag=indicator,tag=15] remove active
function portal:indicators
scoreboard players set indicators.disable buffer 0
