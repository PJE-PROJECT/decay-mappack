# 32
execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/32/32_out
execute if entity @s[tag=idle,scores={animationtime=23..}] run function mapmaker:portal_arm/anim/32/32_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/32/32_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=23..}] run function mapmaker:portal_arm/anim/bindpose


execute if entity @s[tag=!active,tag=closed,scores={animationtime=10}] run setblock ~ ~ ~ air