

execute unless entity @s[scores={ambient_local=-2147483647..2147483647}] run scoreboard players set @s ambient_local 0


#PORTAL AMBIENT
scoreboard players add @s[tag=sbpg.portal_main,scores={ambient_local=1..100}] ambient_local 1
execute if entity @s[tag=sbpg.portal_main,scores={ambient_local=0}] if entity @a[distance=..15,limit=1] run scoreboard players add @s ambient_local 1
execute if entity @s[tag=sbpg.portal_main,scores={ambient_local=100..}] run scoreboard players set @s ambient_local 0
execute if entity @s[tag=sbpg.portal_main] if score @s ambient_local matches 1 run playsound minecraft:portal_ambient_loop_2 ambient @a ~ ~ ~ 0.3 1 0

#ELEVATOR AMBIENT
scoreboard players add @s[tag=elevator_ambient,scores={ambient_local=1..220}] ambient_local 1
execute if entity @s[tag=elevator_ambient,scores={ambient_local=0}] if entity @a[distance=..15,limit=1] run scoreboard players add @s ambient_local 1
execute if entity @s[tag=elevator_ambient,scores={ambient_local=220..}] run scoreboard players set @s ambient_local 0
execute if entity @s[tag=elevator_ambient] if score @s ambient_local matches 1 run playsound minecraft:amb_industrial_medium_lp_01 ambient @a ~ ~ ~ 0.7 1 0


#TRACTOR BEAM
scoreboard players add @s[tag=funnel_emitter,tag=active,scores={ambient_local=1..220}] ambient_local 1
execute if entity @s[tag=funnel_emitter,tag=active,scores={ambient_local=0}] if entity @a[distance=..15,limit=1] run scoreboard players add @s ambient_local 1
execute if entity @s[tag=funnel_emitter,tag=active,scores={ambient_local=70..}] run scoreboard players set @s ambient_local 0
execute if entity @s[tag=funnel_emitter,tag=active] if score @s ambient_local matches 1 run playsound minecraft:tbeam_emitter_spin_lp_01 ambient @a ~ ~ ~ 0.1 1 0


#DELIVERY TUBES
scoreboard players add @s[tag=delivery_tubes_ambient,scores={ambient_local=1..220}] ambient_local 1
execute if entity @s[tag=delivery_tubes_ambient,scores={ambient_local=0}] if entity @a[distance=..18,limit=1] run scoreboard players add @s ambient_local 1
execute if entity @s[tag=delivery_tubes_ambient,scores={ambient_local=85..}] run scoreboard players set @s ambient_local 0
execute if entity @s[tag=delivery_tubes_ambient] if score @s ambient_local matches 1 run playsound minecraft:delivery_tubes_lp_01 ambient @a ~ ~ ~ 0.2 1 0