# Teleport back down after being exploded
scoreboard players remove @s[scores={sbpg.expld_timer=1..}] sbpg.expld_timer 1
execute unless score Motion config matches 0 run tp @s[scores={sbpg.expld_timer=1}] ~ ~-512 ~
execute unless score Motion config matches 0 if entity @s[scores={sbpg.expld_timer=1}] run tag @s remove pickoff_block
tag @s[scores={sbpg.expld_timer=1}] remove sbpg.dont_store_pos

gamerule sendCommandFeedback false
gamemode survival @s[tag=sbpg.was_survival,scores={sbpg.expld_timer=1}]
gamemode creative @s[tag=sbpg.was_creative,scores={sbpg.expld_timer=1}]
gamemode adventure @s[tag=sbpg.was_adventure,scores={sbpg.expld_timer=1}]
gamemode spectator @s[tag=sbpg.was_spectator,scores={sbpg.expld_timer=1}]
gamerule sendCommandFeedback true
tag @s[scores={sbpg.expld_timer=1}] remove sbpg.was_survival
tag @s[scores={sbpg.expld_timer=1}] remove sbpg.was_creative
tag @s[scores={sbpg.expld_timer=1}] remove sbpg.was_adventure
tag @s[scores={sbpg.expld_timer=1}] remove sbpg.was_spectator

# If holding portal-gun, do click detection stuff
execute if entity @s[tag=sbpg.holding_gun] run function sbpg:gun/holding

execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @e[tag=sbpg.portal_main] add sbpg.active

# Check if I need to peek
execute if score sbpg:peek timer matches 0 positioned ^ ^ ^6 if entity @e[type=minecraft:area_effect_cloud,distance=..16,tag=sbpg.portal_main,tag=sbpg.active,sort=nearest,limit=1] run function sbpg:portals/player_peek

execute if entity @s[tag=portable] run function sbpg:code/store_pos


execute if score @s sbpg.expld_timer matches 0 run tag @s remove pickoff_block