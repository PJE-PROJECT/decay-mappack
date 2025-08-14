

execute if entity @s[tag=active,tag=closed,tag=!arm_anim] run function mapmaker:portal_arm/anim/ramp/3_out

execute if entity @s[tag=idle,scores={animationtime=2}] run playsound minecraft:robot_high_speed_motor_sm_15 master @a ~ ~ ~ 0.1 1 0

execute if entity @s[tag=idle,scores={animationtime=34..}] run function mapmaker:portal_arm/anim/ramp/3_idle
execute if entity @s[tag=!active,tag=idle] run function mapmaker:portal_arm/anim/ramp/3_in
execute if entity @s[tag=!active,tag=closed,scores={animationtime=34..}] run function mapmaker:portal_arm/anim/bindpose_floor

execute if entity @s[tag=!active,tag=closed,scores={animationtime=31}] run playsound minecraft:robot_air_release_01 master @a ~ ~ ~ 0.07 1 0
execute if entity @s[tag=!active,tag=closed,scores={animationtime=29}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.07 1 0


execute if entity @s[tag=!active,tag=closed,scores={animationtime=13}] run setblock ~ ~1 ~ air
execute if entity @s[tag=!active,tag=closed,scores={animationtime=16}] run setblock ~ ~ ~ air