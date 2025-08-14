# 64
execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/64/64_out
execute if entity @s[tag=idle,scores={animationtime=17..}] run function mapmaker:portal_arm/anim/64/64_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/64/64_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=17..}] run function mapmaker:portal_arm/anim/bindpose

execute if entity @s[tag=!active,tag=closed,scores={animationtime=6}] run setblock ~ ~ ~ air