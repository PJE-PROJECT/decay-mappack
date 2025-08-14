
execute as @e[type=#portal_optimizer:entities,distance=50.0001..70,tag=!markerignore,tag=!sbpg.portal,limit=40] at @s run function portal_optimizer:transform/entity_to_marker/main
execute as @e[type=minecraft:marker,distance=..50,tag=portal_optimizer.entity,tag=!saved_entity,limit=30] at @s run function portal_optimizer:transform/marker_to_entity/main

