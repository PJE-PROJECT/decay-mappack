scoreboard players set colour workspace 24831
execute unless score @s time = @s time run scoreboard players set @s time 0

execute positioned ~ ~-0.1 ~ if entity @s[tag=wall] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=sbpg.portal,limit=1] run scoreboard players add @s time 1
execute positioned ^ ^1 ^0.8 if entity @s[tag=ceiling] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.65,tag=sbpg.portal,limit=1] run scoreboard players add @s time 1
execute positioned ^ ^0.5 ^-1 if entity @s[tag=floor,tag=N] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=sbpg.portal,tag=south,limit=1] run scoreboard players add @s time 1
execute positioned ^ ^ ^-1 if entity @s[tag=floor,tag=S] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=sbpg.portal,tag=north,limit=1] run scoreboard players add @s time 1
execute positioned ^ ^ ^-1.1 if entity @s[tag=floor,tag=E] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=sbpg.portal,tag=west,limit=1] run scoreboard players add @s time 1
execute positioned ^ ^0.5 ^-1 if entity @s[tag=floor,tag=W] unless entity @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=sbpg.portal,tag=east,limit=1] run scoreboard players add @s time 1


scoreboard players operation @s buffer = @s time
scoreboard players operation @s buffer %= 5* const
execute if score @s buffer matches 0 run item replace entity @e[type=minecraft:item_display,distance=..0.1,tag=portal_spawner_lights,tag=b,limit=1] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=146]
execute if score @s buffer matches 3 run item replace entity @e[type=minecraft:item_display,tag=portal_spawner_lights,tag=b] container.0 with minecraft:air






execute if score @s[tag=wall] time matches 25.. positioned ~ ~-0.1 ~ run function mapmaker:portal_spawner/spawn/blue/wall
execute if score @s[tag=ceiling] time matches 25.. positioned ^ ^1 ^0.8 run function mapmaker:portal_spawner/spawn/blue/ceiling
execute if score @s[tag=floor,tag=N] time matches 25.. positioned ^ ^0.5 ^-1 run function mapmaker:portal_spawner/spawn/blue/floor
execute if score @s[tag=floor,tag=S] time matches 25.. positioned ^ ^ ^-1 run function mapmaker:portal_spawner/spawn/blue/floor
execute if score @s[tag=floor,tag=E] time matches 25.. positioned ^ ^ ^-1.1 run function mapmaker:portal_spawner/spawn/blue/floor
execute if score @s[tag=floor,tag=W] time matches 25.. positioned ^ ^0.5 ^-1 run function mapmaker:portal_spawner/spawn/blue/floor


execute if score @s time matches 25.. run scoreboard players set @s time 0