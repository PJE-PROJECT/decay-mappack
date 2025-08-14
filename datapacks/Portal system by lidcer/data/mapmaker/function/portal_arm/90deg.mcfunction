# 90deg
execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/90deg/90deg_out
execute if entity @s[tag=idle,scores={animationtime=16..}] run function mapmaker:portal_arm/anim/90deg/90deg_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/90deg/90deg_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=16..}] run function mapmaker:portal_arm/anim/bindpose


execute if entity @s[tag=!active,tag=closed,scores={animationtime=6}] run setblock ~ ~ ~ air