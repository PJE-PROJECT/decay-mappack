

execute if entity @e[type=item_display,tag=playerstart,limit=1] if entity @e[type=minecraft:item_display,tag=elevator_main_pos,tag=departure,limit=1] run function portal:light/resume_newmap/resume_light
execute if entity @e[type=item_display,tag=playerstart,limit=1] if entity @e[type=minecraft:item_display,tag=elevator_main_pos,tag=departure,limit=1] run return 0

execute if entity @e[type=item_display,tag=playerstart,limit=1] if entity @e[type=minecraft:interaction,tag=trigger_nextmap,limit=1] run function portal:light/resume_newmap/resume_light