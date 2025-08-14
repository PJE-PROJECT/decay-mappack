
execute unless score @s funnel_portals_delay = @s funnel_portals_delay run scoreboard players set @s funnel_portals_delay 0


execute if score @s funnel_portals_delay matches 0 at @e[tag=sbpg.portal_first,tag=sbpg.portal_main] positioned ^ ^ ^1 run tp @s ~ ~ ~
execute if score @s funnel_portals_delay matches 0 if entity @s[type=slime,tag=funnel_r] run playsound minecraft:portal_enter_2 ambient @a ~ ~ ~ 0.1 1 0.1
execute if score @s funnel_portals_delay matches 0 if entity @s[type=slime,tag=funnel_r] run playsound minecraft:portal_exit_2 ambient @a ~ ~ ~ 0.1 1 0.1

execute if score @s funnel_portals_delay matches 0 run scoreboard players set @s funnel_portals_delay 1