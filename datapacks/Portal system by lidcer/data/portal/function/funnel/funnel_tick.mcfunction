
ride @s[type=player,tag=in_funnel] mount @e[type=minecraft:slime,tag=funnel_r,limit=1]


execute if entity @s[type=player] as @e[type=minecraft:slime,tag=funnel_r,limit=1] at @s run function portal:funnel/player_funnel_tick


execute if entity @s[type=minecraft:armor_stand,tag=prop] run function portal:funnel/prop_funnel_tick
execute if entity @s[type=minecraft:armor_stand,tag=gel_blob] run function portal:funnel/prop_funnel_tick


scoreboard players add @s[type=player,scores={funnel_enter_delay=1..}] funnel_enter_delay 1
execute if entity @s[type=player,scores={funnel_enter_delay=5..}] run tag @s add player_enter_tbeam_lp_01_looped
scoreboard players set @s[type=player,scores={funnel_enter_delay=5..}] funnel_enter_delay 0


execute if entity @s[type=player,tag=!in_funnel] run tp @s @s
execute if entity @s[type=player,tag=!in_funnel] run tp @e[type=minecraft:slime,tag=funnel_r,limit=1] ~ ~-666 ~
execute if entity @s[type=player,tag=!in_funnel] run kill @e[type=minecraft:slime,tag=funnel_r,limit=1]