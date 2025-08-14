# headbut
execute if entity @a[distance=..35,limit=1] if entity @s[tag=!arm_anim] run function mapmaker:portal_arm/anim/error/error
execute unless entity @a[distance=..35,limit=1] if entity @s[tag=arm_anim] run function mapmaker:portal_arm/anim/bindpose

execute if entity @s[tag=!error_2,scores={animationtime=6}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=16}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=26}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0


execute if entity @s[tag=!error_2,scores={animationtime=55}] run playsound minecraft:robot_arm_spin_short_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=76}] run playsound minecraft:robot_arm_spin_short_02 master @a ~ ~ ~ 0.08 1 0


execute if entity @s[tag=!error_2,scores={animationtime=100}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=110}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=120}] run playsound minecraft:robot_panel_impact_01 master @a ~ ~ ~ 0.08 1 0

execute if entity @s[tag=!error_2,scores={animationtime=130}] run playsound minecraft:robot_arm_spin_medium_01 master @a ~ ~ ~ 0.08 1 0
execute if entity @s[tag=!error_2,scores={animationtime=163}] run playsound minecraft:robot_arm_spin_long_02 master @a ~ ~ ~ 0.08 1 0



execute if entity @s[scores={animationtime=205..}] run tag @s remove arm_anim