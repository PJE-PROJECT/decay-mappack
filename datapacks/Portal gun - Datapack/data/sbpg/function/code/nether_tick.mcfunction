# Optionally lag the game a bunch
execute if score sbpg:peek timer matches 0 run function sbpg:portals/peek_loop

# Teleport people getting portal frame back
execute if score sbpg:peek timer matches 0 as @e[type=minecraft:area_effect_cloud,tag=sbpg.replica_stand] at @s run function sbpg:portals/replica_recall_owner

execute if score sbpg:peek timer matches 0 as @e[type=minecraft:armor_stand,tag=sbpg.portal_edge_hidden] run data modify entity @s ArmorItems[3].components."minecraft:damage" set value 6
execute if score sbpg:peek timer matches 0 run tag @e[type=minecraft:armor_stand,tag=sbpg.portal_edge_hidden] remove sbpg.portal_edge_hidden
execute if score sbpg:peek timer matches 0 run kill @e[type=minecraft:armor_stand,tag=sbpg.player_glow_stand]


# execute if score sbpg:peek timer matches 0 store result score rx workspace run data get entity @p Rotation[1] 10
# execute if score sbpg:peek timer matches 0 run tellraw @a ["end of nether tick:", {"score":{"name":"rx","objective":"workspace"}}]