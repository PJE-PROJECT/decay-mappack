execute if entity @s[tag=gun_hold] unless entity @e[tag=prop,tag=hovering,limit=1] run function portal:item_pick/pickoff
execute if entity @s[tag=!gun_hold] unless entity @e[tag=prop,tag=hovering,limit=1] run function portal:item_pick/nogun/pickoff


scoreboard players set @s Distance 0
execute positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function portal:item_pick/hovering_raycast_loop