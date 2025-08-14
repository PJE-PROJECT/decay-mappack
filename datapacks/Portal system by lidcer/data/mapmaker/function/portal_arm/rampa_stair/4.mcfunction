

execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/ramp/4_out
execute if entity @s[tag=idle,scores={animationtime=4}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.1 1 0
execute if entity @s[tag=idle,scores={animationtime=34..}] run function mapmaker:portal_arm/anim/ramp/4_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/ramp/4_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=34..}] run function mapmaker:portal_arm/anim/bindpose_floor
execute if entity @s[tag=!active,tag=closed,scores={animationtime=32}] run playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.07 1 0
execute if entity @s[tag=!active,tag=closed,scores={animationtime=33}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.07 1 0
execute if entity @s[tag=!active,tag=closed,scores={animationtime=14}] run setblock ~ ~1 ~ air
execute if entity @s[tag=!active,tag=closed,scores={animationtime=22}] run setblock ~ ~ ~ air
