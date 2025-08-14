clear @s[tag=!cmd_view]
title @s actionbar {"text":"EDITOR CLOSED","bold":true,"color":"gold","type":"text"}
kill @e[tag=useless]
scoreboard players set setmap config 1
item replace entity @e[type=minecraft:item_display,tag=playerstart] container.0 with minecraft:air
item replace entity @e[type=minecraft:item_display,tag=trigger_nextmap] container.0 with minecraft:air
item replace entity @e[type=minecraft:item_display,tag=custom_trigger] container.0 with minecraft:air
item replace entity @e[type=minecraft:item_display,tag=cube_spawn] container.0 with minecraft:air
kill @e[type=minecraft:text_display,tag=mapnumdis]
kill @e[type=minecraft:text_display,tag=trignumdis]
execute if entity @s[tag=!cmd_view] run function help:mapmaker
item replace entity @s[tag=cmd_view] container.0 with minecraft:air
item replace entity @s[tag=cmd_view] container.1 with minecraft:air
item replace entity @s[tag=cmd_view] container.2 with minecraft:air
item replace entity @s[tag=cmd_view] container.3 with minecraft:air
item replace entity @s[tag=cmd_view] container.4 with minecraft:air
item replace entity @s[tag=cmd_view] container.5 with minecraft:air
tellraw @s[tag=cmd_view] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tag @s remove light_setup
tag @s remove cmd_view
tag @s remove spawner_setup
tag @s remove material_emancipation_grill_1_setup
tag @s remove material_emancipation_grill_2_setup
tag @s remove laser_field_setup
tag @s remove death_field_setup
tag @s remove portalcam_1_setup
tag @s remove portalcam_2_setup
tag @s remove portal_spawner_1_setup
tag @s remove portal_spawner_2_setup
tag @s remove portaldoor_1_setup
tag @s remove portaldoor_2_setup
tag @s remove portalbutton_1_setup
tag @s remove portalbutton_2_setup
tag @s remove cube_setup
tag @s remove droper_1_setup
tag @s remove elevator_setup
tag @s remove laser_emitter_c_setup
tag @s remove laser_emitter_r_setup
tag @s remove laser_catcher_setup
tag @s remove laser_receptacle_setup
tag @s remove 45_panel_setup
tag @s remove arm_setup
tag @s remove arm_setup_clean
tag @s remove arm_setup_rusted
tag @s remove arm_setup_empty
tag @s remove funnel_setup
tag @s remove portalbutton_2_setup_wrecked
tag @s remove portalpedestal_button_setup
tag @s remove hard_light_bridge_setup
tag @s remove droper_2_setup_rusted
tag @s remove droper_2_setup_clean_c
tag @s remove droper_2_setup_clean_l
tag @s remove droper_2_setup_rusted_l
tag @s remove droper_2_setup
tag @s remove vertdoor_setup
tag @s remove gel_dropper_setup
tag @s remove plate_setup
tag @s remove pgun_setup
tag @s remove playerstart_setup
tag @s remove trigger_setup