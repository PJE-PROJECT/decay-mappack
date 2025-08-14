# 64
execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/128/128_out
execute if entity @s[tag=idle,scores={animationtime=27..}] run function mapmaker:portal_arm/anim/128/128_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/128/128_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=27..}] run function mapmaker:portal_arm/anim/bindpose

execute if entity @s[tag=!active,tag=closed,scores={animationtime=6}] run setblock ~ ~1 ~ air
execute if entity @s[tag=!active,tag=closed,scores={animationtime=13}] run setblock ~ ~ ~ air