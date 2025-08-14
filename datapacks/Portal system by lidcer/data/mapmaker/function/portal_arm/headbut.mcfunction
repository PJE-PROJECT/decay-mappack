# headbut
execute if entity @a[distance=..35,limit=1] if entity @s[tag=!arm_anim] run function mapmaker:portal_arm/anim/headbut/headbut
execute unless entity @a[distance=..35,limit=1] if entity @s[tag=arm_anim] run function mapmaker:portal_arm/anim/bindpose

execute if entity @s[scores={animationtime=7}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=9}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=26}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=28}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=63}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=65}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=76}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=79}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=99}] run playsound minecraft:robot_high_speed_motor_sm_12 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=101}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=108}] run playsound minecraft:robot_high_speed_motor_sm_15 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=110}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=119}] run playsound minecraft:robot_high_speed_motor_sm_15 master @a ~ ~ ~ 0.01 1 0
execute if entity @s[scores={animationtime=121}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.02 1 0
execute if entity @s[scores={animationtime=140}] run playsound minecraft:robot_plaintive_motor_sm_01 master @a ~ ~ ~ 0.01 1 0


execute if entity @s[scores={animationtime=162..}] run scoreboard players set @s animationtime 0
#execute if entity @s[tag=!arm_anim] run scoreboard players set @s animationtime 0