
execute if entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=active,limit=1] unless entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=!active,limit=1] run tag @s[tag=!active,tag=!arm_anim] add active
execute if entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=!active,limit=1] run tag @s[tag=active,tag=!arm_anim] remove active
execute if entity @e[type=minecraft:glow_item_frame,distance=..1.2,tag=indicator,tag=!active,limit=1] run tag @s[tag=active,tag=arm_anim,tag=idle] remove active



# 32
execute if entity @s[tag=32] run function mapmaker:portal_arm/32
# 64
execute if entity @s[tag=64] run function mapmaker:portal_arm/64
# 128
execute if entity @s[tag=128] run function mapmaker:portal_arm/128
# 90deg
execute if entity @s[tag=90deg] run function mapmaker:portal_arm/90deg

##RAMP
# 1
execute if entity @s[tag=rampa_stair1] run function mapmaker:portal_arm/rampa_stair/1
# 2
execute if entity @s[tag=rampa_stair2] run function mapmaker:portal_arm/rampa_stair/2
# 3
execute if entity @s[tag=rampa_stair3] run function mapmaker:portal_arm/rampa_stair/3
# 4
execute if entity @s[tag=rampa_stair4] run function mapmaker:portal_arm/rampa_stair/4

#HEADBUT
execute if entity @s[tag=headbut] run function mapmaker:portal_arm/headbut
#ERROR
execute if entity @s[tag=error] run function mapmaker:portal_arm/error




scoreboard players add @s[tag=arm_anim] animationtime 1